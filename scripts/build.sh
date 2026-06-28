#!/usr/bin/env bash
#
# build.sh — assemble the manuscript and (optionally) export EPUB + PDF.
#
# What it does:
#   1. Reads manuscript/manifest.md and pulls out the ordered list of
#      `manuscript/*.md` files (it ignores the code-fence lines and comments,
#      so you never have to hand-maintain a second list).
#   2. Concatenates them, in order, into build/manuscript.full.md.
#   3. If `pandoc` is installed, exports build/book.epub and build/book.pdf
#      using the metadata in manuscript/metadata.yaml.
#
# Usage:
#   bash scripts/build.sh           # assemble + export everything it can
#   bash scripts/build.sh --md-only # just build/manuscript.full.md, no export
#
# Install pandoc (only needed for EPUB/PDF):
#   macOS:          brew install pandoc
#   Windows:        choco install pandoc      (or scoop install pandoc)
#   Debian/Ubuntu:  sudo apt install pandoc
# PDF export also needs a PDF engine. Easiest cross-platform option is
# weasyprint (pip install weasyprint); otherwise pandoc will try LaTeX.
#
# No tooling at all? See the "zero-tooling fallback" note at the bottom of
# the README "Producing your book file" section — you can assemble by hand.

set -euo pipefail

# Resolve repo root as the parent of this script's directory, so the script
# works no matter where you run it from.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$ROOT"

MANIFEST="manuscript/manifest.md"
META="manuscript/metadata.yaml"
OUT_DIR="build"
FULL="$OUT_DIR/manuscript.full.md"
ORDER="$OUT_DIR/order.txt"

MD_ONLY=0
[ "${1:-}" = "--md-only" ] && MD_ONLY=1

if [ ! -f "$MANIFEST" ]; then
  echo "ERROR: $MANIFEST not found. Run this from anywhere inside the repo." >&2
  exit 1
fi

mkdir -p "$OUT_DIR"

# Extract only real manuscript paths from the manifest. Match lines that are
# *solely* a manuscript path (the entries inside the ``` fences), so prose
# mentions like "See `manuscript/chapters/part-1.md` for an example." and the
# ``` fences and <!-- comments --> are all ignored.
grep -E '^[[:space:]]*manuscript/[A-Za-z0-9/_.-]+\.md[[:space:]]*$' "$MANIFEST" \
  | sed -E 's/^[[:space:]]+//; s/[[:space:]]+$//' > "$ORDER" || true

if [ ! -s "$ORDER" ]; then
  echo "ERROR: No 'manuscript/*.md' paths found in $MANIFEST." >&2
  exit 1
fi

# Concatenate in manifest order. A blank line between files prevents the last
# line of one file from running into the heading of the next.
: > "$FULL"
missing=0
while IFS= read -r f; do
  if [ -f "$f" ]; then
    cat "$f" >> "$FULL"
    printf '\n\n' >> "$FULL"
  else
    echo "WARNING: listed in manifest but not found on disk: $f" >&2
    missing=1
  fi
done < "$ORDER"

echo "Assembled $(wc -l < "$FULL" | tr -d ' ') lines -> $FULL"
[ "$missing" -eq 1 ] && echo "(Some files were missing — see warnings above.)"

if [ "$MD_ONLY" -eq 1 ]; then
  echo "Done (--md-only). Skipping EPUB/PDF export."
  exit 0
fi

if ! command -v pandoc >/dev/null 2>&1; then
  echo
  echo "pandoc is not installed, so EPUB/PDF export was skipped."
  echo "Your assembled manuscript is ready at: $FULL"
  echo "Install pandoc (see the header of this script) and re-run to export."
  exit 0
fi

# Heading convention (see .ai/rules/manuscript-file-structure.md):
#   #   = book title (front matter)   ## = part dividers   ### = chapters
# Tell pandoc to treat ### as the chapter level so the EPUB table of contents
# is clean rather than splitting on the single h1 title page.
META_ARGS=()
[ -f "$META" ] && META_ARGS=(--metadata-file="$META")

echo "Building EPUB -> $OUT_DIR/book.epub"
pandoc "$FULL" "${META_ARGS[@]}" \
  --toc --toc-depth=3 \
  -o "$OUT_DIR/book.epub"

echo "Building PDF  -> $OUT_DIR/book.pdf"
if pandoc "$FULL" "${META_ARGS[@]}" \
    --toc --top-level-division=chapter \
    -o "$OUT_DIR/book.pdf" 2>/dev/null; then
  echo "PDF built."
else
  echo "PDF export failed (no PDF engine found)."
  echo "Install one of: weasyprint (pip install weasyprint), wkhtmltopdf, or a LaTeX engine,"
  echo "then re-run. The EPUB and the assembled Markdown were still produced."
fi

echo "Done. Outputs are in $OUT_DIR/ (intentionally git-ignored)."
