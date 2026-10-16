#!/usr/bin/env bash
# Verify all netlify.toml redirect destinations exist in staged docs/.
# Usage: bash scripts/test-redirects.sh [docs-dir]
set -euo pipefail
DOCS_DIR="${1:-docs}"
TOML="netlify.toml"
BASE="https://viz-ggplot2.rsquaredacademy.com"
fail=0
count=0
while IFS= read -r line; do
  # match: to = ".../page.html" or to = "/page.html"
  dest=$(printf '%s' "$line" | sed -n 's/.*to *= *"\([^"]*\)".*/\1/p')
  [ -z "$dest" ] && continue
  # drop the site origin so the destination resolves inside docs/
  path="${dest#"$BASE"}"
  # an empty or trailing-slash destination is a directory: resolve to its index.html
  case "$path" in
    ""|*/) path="${path}index.html" ;;
  esac
  rel="${path#/}"
  count=$((count + 1))
  if [ ! -f "$DOCS_DIR/$rel" ]; then
    echo "MISSING: $dest (expected $DOCS_DIR/$rel)"
    fail=$((fail + 1))
  fi
done < "$TOML"
echo "Checked $count redirects against $DOCS_DIR/, missing: $fail"
# keep this count in sync whenever netlify.toml gains or loses a redirect rule
[ "$count" -eq 18 ] || { echo "Expected 18 redirect rules, found $count"; exit 1; }
exit "$fail"
