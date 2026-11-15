#!/usr/bin/env bash
# Validasi repo dan bangun paket siap unggah ke dist/.
# Jalankan dari mana saja: ./scripts/build.sh
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DIST="$ROOT/dist"
SKILLS=(discussion-helper content-helper)

fail() { echo "GAGAL: $*" >&2; exit 1; }

# Penanda format keluaran per skill (harus ada di SKILL.md dan adapter-nya)
markers_for() {
  case "$1" in
    discussion-helper) echo "Jenis:|Valid:|Standard:|Singkat padat:|Ramah praktis:|Rekomendasi:|Catatan buat kamu:" ;;
    content-helper)    echo "Jenis:|Platform:|Valid:|Standard:|Singkat padat:|Ramah praktis:|Rekomendasi:|Catatan buat kamu:" ;;
  esac
}

echo "==> JSON valid"
for f in \
  "$ROOT/.claude-plugin/marketplace.json" \
  "$ROOT/.claude-plugin/plugin.json" \
  "$ROOT/.codex-plugin/plugin.json" \
  "$ROOT/.agents/plugins/marketplace.json"; do
  python3 -c 'import json,sys; json.load(open(sys.argv[1]))' "$f" || fail "JSON tidak valid: $f"
  echo "ok  ${f#"$ROOT"/}"
done

echo "==> Konsistensi versi, nama, dan CHANGELOG"
python3 - "$ROOT" <<'PY' || fail "konsistensi versi atau nama"
import json, re, sys, pathlib
root = pathlib.Path(sys.argv[1])
claude = json.load(open(root / ".claude-plugin/plugin.json"))
codex = json.load(open(root / ".codex-plugin/plugin.json"))
mk_c = json.load(open(root / ".claude-plugin/marketplace.json"))
mk_x = json.load(open(root / ".agents/plugins/marketplace.json"))
errs = []
if claude["name"] != codex["name"]:
    errs.append("nama plugin beda antara manifest Claude dan Codex")
if claude["version"] != codex["version"]:
    errs.append(f"versi beda: claude={claude['version']} codex={codex['version']}")
for label, mk in (("claude", mk_c), ("codex", mk_x)):
    if claude["name"] not in [p["name"] for p in mk["plugins"]]:
        errs.append(f"marketplace {label} tidak memuat plugin {claude['name']}")
if not re.search(rf"^## \[{re.escape(claude['version'])}\]", (root / "CHANGELOG.md").read_text(), re.M):
    errs.append(f"CHANGELOG.md tidak punya bagian untuk versi {claude['version']}")
if errs:
    print("\n".join(errs)); sys.exit(1)
print(f"ok  plugin {claude['name']} versi {claude['version']}")
PY

test -f "$ROOT/.claude-plugin/icon.png" || fail "icon.png tidak ada"

for S in "${SKILLS[@]}"; do
  SRC="$ROOT/skills/$S/SKILL.md"
  ADAPTER="$ROOT/adapters/$S.md"
  echo
  echo "##### $S"
  test -f "$SRC" || fail "SKILL.md tidak ditemukan: $SRC"
  head -1 "$SRC" | grep -q '^---$' || fail "$S: frontmatter YAML tidak ditemukan"
  grep -q "^name: $S$" "$SRC" || fail "$S: name di frontmatter harus '$S'"
  grep -q '^description: ' "$SRC" || fail "$S: description di frontmatter tidak ditemukan"

  echo "==> Format keluaran SKILL.md dan adapter harus sama"
  test -f "$ADAPTER" || fail "adapter tidak ada: $ADAPTER"
  IFS='|' read -ra M <<< "$(markers_for "$S")"
  for marker in "${M[@]}"; do
    grep -qF "$marker" "$SRC" || fail "$S: SKILL.md tidak memuat penanda '$marker'"
    grep -qF "$marker" "$ADAPTER" || fail "$S: adapter tidak memuat penanda '$marker'"
  done
  echo "ok"
done

# Tiap folder di skills/ harus terdaftar di SKILLS (supaya skill baru tidak terlewat)
for d in "$ROOT"/skills/*/; do
  n="$(basename "$d")"
  printf '%s\n' "${SKILLS[@]}" | grep -qx "$n" || fail "skills/$n belum terdaftar di SKILLS dan markers_for pada scripts/build.sh"
done

echo
echo "==> Aset"
for svg in "$ROOT"/assets/*.svg; do
  python3 -c 'import sys, xml.dom.minidom as m; m.parse(sys.argv[1])' "$svg" || fail "SVG tidak well-formed: $svg"
  echo "ok  ${svg#"$ROOT"/}"
done

if command -v claude >/dev/null 2>&1; then
  echo "==> claude plugin validate"
  claude plugin validate "$ROOT"
else
  echo "==> CLI 'claude' tidak ada, lewati claude plugin validate"
fi

echo "==> Bangun zip"
rm -rf "$DIST"
mkdir -p "$DIST"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

for S in "${SKILLS[@]}"; do
  SRC="$ROOT/skills/$S/SKILL.md"
  # claude.ai (Customize > Skills > Upload a skill): folder di dalam zip, nama folder = nama skill
  mkdir -p "$TMP/claude/$S"
  cp "$SRC" "$TMP/claude/$S/SKILL.md"
  (cd "$TMP/claude" && zip -qr "$DIST/$S-claude-ai.zip" "$S")
  # Perplexity Computer: SKILL.md di akar zip
  mkdir -p "$TMP/perplexity/$S"
  cp "$SRC" "$TMP/perplexity/$S/SKILL.md"
  (cd "$TMP/perplexity/$S" && zip -qr "$DIST/$S-perplexity.zip" SKILL.md)
done

ls -la "$DIST"
echo "Selesai."
