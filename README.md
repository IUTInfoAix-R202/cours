# <img src=".github/assets/logo.png" alt="class logo" class="logo" width="120"/> R2.02 - Développement d'applications avec IHM

### IUT d'Aix-Marseille - Département Informatique Aix-en-Provence

* **Ressource :** [Syllabus R2.02](https://github.com/IUTInfoAix-R202/syllabus) (compétences, calendrier, évaluations, ressources détaillées)

* **Équipe pédagogique :**
  * [Sébastien Nedjar](mailto:sebastien.nedjar@univ-amu.fr) - responsable du module
  * [Frédéric Flouvat](mailto:frederic.flouvat@univ-amu.fr)
  * [Sophie Nabitz](mailto:sophie.nabitz@univ-avignon.fr)
  * [Samir Chtioui](mailto:samir.chtioui@gmail.com)

## Cours magistraux

Ce dépôt contient les supports des 4 cours magistraux du module R2.02 (BUT Informatique, 1re année). Chaque CM de 1h30 précède et prépare le TP correspondant.

| CM | Titre | Prépare | Bloom |
|---|---|---|---|
| [CM1](cm1-fondations-ihm.md) | Fondations de l'IHM et première immersion JavaFX | TP1 - Bases JavaFX | Comprendre |
| [CM2](cm2-donnees-et-liaison.md) | Propriétés, bindings et contrôles | TP2 - Properties & bindings | Appliquer |
| CM3 *(🔄 En cours)* | Architecture des IHM et FXML | TP3 - FXML | Analyser |
| CM4 *(⏳ À venir)* | MVVM, persistance et synthèse | TP4 + TP5 | Créer / Évaluer |

### Fil rouge

Trois thèmes traversent l'ensemble des CM :

- **Architecture** : du code monolithique (CM1) à MVC (CM3) puis MVVM (CM4), chaque CM ajoute un niveau de séparation des préoccupations
- **Ergonomie / UX** : les heuristiques de Nielsen, les lois de Fitts et Hick, l'accessibilité WCAG sont introduites progressivement et reliées aux concepts JavaFX
- **Modèle événementiel** : du `setOnAction` basique (CM1) au modèle complet de propagation (CM2), puis aux bindings réactifs comme alternative aux événements

### Format

Les supports sont rédigés en **Markdown avec frontmatter [Marp](https://marp.app/)** :
- Lisibles directement sur GitHub (Markdown standard)
- Convertibles en slides PDF/HTML via `marp --pdf cm1-fondations-ihm.md`
- Éditables dans VS Code avec l'extension Marp (prévisualisation en temps réel)

### Lien avec la SAE 2.01

Les compétences acquises dans les CM et TP servent à construire l'**interface d'extraction et manipulation de données** pour des capteurs de détection et identification de chauve-souris (SAE 2.01). Chaque CM fait le lien explicite avec cette application fil rouge.

## Organisation du dépôt

```
cours/
├── cm1-fondations-ihm.md      # CM1 (publié)
├── cm2-donnees-et-liaison.md  # CM2 (publié)
└── assets/                    # Images et diagrammes partagés
```

CM3 et CM4 seront ajoutés au dépôt au fil de leur rédaction. Consulter le [syllabus](https://github.com/IUTInfoAix-R202/syllabus) pour le statut courant.

## Licence et attributions

Sauf mention contraire ci-dessous, l'ensemble du contenu de ce dépôt (textes des supports, diagrammes maison, code d'exemple) est placé sous licence [**Creative Commons CC0 1.0 Universal**](LICENSE) : réutilisation libre, sans attribution requise.

**Exception — ressource tierce reproduite à des fins pédagogiques** :

- `assets/nielsen-heuristics-summary.png` : poster synthèse des 10 heuristiques d'ergonomie, © [Nielsen Norman Group](https://www.nngroup.com/articles/ten-usability-heuristics/#poster). Cette image est reproduite au titre de la **courte citation à des fins d'illustration dans le cadre de l'enseignement** (art. L. 122-5 3° a du Code de la propriété intellectuelle), avec attribution explicite à l'endroit d'usage dans `cm1-fondations-ihm.md`. Elle **n'est pas couverte par la licence CC0** du dépôt. Pour toute réutilisation hors contexte pédagogique, se référer aux [conditions d'utilisation de NN/g](https://www.nngroup.com/about/).
