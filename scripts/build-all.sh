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

# Génère une ligne <tr> conditionnelle sur l'existence du .md source
# (mêmes règles que le workflow CI).
cm_row() {
  local num="$1" title="$2" badge_class="$3" badge_label="$4" slug="$5" fallback="$6"
  if [ -f "${slug}.md" ]; then
    cat <<ROW
                <tr>
                  <td>CM${num}</td>
                  <td>${title}</td>
                  <td><span class="badge ${badge_class}">${badge_label}</span></td>
                  <td><a href="${slug}.html">📺 HTML</a></td>
                  <td><a href="${slug}.pdf">📄 PDF</a></td>
                </tr>
ROW
  else
    cat <<ROW
                <tr>
                  <td>CM${num}</td>
                  <td>${title}</td>
                  <td><span class="badge ${badge_class}">${badge_label}</span></td>
                  <td colspan="2"><em>${fallback}</em></td>
                </tr>
ROW
  fi
}

CM_ROWS=$(
  cm_row 1 "Fondations de l'IHM et première immersion JavaFX" "comprendre" "Comprendre" "cm1-fondations-ihm" ""
  cm_row 2 "Propriétés, bindings et contrôles"                 "appliquer"  "Appliquer"  "cm2-donnees-et-liaison" ""
  cm_row 3 "Architecture des IHM et FXML"                      "analyser"   "Analyser"   "cm3-architecture-ihm" "🔄 En cours"
  cm_row 4 "MVVM, persistance et synthèse"                     "creer"      "Créer"      "cm4-synthese" "⏳ À venir"
)

cat > _site/index.html <<HTMLEOF
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>R2.02 - Cours magistraux</title>
  <style>
    body { font-family: system-ui, sans-serif; max-width: 800px; margin: 2rem auto; padding: 0 1rem; line-height: 1.6; color: #333; }
    h1 { color: #2c3e50; border-bottom: 2px solid #3498db; padding-bottom: 0.5rem; }
    table { width: 100%; border-collapse: collapse; margin: 1.5rem 0; }
    th { background: #3498db; color: white; padding: 0.75rem; text-align: left; }
    td { padding: 0.75rem; border-bottom: 1px solid #eee; }
    tr:hover { background: #f5f8fc; }
    a { color: #2980b9; text-decoration: none; }
    a:hover { text-decoration: underline; }
    .badge { display: inline-block; padding: 0.2rem 0.5rem; border-radius: 4px; font-size: 0.8rem; font-weight: bold; color: white; }
    .comprendre { background: #27ae60; }
    .appliquer { background: #f39c12; }
    .analyser { background: #e74c3c; }
    .creer { background: #8e44ad; }
    em { color: #888; font-style: italic; }
    footer { margin-top: 2rem; padding-top: 1rem; border-top: 1px solid #eee; font-size: 0.85rem; color: #888; }
  </style>
</head>
<body>
  <h1>R2.02 - Développement d'applications avec IHM</h1>
  <p>IUT d'Aix-Marseille - BUT Informatique 1<sup>re</sup> année</p>

  <table>
    <thead>
      <tr><th>CM</th><th>Titre</th><th>Bloom</th><th>Slides</th><th>PDF</th></tr>
    </thead>
    <tbody>
${CM_ROWS}
    </tbody>
  </table>

  <footer>
    <p>Supports générés automatiquement depuis les sources Markdown avec <a href="https://marp.app/">Marp</a>.</p>
    <p><a href="https://github.com/IUTInfoAix-R202/cours">📁 Dépôt source</a></p>
  </footer>
</body>
</html>
HTMLEOF

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
