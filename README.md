# <img src="https://raw.githubusercontent.com/IUTInfoAix-R510/Syllabus/main/assets/logo.png" alt="class logo" class="logo"/> R2.02 - Développement d'applications avec IHM

### IUT d'Aix-Marseille - Département Informatique Aix-en-Provence

* **Ressource :** [R2.02](https://cache.media.enseignementsup-recherche.gouv.fr/file/SPE4-MESRI-17-6-2021/35/5/Annexe_17_INFO_BUT_annee_1_1411355.pdf)

* **Responsable :**
  * [Sébastien Nedjar](mailto:sebastien.nedjar@univ-amu.fr)

* **Enseignants :**
  * [Frédéric Flouvat](mailto:frederic.flouvat@univ-amu.fr)
  * [Sophie Nabitz](mailto:sophie.nabitz@univ-avignon.fr)
  * [Samir Chtioui](mailto:samir.chtioui@gmail.com)

## Cours magistraux

Ce dépôt contient les supports des 4 cours magistraux du module R2.02 (BUT Informatique, 1re année). Chaque CM de 1h30 précède et prépare le TP correspondant.

| CM | Titre | Prépare | Bloom |
|---|---|---|---|
| [CM1](cm1-fondations-ihm.md) | Fondations de l'IHM et première immersion JavaFX | [TP1](https://github.com/IUTInfoAix-R202/tp1) - Bases JavaFX | Comprendre |
| [CM2](cm2-donnees-et-liaison.md) | Propriétés, bindings et contrôles | [TP2](https://github.com/IUTInfoAix-R202/tp2) - Properties & bindings | Appliquer |
| [CM3](cm3-architecture-ihm.md) | Architecture des IHM et FXML | [TP3](https://github.com/IUTInfoAix-R202/tp3) - FXML | Analyser |
| [CM4](cm4-synthese.md) | MVVM, persistance et synthèse | [TP4](https://github.com/IUTInfoAix-R202/tp4) + [TP5](https://github.com/IUTInfoAix-R202/tp5) | Créer / Évaluer |

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
├── cm1-fondations-ihm.md      # CM1
├── cm2-donnees-et-liaison.md  # CM2
├── cm3-architecture-ihm.md    # CM3
├── cm4-synthese.md            # CM4
├── assets/                    # Images et diagrammes partagés
└── legacy/                    # Cours originaux (2022) pour référence
    ├── cours1/                # Markdown/remark.js - bases JavaFX
    ├── cours2/                # Markdown/remark.js - contrôles, FXML
    ├── cours3/                # LaTeX Beamer - JDBC
    └── cours4/                # LaTeX Beamer - JPA
```
