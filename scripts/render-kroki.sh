#!/bin/bash
# Pré-rend les diagrammes Kroki en SVG locaux dans assets/kroki/.
#
# Lit chaque fichier source dans scripts/kroki-sources/ :
# - extension .mmd  -> rendu mermaid
# - extension .puml -> rendu plantuml
# - extension .dot  -> rendu graphviz
#
# POST le source à kroki.io et sauvegarde le SVG dans
# assets/kroki/<basename>.svg. À ré-exécuter manuellement quand
# une source change (l'usage attendu reste rare).
#
# Usage : ./scripts/render-kroki.sh   (ou  npm run kroki:render)
# Dépendance : curl (rien d'autre).

set -euo pipefail

cd "$(dirname "$0")/.."

KROKI_URL="${KROKI_URL:-https://kroki.io}"
SRC_DIR="scripts/kroki-sources"
OUT_DIR="assets/kroki"

mkdir -p "$OUT_DIR"

if [ ! -d "$SRC_DIR" ] || [ -z "$(ls -A "$SRC_DIR" 2>/dev/null)" ]; then
  echo "Aucune source dans $SRC_DIR/, rien à rendre."
  exit 0
fi

ext_to_diagram() {
  case "$1" in
    mmd)  echo "mermaid"  ;;
    puml) echo "plantuml" ;;
    dot)  echo "graphviz" ;;
    *)    echo ""         ;;
  esac
}

count=0
for src in "$SRC_DIR"/*; do
  [ -f "$src" ] || continue
  base=$(basename "$src")
  ext="${base##*.}"
  name="${base%.*}"
  diag=$(ext_to_diagram "$ext")
  if [ -z "$diag" ]; then
    echo "  $base : extension '$ext' non gérée, ignoré"
    continue
  fi
  out="$OUT_DIR/${name}.svg"
  echo -n "  $base ($diag) -> $out ... "
  if curl -sf -X POST "$KROKI_URL/$diag/svg" \
       -H "Content-Type: text/plain" \
       --data-binary "@$src" \
       -o "$out"; then
    echo "OK"
    count=$((count + 1))
  else
    echo "ERREUR (kroki.io injoignable ou source invalide)"
    rm -f "$out"
    exit 1
  fi
done

echo ""
echo "$count diagramme(s) rendu(s) dans $OUT_DIR/"
