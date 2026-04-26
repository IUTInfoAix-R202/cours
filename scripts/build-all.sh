#!/bin/bash
# Build complet du site Pages en local (HTML + PDF + index + assets).
#
# Miroir local du workflow .github/workflows/marp-pages.yml - permet de
# vérifier le rendu complet (y compris PDF et page d'index conditionnelle)
# avant de pousser.
#
# Usage : ./scripts/build-all.sh       (ou  npm run build:all)
#
# Dépendances :
# - npm / npx (marp-cli + plugin kroki installés via `npm ci`)
# - playwright + chromium (téléchargé automatiquement au premier run PDF)

set -euo pipefail

cd "$(dirname "$0")/.."

echo "=== 1. HTML slides ==="
mkdir -p _site
for f in cm*.md; do
  [ -f "$f" ] || continue
  name="${f%.md}"
  echo "  $f -> _site/${name}.html"
  npx marp --config marp.config.js --html "$f" --output "_site/${name}.html"
done

echo ""
echo "=== 2. PDF slides ==="
npx playwright install --with-deps chromium
for f in cm*.md; do
  [ -f "$f" ] || continue
  name="${f%.md}"
  echo "  $f -> _site/${name}.pdf"
  npx marp --config marp.config.js "$f" --pdf --output "_site/${name}.pdf" --allow-local-files
done

echo ""
echo "=== 3. Page d'index ==="
bash "$(dirname "$0")/generate-index.sh"
echo "  _site/index.html"

echo ""
echo "=== 4. Assets ==="
if [ -d assets ]; then
  cp -r assets _site/assets
  echo "  assets/ -> _site/assets/"
fi

echo ""
echo "=== Terminé ==="
echo "Ouvrir _site/index.html dans un navigateur pour vérifier le rendu."
