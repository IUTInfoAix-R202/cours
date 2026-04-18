---
marp: true
theme: default
paginate: true
header: "R2.02 - Développement d'applications avec IHM"
footer: "IUT Aix-Marseille - BUT Informatique 1A"
---

<!-- _class: lead -->
<!-- _footer: "" -->
<!-- _paginate: false -->

<style scoped>
section {
  background-image: url('https://raw.githubusercontent.com/IUTInfoAix-R510/Syllabus/main/assets/logo.png');
  background-repeat: no-repeat;
  background-position: bottom 40px center;
  background-size: 380px;
}
</style>

# Fondations de l'IHM et première immersion JavaFX

**R2.02 - Développement d'applications avec IHM**

---

## Le module R2.02 en un coup d'oeil

<!-- _header: "" -->
<!-- _footer: "" -->

<style scoped>
blockquote { font-size: 0.92rem; }
</style>

> Apprendre à concevoir et développer des **applications avec une interface graphique** en Java (JavaFX), en intégrant les bonnes pratiques d'architecture et d'ergonomie.

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1rem; margin-top: 1rem; font-size: 1.5rem;">
<div style="background: #4a90d9; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
🖼️ <b>Composants graphiques</b><br/>Conteneurs, contrôles, graphe de scène
</div>
<div style="background: #e8a838; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
⚡ <b>Modèle événementiel</b><br/>Événements, listeners, bindings
</div>
<div style="background: #27ae60; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
🏗️ <b>Architecture IHM</b><br/>MVC, MVVM, séparation vue-modèle
</div>
<div style="background: #e74c3c; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
📄 <b>IHM déclaratives</b><br/>FXML, CSS, SceneBuilder
</div>
<div style="background: #8e44ad; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
🧠 <b>Ergonomie</b><br/>Heuristiques de Nielsen, accessibilité
</div>
<div style="background: #00838f; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
💾 <b>Persistance</b><br/>JDBC, JPA, pattern DAO
</div>
</div>

---

## Organisation du module

<!-- _header: "" -->
<!-- _footer: "" -->

<div style="display: flex; gap: 0.8rem; margin-top: 1rem;">
<div style="background: #4a90d9; color: white; padding: 1.2rem; border-radius: 12px 12px 0 0; flex: 1; text-align: center;">
<div style="font-size: 1.8rem; font-weight: bold;">CM1</div>
<div style="margin-top: 0.3rem;">Fondations IHM + JavaFX</div>
</div>
<div style="background: #e8a838; color: white; padding: 1.2rem; border-radius: 12px 12px 0 0; flex: 1; text-align: center;">
<div style="font-size: 1.8rem; font-weight: bold;">CM2</div>
<div style="margin-top: 0.3rem;">Propriétés et bindings</div>
</div>
<div style="background: #27ae60; color: white; padding: 1.2rem; border-radius: 12px 12px 0 0; flex: 1; text-align: center;">
<div style="font-size: 1.8rem; font-weight: bold;">CM3</div>
<div style="margin-top: 0.3rem;">Architecture et FXML</div>
</div>
<div style="background: #8e44ad; color: white; padding: 1.2rem; border-radius: 12px 12px 0 0; flex: 1; text-align: center;">
<div style="font-size: 1.8rem; font-weight: bold;">CM4</div>
<div style="margin-top: 0.3rem;">MVVM + persistance</div>
</div>
</div>

<div style="display: flex; gap: 0.8rem; text-align: center; font-size: 1.5rem; color: #999;">
<div style="flex: 1;">↓</div>
<div style="flex: 1;">↓</div>
<div style="flex: 1;">↓</div>
<div style="flex: 1;">↓</div>
</div>

<div style="display: flex; gap: 0.8rem;">
<div style="background: #d0e2f3; color: #2c5f8a; padding: 0.8rem; border-radius: 0 0 12px 12px; flex: 1; text-align: center; font-weight: bold;">
TP1
</div>
<div style="background: #fae5c0; color: #8a6a1f; padding: 0.8rem; border-radius: 0 0 12px 12px; flex: 1; text-align: center; font-weight: bold;">
TP2
</div>
<div style="background: #c8e6c9; color: #1b5e20; padding: 0.8rem; border-radius: 0 0 12px 12px; flex: 1; text-align: center; font-weight: bold;">
TP3
</div>
<div style="background: #e1bee7; color: #5c2473; padding: 0.8rem; border-radius: 0 0 12px 12px; flex: 1; text-align: center; font-weight: bold;">
TP4 + TP5
</div>
</div>

<div style="display: flex; gap: 2rem; margin-top: 1.5rem;">
<div style="flex: 1;">

**👥 Intervenants**
- S. Nedjar, F. Flouvat, 
- S. Nabitz, S. Chtioui

</div>
<div style="flex: 1;">

**⏱️ Volume horaire** : 38h
- CM (6h) 
- TD/TP (32h)

</div>
</div>

---

## Évaluation

<!-- _header: "" -->
<!-- _footer: "" -->

Trois notes, un objectif : vérifier que vous **comprenez** ce que vous codez, pas juste que ça fonctionne.

<div style="display: flex; gap: 1.5rem; margin-top: 1rem;">
<div style="background: #4a90d9; color: white; padding: 1.8rem 1.2rem; border-radius: 12px; flex: 1; text-align: center;">
<div style="font-size: 3.5rem; margin-bottom: 0.5rem;">📝</div>
<div style="font-weight: bold; font-size: 1.5rem;">CC1</div>
<div style="margin-top: 0.5rem; opacity: 0.9;">Note d'évaluation de TP</div>
<div style="margin-top: 0.5rem; font-weight: bold; font-size: 1.2rem; background: rgba(255,255,255,0.2); border-radius: 6px; padding: 0.2rem;">coeff. 10</div>
</div>
<div style="background: #e8a838; color: white; padding: 1.8rem 1.2rem; border-radius: 12px; flex: 1; text-align: center;">
<div style="font-size: 3.5rem; margin-bottom: 0.5rem;">🤝</div>
<div style="font-weight: bold; font-size: 1.5rem;">CC2</div>
<div style="margin-top: 0.5rem; opacity: 0.9;">Participation et implication</div>
<div style="margin-top: 0.5rem; font-weight: bold; font-size: 1.2rem; background: rgba(255,255,255,0.2); border-radius: 6px; padding: 0.2rem;">coeff. 10</div>
</div>
<div style="background: #e74c3c; color: white; padding: 1.8rem 1.2rem; border-radius: 12px; flex: 1; text-align: center;">
<div style="font-size: 3.5rem; margin-bottom: 0.5rem;">💻</div>
<div style="font-weight: bold; font-size: 1.5rem;">CC3</div>
<div style="margin-top: 0.5rem; opacity: 0.9;">Mini-application JavaFX sur feuille</div>
<div style="margin-top: 0.5rem; font-weight: bold; font-size: 1.2rem; background: rgba(255,255,255,0.2); border-radius: 6px; padding: 0.2rem;">coeff. 40</div>
</div>
</div>

<div style="display: flex; height: 1.2rem; border-radius: 8px; overflow: hidden; margin-top: 1.2rem;">
<div style="background: #4a90d9; flex: 10; display: flex; align-items: center; justify-content: center; color: white; font-size: 0.7rem; font-weight: bold;">17%</div>
<div style="background: #e8a838; flex: 10; display: flex; align-items: center; justify-content: center; color: white; font-size: 0.7rem; font-weight: bold;">17%</div>
<div style="background: #e74c3c; flex: 40; display: flex; align-items: center; justify-content: center; color: white; font-size: 0.7rem; font-weight: bold;">66%</div>
</div>

---

## Environnement de travail

<!-- _header: "" -->
<!-- _footer: "" -->

Tout le module se fait sur **GitHub Codespaces** : aucune installation locale nécessaire.

<div style="display: grid; grid-template-columns: 1fr 1fr 1fr; gap: 1rem; margin-top: 1.5rem;">
<div style="background: #2c3e50; color: white; padding: 1.2rem; border-radius: 10px; text-align: center;">
<div style="font-size: 2.5rem;">☕</div>
<div style="font-weight: bold; margin-top: 0.3rem;">Java 25</div>
</div>
<div style="background: #2c3e50; color: white; padding: 1.2rem; border-radius: 10px; text-align: center;">
<div style="font-size: 2.5rem;">🎨</div>
<div style="font-weight: bold; margin-top: 0.3rem;">JavaFX 25</div>
</div>
<div style="background: #2c3e50; color: white; padding: 1.2rem; border-radius: 10px; text-align: center;">
<div style="font-size: 2.5rem;">📦</div>
<div style="font-weight: bold; margin-top: 0.3rem;">Maven</div>
</div>
<div style="background: #2c3e50; color: white; padding: 1.2rem; border-radius: 10px; text-align: center;">
<div style="font-size: 2.5rem;">🔀</div>
<div style="font-weight: bold; margin-top: 0.3rem;">Git + GitHub CLI</div>
</div>
<div style="background: #2c3e50; color: white; padding: 1.2rem; border-radius: 10px; text-align: center;">
<div style="font-size: 2.5rem;">🤖</div>
<div style="font-weight: bold; margin-top: 0.3rem;">Copilot Chat</div>
</div>
<div style="background: #2c3e50; color: white; padding: 1.2rem; border-radius: 10px; text-align: center;">
<div style="font-size: 2.5rem;">🧪</div>
<div style="font-weight: bold; margin-top: 0.3rem;">TestFX</div>
</div>
</div>

<div style="background: #2c3e50; color: white; padding: 1.2rem 2rem; border-radius: 10px; text-align: center; margin-top: 1.5rem; font-size: 1.4rem;">
🌐 Vous ouvrez un navigateur, vous codez. <b>Rien à installer, rien à configurer !</b>
</div>

---

## Workflow professionnel

<!-- _header: "" -->
<!-- _footer: "" -->

Chaque exercice suit le même cycle, identique à celui d'une équipe en entreprise :

<div style="display: flex; margin-top: 1.5rem; align-items: center;">
<div style="background: #4a90d9; color: white; padding: 1.2rem 1rem; border-radius: 12px; text-align: center; flex: 1;">
<div style="font-size: 2.5rem;">🌿</div>
<div style="font-weight: bold; font-size: 1.1rem;">Branche</div>
</div>
<div style="font-size: 2rem; color: #ccc; padding: 0 0.3rem;">→</div>
<div style="background: #2c3e50; color: white; padding: 1.2rem 1rem; border-radius: 12px; text-align: center; flex: 1;">
<div style="font-size: 2.5rem;">💻</div>
<div style="font-weight: bold; font-size: 1.1rem;">Code + Tests</div>
</div>
<div style="font-size: 2rem; color: #ccc; padding: 0 0.3rem;">→</div>
<div style="background: #e8a838; color: white; padding: 1.2rem 1rem; border-radius: 12px; text-align: center; flex: 1;">
<div style="font-size: 2.5rem;">📬</div>
<div style="font-weight: bold; font-size: 1.1rem;">Pull Request</div>
</div>
<div style="font-size: 2rem; color: #ccc; padding: 0 0.3rem;">→</div>
<div style="background: #8e44ad; color: white; padding: 1.2rem 1rem; border-radius: 12px; text-align: center; flex: 1;">
<div style="font-size: 2.5rem;">👀</div>
<div style="font-weight: bold; font-size: 1.1rem;">Review</div>
</div>
<div style="font-size: 2rem; color: #ccc; padding: 0 0.3rem;">→</div>
<div style="background: #27ae60; color: white; padding: 1.2rem 1rem; border-radius: 12px; text-align: center; flex: 1;">
<div style="font-size: 2.5rem;">✅</div>
<div style="font-weight: bold; font-size: 1.1rem;">Merge</div>
</div>
</div>

<div style="display: flex; gap: 1.5rem; margin-top: 2rem;">
<div style="flex: 1; background: #f0f4f8; padding: 1rem 1.2rem; border-radius: 10px; border-left: 4px solid #4a90d9;">
<div style="font-weight: bold;">🧩 TDD baby steps</div>
<div style="margin-top: 0.3rem;">Les tests sont livrés désactivés (<code>@Disabled</code>). Vous les activez <b>un par un</b> et implémentez le minimum pour les faire passer.</div>
</div>
<div style="flex: 1; background: #f0f4f8; padding: 1rem 1.2rem; border-radius: 10px; border-left: 4px solid #27ae60;">
<div style="font-weight: bold;">📊 Autograding</div>
<div style="margin-top: 0.3rem;">À chaque <code>push</code>, votre note est calculée automatiquement. Chaque test vert = des points en plus.</div>
</div>
</div>

---

## Lien avec la SAE 2.01

La SAE 2.01 vous demandera de créer une **interface d'extraction et manipulation de données** pour des capteurs de détection de chauve-souris.

Ce CM pose les **fondations** :
- La fenêtre (`Stage`) qui hébergera votre application
- Les conteneurs (`BorderPane`, `VBox`…) qui organiseront vos composants
- Les événements qui rendront l'interface interactive

Les CM suivants ajouteront : bindings (CM2), FXML/architecture (CM3), MVVM/persistance (CM4).

---

## Ce que vous saurez faire après ce CM

- **Expliquer** ce qu'est une IHM et pourquoi sa conception est un enjeu distinct du code
- **Décrire** le graphe de scène JavaFX (Stage, Scene, Node) et la métaphore du théâtre
- **Identifier** quel conteneur de layout utiliser selon le besoin
- **Comprendre** le modèle événementiel (pattern Observer, EventHandler)
- **Appliquer** deux heuristiques d'ergonomie (Nielsen #1 et #2) pour évaluer une interface

> *Niveau Bloom : Comprendre* - Ce CM pose les fondations conceptuelles. Le TP1 vous fera passer à la pratique.

---

<!-- _class: lead -->

# Partie 1 - Qu'est-ce qu'une IHM ?

---

## Trois interfaces, même fonctionnalité

<!-- _footer: "" -->

Trois applications qui font la même chose : **afficher la météo**.

<div style="display: flex; gap: 1.2rem; margin: 4rem 0;">
<div style="flex: 1; border: 2px solid #e74c3c; border-radius: 12px; overflow: hidden;">
<div style="background: #e74c3c; color: white; padding: 0.4rem; text-align: center; font-weight: bold;">❌ Version A</div>
<div style="padding: 1rem; background: #111; color: #0f0; font-family: monospace; font-size: 0.8rem; min-height: 100px;">
$ meteo aix<br/>
Temp: 22C<br/>
Humidite: 45%<br/>
Vent: 15km/h NW<br/>
$_
</div>
</div>
<div style="flex: 1; border: 2px solid #e8a838; border-radius: 12px; overflow: hidden;">
<div style="background: #e8a838; color: white; padding: 0.4rem; text-align: center; font-weight: bold;">⚠️ Version B</div>
<div style="padding: 1rem; background: #ff0; min-height: 100px;">
<span style="color: red; font-size: 0.7rem;">METEO</span><br/>
<button style="background: lime; border: 3px solid red; font-size: 0.6rem;">VOIR</button>
<button style="background: blue; color: blue; font-size: 0.6rem;">???</button><br/>
<span style="color: red; font-size: 0.7rem;">22° peut-être</span>
</div>
</div>
<div style="flex: 1; border: 2px solid #27ae60; border-radius: 12px; overflow: hidden;">
<div style="background: #27ae60; color: white; padding: 0.4rem; text-align: center; font-weight: bold;">✅ Version C</div>
<div style="padding: 1rem; background: #f8f9fa; min-height: 100px;">
<div style="font-size: 0.85rem; color: #333;">📍 Aix-en-Provence</div>
<div style="font-size: 1.8rem; margin: 0.3rem 0;">☀️ 22°C</div>
<div style="font-size: 0.75rem; color: #666;">💧 45% &nbsp; 💨 15 km/h</div>
</div>
</div>
</div>

<div style="margin-top: 1.5rem;">

**Question** : laquelle utiliseriez-vous au quotidien ? Pourquoi ?

</div>

→ La différence n'est pas dans le *code*, elle est dans la **conception de l'interface**.

---

## Définition

<div style="background: #2c3e50; color: white; padding: 1.2rem 1.5rem; border-radius: 12px; margin: 1rem 0; font-size: 1.15rem;">
🎯 <b>Interface Homme-Machine (IHM)</b> : le point de contact entre les capacités cognitives de <b>l'être humain</b> et la logique du <b>logiciel</b>.
</div>

Une bonne IHM ne se contente pas de "fonctionner". Elle doit être :

<div style="display: flex; gap: 1.2rem; margin: 1rem 0;">
<div style="flex: 1; background: #27ae60; color: white; padding: 1rem; border-radius: 10px; text-align: center;">
<div style="font-size: 2rem;">🎯</div>
<div style="font-weight: bold; margin-top: 0.3rem;">Efficace</div>
<div style="opacity: 0.9; margin-top: 0.2rem;">L'utilisateur atteint son objectif</div>
</div>
<div style="flex: 1; background: #4a90d9; color: white; padding: 1rem; border-radius: 10px; text-align: center;">
<div style="font-size: 2rem;">⚡</div>
<div style="font-weight: bold; margin-top: 0.3rem;">Efficiente</div>
<div style="opacity: 0.9; margin-top: 0.2rem;">Avec un effort minimal</div>
</div>
<div style="flex: 1; background: #e8a838; color: white; padding: 1rem; border-radius: 10px; text-align: center;">
<div style="font-size: 2rem;">😊</div>
<div style="font-weight: bold; margin-top: 0.3rem;">Satisfaisante</div>
<div style="opacity: 0.9; margin-top: 0.2rem;">L'expérience est agréable</div>
</div>
</div>

Ce cours ne porte pas sur **comment afficher un bouton** mais sur **comment concevoir une interface qui sert l'utilisateur**.

---

## Brève histoire des interfaces

<!-- _header: "" -->
<!-- _footer: "" -->

<style scoped>
table { font-size: 0.82rem; }
p { font-size: 0.88rem; }
</style>

| Époque | 🖥️ Paradigme | 💡 Caractéristique |
|---|---|---|
| **1970** | ⌨️ **CLI** - Ligne de commande | Efficace mais exigeant. L'utilisateur s'adapte à la machine. |
| **1984** | 🖱️ **GUI** - Interfaces graphiques | Macintosh, Windows, X11. La machine s'adapte à l'utilisateur. |
| **2007** | 📱 **Tactile** - Smartphones | iPhone, gestes multi-touch. L'interaction devient physique. |
| **2023** | 🤖 **Spatial / IA** | Vision Pro, assistants vocaux. L'interface disparaît. |

Chaque transition a été motivée par une meilleure compréhension des **besoins humains**, pas par la technologie seule.

---

## Les trois piliers d'un cours d'IHM
<!-- _header: "" -->
<!-- _footer: "" -->

<style scoped>
section { display: flex; flex-direction: column; }
section > h2 { flex: 0; }
section > p { flex: 0; }
</style>

<div style="display: flex; justify-content: center; gap: 2rem; flex: 1; margin-top: 1rem;">
<div style="background: #4a90d9; color: white; padding: 2rem 1.5rem; border-radius: 16px; text-align: center; flex: 1; display: flex; flex-direction: column; justify-content: center;">
<div style="font-size: 4.5rem;">🏗️</div>
<div style="font-weight: bold; font-size: 1.6rem; margin-top: 0.8rem;">Architecture</div>
<div style="font-size: 1.1rem; opacity: 0.9; margin-top: 0.5rem;">Comment organiser le code</div>
</div>
<div style="background: #27ae60; color: white; padding: 2rem 1.5rem; border-radius: 16px; text-align: center; flex: 1; display: flex; flex-direction: column; justify-content: center;">
<div style="font-size: 4.5rem;">🧠</div>
<div style="font-weight: bold; font-size: 1.6rem; margin-top: 0.8rem;">Ergonomie</div>
<div style="font-size: 1.1rem; opacity: 0.9; margin-top: 0.5rem;">Comment servir l'utilisateur</div>
</div>
<div style="background: #e74c3c; color: white; padding: 2rem 1.5rem; border-radius: 16px; text-align: center; flex: 1; display: flex; flex-direction: column; justify-content: center;">
<div style="font-size: 4.5rem;">⚡</div>
<div style="font-weight: bold; font-size: 1.6rem; margin-top: 0.8rem;">Événements</div>
<div style="font-size: 1.1rem; opacity: 0.9; margin-top: 0.5rem;">Comment réagir aux actions</div>
</div>
</div>

Ces trois piliers seront développés tout au long des 4 CM du module.

---

## Les trois piliers : déclinaison dans les CM
<!-- _header: "" -->
<!-- _footer: "" -->

| CM | 🏗️ Architecture | 🧠 Ergonomie | ⚡ Événements |
|---|---|---|---|
| **CM1** | Premières notions | Nielsen #1, #2 + Gestalt | Observer, EventHandler |
| **CM2** | Source unique de vérité | Affordance, feedback | Propagation, bindings |
| **CM3** | MVC / MVVM | Fitts, Hick, WCAG | FXML + Controller |
| **CM4** | MVVM complet | Prévention d'erreurs | Validation réactive |

<div style="background: #2c3e50; color: white; padding: 0.8rem 1.5rem; border-radius: 10px; margin-top: 1rem; text-align: center;">
💡 Chaque CM approfondit les trois piliers <b>en parallèle</b>. Les principes de conception accompagnent chaque concept technique.
</div>

---

## 🧠 Ergonomie : les heuristiques de Nielsen

<div style="display: flex; gap: 2rem; align-items: flex-start;">
<div>

Jakob Nielsen a identifié **10 heuristiques d'utilisabilité** 🔟 (1994), toujours d'actualité plus de 30 ans plus tard. Ce sont des **principes généraux**, pas des règles rigides. Ils s'appliquent à toute interface, pas seulement au logiciel.

Chaque heuristique est illustrée par un exemple de la **vie courante** 🌍 pour montrer que ces principes sont universels.

Nous allons les parcourir toutes les dix 👇.

</div>
<div style="min-width: 160px; max-width: 180px; text-align: center;">

[![Posters Nielsen](assets/nielsen-heuristics-summary.png)](https://www.nngroup.com/articles/ten-usability-heuristics/#poster)

<small>*[Posters NN/g](https://www.nngroup.com/articles/ten-usability-heuristics/#poster)*</small>

</div>
</div>

---

## 🧠 Nielsen #1 - Visibilité de l'état du système


> Le système doit toujours **informer l'utilisateur** de ce qui se passe, par un feedback approprié dans un délai raisonnable.

<div style="display: flex; gap: 2rem; align-items: flex-start; margin: 0.8rem 0;">
<div style="font-size: 3.5rem; text-align: center; min-width: 80px;">📍</div>
<div>

**Dans la vie** : le plan **"Vous êtes ici"** dans un centre commercial. Sans lui, vous êtes perdu. Avec lui, vous savez où vous êtes et où aller.

**En IHM** : barre de progression d'un checkout (étape 2/4), titre de fenêtre reflétant le document ouvert, feedback tactile quand on appuie sur un bouton de smartphone.

</div>
</div>

**✏️ Tips** : communiquer *clairement* l'état - aucune action à conséquence sans informer l'utilisateur. Présenter le feedback le plus *vite* possible. Des interactions prévisibles créent la **confiance**.

---

## 🧠 Nielsen #2 - Correspondance avec le monde réel


> Le système doit parler le **langage de l'utilisateur**, avec des mots et concepts familiers plutôt que du jargon interne.

<div style="display: flex; gap: 2rem; align-items: flex-start; margin: 0.8rem 0;">
<div style="font-size: 3.5rem; text-align: center; min-width: 80px;">🔥</div>
<div>

**Dans la vie** : les boutons d'une **plaque de cuisson** sont disposés dans le même arrangement que les plaques. Pas besoin de notice. Le mapping physique est immédiat.

**En IHM** : dire "voiture" si l'utilisateur pense "voiture", pas "automobile". Utiliser l'icône 🛒 pour un panier d'achat - c'est la même fonction que dans le monde réel.

</div>
</div>

**✏️ Tips** : ne jamais *supposer* que votre vocabulaire est celui de vos utilisateurs. La recherche utilisateur révèle leur terminologie et leur **modèle mental**.

---

## 🧠 Nielsen #3 - Liberté et contrôle de l'utilisateur


> Les utilisateurs font souvent des erreurs. Ils ont besoin d'une **"sortie de secours"** clairement identifiée pour quitter l'action non voulue.

<div style="display: flex; gap: 2rem; align-items: flex-start; margin: 0.8rem 0;">
<div style="font-size: 3.5rem; text-align: center; min-width: 80px;">🚪</div>
<div>

**Dans la vie** : les **panneaux EXIT** lumineux dans les bâtiments. Toujours visibles, toujours accessibles, et ils permettent de sortir sans procédure complexe.

**En IHM** : `Ctrl+Z` (undo/redo), bouton "Annuler" dans une boîte de dialogue, croix pour fermer. L'utilisateur ne s'engage jamais dans un processus irréversible sans le vouloir.

</div>
</div>

**✏️ Tips** : supporter *Undo* et *Redo*. Montrer clairement comment *quitter* l'interaction en cours. La sortie doit être **étiquetée** et facile à trouver.

---

## 🧠 Nielsen #4 - Cohérence et standards


> L'utilisateur ne devrait pas avoir à se demander si des mots, situations ou actions différents **signifient la même chose**.

<div style="display: flex; gap: 2rem; align-items: flex-start; margin: 0.8rem 0;">
<div style="font-size: 3.5rem; text-align: center; min-width: 80px;">🏨</div>
<div>

**Dans la vie** : dans tous les hôtels du monde, la **réception est à l'entrée**. Vous ne la cherchez jamais. C'est une convention universelle que chaque hôtel respecte.

**En IHM** : même design system pour toute une famille de produits (*cohérence interne*). Suivre les conventions de la plateforme - menu "Fichier" à gauche, liens soulignés (*cohérence externe*).

</div>
</div>

**✏️ Tips** : vos utilisateurs passent la majorité de leur temps sur *d'autres* produits que le vôtre (loi de Jakob). Rompre la cohérence augmente leur **charge cognitive**.

---

## 🧠 Nielsen #5 - Prévention des erreurs


> Mieux vaut **prévenir** les erreurs que produire de bons messages d'erreur.

<div style="display: flex; gap: 2rem; align-items: flex-start; margin: 0.8rem 0;">
<div style="font-size: 3.5rem; text-align: center; min-width: 80px;">🛡️</div>
<div>

**Dans la vie** : les **glissières de sécurité** sur les routes de montagne. Elles empêchent la voiture de tomber dans le ravin, plutôt que de mettre un panneau en bas de la falaise.

**En IHM** : page de confirmation avant paiement (relire les détails du vol). Griser les dates indisponibles dans un calendrier. Proposer des valeurs par défaut raisonnables.

</div>
</div>

**✏️ Tips** : deux types d'erreurs - les *lapsus* (inattention) et les *erreurs* (incompréhension). Prioriser la prévention des erreurs **coûteuses** en premier.

---

## 🧠 Nielsen #6 - Reconnaissance plutôt que rappel


> Rendre les éléments visibles. L'utilisateur ne devrait pas avoir à **se souvenir** d'informations d'un écran à l'autre.

<div style="display: flex; gap: 2rem; align-items: flex-start; margin: 0.8rem 0;">
<div style="font-size: 3.5rem; text-align: center; min-width: 80px;">🏰</div>
<div>

**Dans la vie** : "Lisbonne est-elle la capitale du Portugal ?" est plus facile que "Quelle est la capitale du Portugal ?". **Reconnaître** demande moins d'effort que **se rappeler**.

**En IHM** : tableaux comparatifs (on voit les différences côte à côte). Requête de recherche affichée au-dessus des résultats. Menus plutôt que lignes de commande.

</div>
</div>

**✏️ Tips** : offrir l'aide **en contexte** plutôt qu'un long tutoriel à mémoriser. Réduire la quantité d'informations que l'utilisateur doit retenir.

---

## 🧠 Nielsen #7 - Flexibilité et efficacité


> Les **raccourcis**, invisibles pour les novices, accélèrent l'interaction pour les experts. Permettre la personnalisation.

<div style="display: flex; gap: 2rem; align-items: flex-start; margin: 0.8rem 0;">
<div style="font-size: 3.5rem; text-align: center; min-width: 80px;">🗺️</div>
<div>

**Dans la vie** : un **plan de ville** montre l'itinéraire principal, mais les habitants connaissent des raccourcis. Les deux coexistent sans se gêner.

**En IHM** : débutant → menu "Édition → Copier" ; expert → `Ctrl+C`. Double-tap pour "liker" sur Instagram (raccourci tactile). Personnalisation de la barre d'outils.

</div>
</div>

**✏️ Tips** : proposer des *accélérateurs* (raccourcis clavier, gestes). Permettre la *personnalisation* pour que chaque utilisateur adapte l'outil à sa pratique.

---

## 🧠 Nielsen #8 - Design esthétique et minimaliste


> Chaque information en trop dans une interface **entre en compétition** avec les informations utiles et diminue leur visibilité.

<div style="display: flex; gap: 2rem; align-items: flex-start; margin: 0.8rem 0;">
<div style="font-size: 3.5rem; text-align: center; min-width: 80px;">🫖</div>
<div>

**Dans la vie** : une **théière ornementale** - anse inconfortable, bec impossible à nettoyer. Le superflu nuit à la fonction. Une théière simple est plus agréable à utiliser.

**En IHM** : une interface surchargée augmente le coût d'interaction. Une interface organisée le réduit. Devise : **"communiquer, pas décorer"**.

</div>
</div>

**✏️ Tips** : garder le contenu et le design focalisés sur l'**essentiel**. Ne pas laisser les éléments décoratifs distraire de l'information utile. *Prioriser* ce qui soutient l'objectif de l'utilisateur.

---

## 🧠 Nielsen #9 - Aider à reconnaître et corriger les erreurs


> Les messages d'erreur doivent être en **langage clair** (pas de codes), indiquer précisément le problème et **suggérer une solution**.

<div style="display: flex; gap: 2rem; align-items: flex-start; margin: 0.8rem 0;">
<div style="font-size: 3.5rem; text-align: center; min-width: 80px;">⛔</div>
<div>

**Dans la vie** : un panneau **"Sens interdit"** sur la route. Il vous dit clairement que vous allez dans la mauvaise direction et vous demande de vous arrêter. Pas un code cryptique.

**En IHM** : page "Pas de connexion internet" avec des étapes pour résoudre. "Aucun résultat pour 'ours en peluche' - essayez ces suggestions". Utiliser du texte rouge en gras pour attirer l'attention.

</div>
</div>

**✏️ Tips** : utiliser les codes visuels traditionnels (rouge, gras). Dire ce qui s'est passé en langage *compréhensible*. Offrir un **raccourci vers la solution**.

---

## 🧠 Nielsen #10 - Aide et documentation


> Idéalement, le système **n'a pas besoin d'explication**. Mais si nécessaire, l'aide doit être facile à trouver et orientée vers la tâche.

<div style="display: flex; gap: 2rem; align-items: flex-start; margin: 0.8rem 0;">
<div style="font-size: 3.5rem; text-align: center; min-width: 80px;">ℹ️</div>
<div>

**Dans la vie** : les **bornes d'information** dans les aéroports. Facilement repérables, placées où on en a besoin, avec des réponses concrètes - pas un manuel de 200 pages.

**En IHM** : FAQ qui anticipe les questions fréquentes. Icônes ℹ️ qui révèlent un tooltip au survol (aide contextuelle). Copilot Chat dans votre IDE - l'aide vient à vous.

</div>
</div>

**✏️ Tips** : l'aide doit être facile à *chercher*. La présenter **en contexte**, au moment où l'utilisateur en a besoin. Lister des étapes *concrètes*.

---

<!-- _class: lead -->

# Partie 2 - JavaFX : pourquoi et comment

---

## 🏗️ D'AWT à JavaFX : 25 ans d'évolution

<!-- _footer: "" -->

<style scoped>
table { font-size: 0.87rem; }
</style>

| Époque | 🖥️ Toolkit | 💡 Caractéristique |
|---|---|---|
| 1995 | **AWT** | Composants "lourds" (natifs OS). Multi-plateforme approximatif. |
| 1998 | **Swing** | Composants "légers" (dessinés par Java). Look & Feel pluggable. |
| 2014 | **JavaFX 8** | Scene graph, CSS, FXML, animations, bindings. Intégré au JDK. |
| 2018 | **OpenJFX 11+** | Séparé du JDK, projet open source indépendant. |
| 2025 | **JavaFX 25 LTS** | ⭐ **Version actuelle**, support long terme. |

<div style="background: #4a90d9; color: white; padding: 0.8rem 1.5rem; border-radius: 10px; margin-top: 1rem; text-align: center; font-size: 1.5rem;">
🚀 <b>Pourquoi JavaFX ?</b> Séparation vue/logique (FXML) + binding réactif (propriétés) + styling (CSS)
</div>

---

## 🏗️ La métaphore du théâtre

<!-- _footer: "" -->
<!-- _header: "" -->

<div style="display: flex; justify-content: center; align-items: center; flex: 1;">

![w:1150](assets/metaphore-theatre.svg)

</div>

---

## 🏗️ La métaphore du théâtre : le graphe de scène

<!-- _footer: "" -->
<!-- _header: "" -->

<style scoped>
table { font-size: 0.85rem; }
</style>

En termes techniques, cette métaphore se traduit par un **arbre d'objets** :

```mermaid
graph RL
    ST["🖼️ Stage - la fenêtre <i>(le théâtre)</i>"]
    SC["🎬 Scene - le contenu affiché <i>(le décor)</i>"]
    R["📦 Root Node - le conteneur racine <i>(la troupe)</i>"]
    N1["🏷️ Label - une étiquette de texte <i>(un acteur)</i>"]
    N2["🔘 Button - un bouton <i>(un autre acteur)</i>"]
    N3["📝 TextField - un champ de texte <i>(encore un acteur)</i>"]

    SC --> ST
    R --> SC
     
    N1 --> R
    N2 --> R
    N3 --> R

    style ST fill:#4a90d9,color:white
    style SC fill:#7bb563,color:white
    style R fill:#e8a838,color:white
    style N1 fill:#8e44ad,color:white
    style N2 fill:#e74c3c,color:white
    style N3 fill:#27ae60,color:white
```

<div style="background: #2c3e50; color: white; padding: 0.8rem 1.5rem; border-radius: 10px; margin-top: 1rem; text-align: center; font-size: 1.5rem;">
🌳 Un noeud ne peut avoir <b>qu'un seul parent</b>. Le graphe de scène est toujours un <b>arbre</b>, jamais un graphe cyclique.
</div>

---

## 🏗️ Stage, Scene, Nodes : les trois briques

<!-- _footer: "" -->
<!-- _header: "" -->

<div style="display: flex; gap: 1.5rem; margin-top: 1.5rem;">
<div style="flex: 1; background: #4a90d9; color: white; padding: 1.5rem; border-radius: 12px;">
<div><span style="font-size: 2.8rem; vertical-align: middle;">🖼️</span> <span style="font-weight: bold; font-size: 2rem; vertical-align: middle;">Stage</span></div>
<div style="margin-top: 0.5rem; opacity: 0.9;">La <b>fenêtre</b> du système d'exploitation. On la reçoit en paramètre de la méthode <code>start(Stage primaryStage)</code></div>
</div>
<div style="flex: 1; background: #7bb563; color: white; padding: 1.5rem; border-radius: 12px;">
<div><span style="font-size: 2.8rem; vertical-align: middle;">🎬</span> <span style="font-weight: bold; font-size: 2rem; vertical-align: middle;">Scene</span></div>
<div style="margin-top: 0.5rem; opacity: 0.9;">Le <b>contenu</b> visible. On la crée et on l'attache au Stage en appelant la méthode <code>primaryStage.setScene()</code></div>
</div>
<div style="flex: 1; background: #e8a838; color: white; padding: 1.5rem; border-radius: 12px;">
<div><span style="font-size: 2.8rem; vertical-align: middle;">📦</span> <span style="font-weight: bold; font-size: 2rem; vertical-align: middle;">Nodes</span></div>
<div style="margin-top: 0.5rem; opacity: 0.9;">Les <b>éléments graphiques</b> (boutons, labels, conteneurs…), organisés en un arbre qui reflète la logique de l'IHM.</div>
</div>
</div>

---

## 🏗️ Hello World JavaFX

<!-- _footer: "" -->
<!-- _header: "" -->

L'application graphique **la plus simple possible** :

```java
public class HelloWorld extends Application {
    @Override
    public void start(Stage primaryStage) {
        Label label = new Label("Bonjour, JavaFX !");
        Scene scene = new Scene(new VBox(label), 300, 200);
        primaryStage.setTitle("Hello World");
        primaryStage.setScene(scene);
        primaryStage.show();
    }
}
```

<div style="display: flex; gap: 1.5rem; margin-top: 1rem; font-size: 1.6rem;">
<div style="flex: 1; background: #f0f4f8; padding: 0.8rem 1.2rem; border-radius: 10px; border-left: 4px solid #4a90d9;">
<b>4 lignes</b> suffisent pour afficher une fenêtre avec du texte. Tout le reste est du confort.
</div>
<div style="flex: 1; background: #f0f4f8; padding: 0.8rem 1.2rem; border-radius: 10px; border-left: 4px solid #e8a838;">
On retrouve les 3 briques : <b>Stage</b> (fenêtre), <b>Scene</b> (contenu), <b>Node</b> (Label dans un VBox).
</div>
</div>

---

## 🏗️ Comment ça démarre ?

<!-- _footer: "" -->
<!-- _header: "" -->

Le point d'entrée d'une application JavaFX :

```java
public class HelloWorld extends Application {
    @Override
    public void start(Stage primaryStage) {/* ... construire l'IHM ...*/}

    public static void main(String[] args) {
        launch(args);  // JavaFX prend le relais ici
    }
}
```

```mermaid
graph LR
    A["main()"] --> B["launch()"]
    B --> C["new HelloWorld()"]
    C --> D["start(Stage)"]
    D --> E["🖼️ fenêtre visible"]

    style A fill:#b0bec5,color:#333
    style B fill:#b0bec5,color:#333
    style C fill:#e8a838,color:white
    style D fill:#7bb563,color:white
    style E fill:#4a90d9,color:white
```

---

## 🏗️ Le cycle de vie d'une application
<!-- _footer: "" -->
<!-- _header: "" -->

`launch()` déclenche un cycle de vie géré entièrement par JavaFX :

```mermaid
graph LR
    A["Constructeur"] --> B["init()"]
    B --> C["start(Stage)"]
    C --> D["... boucle événementielle ..."]
    D --> E["stop()"]

    style A fill:#b0bec5,color:#333
    style B fill:#b0bec5,color:#333
    style C fill:#7bb563,color:white
    style D fill:#4a90d9,color:white
    style E fill:#b0bec5,color:#333
```

<div style="display: flex; gap: 1.5rem; margin-top: 1rem; font-size: 1.6rem;">
<div style="flex: 1; background: #f0f4f8; padding: 0.8rem 1rem; border-radius: 10px; border-left: 4px solid #7bb563;">
<b>start(Stage)</b> est la seule méthode <b>obligatoire</b>. C'est là que vous construisez l'IHM.
</div>
<div style="flex: 1; background: #f0f4f8; padding: 0.8rem 1rem; border-radius: 10px; border-left: 4px solid #4a90d9;">
La <b>boucle événementielle</b> attend les actions de l'utilisateur (clics, saisie...) et y réagit.
</div>
<div style="flex: 1; background: #f0f4f8; padding: 0.8rem 1rem; border-radius: 10px; border-left: 4px solid #b0bec5;">
<b>init()</b> et <b>stop()</b> sont optionnels. On ne les utilise très rarement en TP.
</div>
</div>

---

## 🏗️ En pratique : lancer et tester avec Maven

<!-- _footer: "" -->
<!-- _header: "" -->

Dans le TP, vous n'appelez jamais `java` ni `javac` à la main. Maven s'en charge :

<div style="display: flex; gap: 1.2rem; margin-top: 1rem;">
<div style="flex: 1; background: #2c3e50; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.6rem; margin-bottom: 0.5rem;">🚀 <b>Lancer l'application</b></div>

```
./mvnw javafx:run
```

Lance `App.java` (le menu principal) ou l'exercice en cours.

</div>
<div style="flex: 1; background: #2c3e50; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.6rem; margin-bottom: 0.5rem;">🧪 <b>Lancer les tests</b></div>

```
./mvnw test
```

Exécute tous les tests. Les `@Disabled` sont ignorés.

</div>
</div>

<div style="background: #27ae60; color: white; padding: 0.8rem 1.5rem; border-radius: 10px; margin-top: 1rem; text-align: center;">
💡 Pas besoin de compiler manuellement. <b>Maven fait tout</b> : compilation, dépendances, exécution, tests.
</div>

---

<!-- _class: lead -->

# Partie 3 - Construire une graphe de scène

---

## 🏗️ Un arbre de nœuds

<!-- _footer: "" -->
<!-- _header: "" -->

Le **graphe de scène** (scene graph) est la structure de données centrale de JavaFX. C'est un arbre où chaque nœud est un élément graphique :

```mermaid
graph TD
    SC["Scene"] --> BP["BorderPane"]
    BP --> MB["MenuBar (top)"]
    BP --> GP["GridPane (center)"]
    BP --> HB["HBox (bottom)"]
    GP --> L1["Label 'Nom'"]
    GP --> TF1["TextField"]
    HB --> B1["Button 'OK'"]
    HB --> B2["Button 'Annuler'"]

    style SC fill:#7bb563,color:white
    style BP fill:#e8a838,color:white
    style MB fill:#b0bec5,color:#333
    style GP fill:#b0bec5,color:#333
    style HB fill:#b0bec5,color:#333
```

**Règle** : un nœud ne peut avoir **qu'un seul parent**. Pas de cycle, pas de partage.

---

## 🏗️ Trois familles de nœuds

<!-- _footer: "" -->
<!-- _header: "" -->

<div style="display: flex; gap: 1.2rem; margin-top: 1rem;">
<div style="flex: 1; background: #e8a838; color: white; padding: 1.2rem; border-radius: 12px;">
<div style="font-size: 2rem; margin-bottom: 0.3rem;">📦 <b>Pane</b></div>
<div style="opacity: 0.9;">Organiser la mise en page</div>
<div style="margin-top: 0.8rem; display: flex; flex-wrap: wrap; gap: 0.3rem;">
<code style="background: rgba(255,255,255,0.2); padding: 0.2rem 0.5rem; border-radius: 4px;">BorderPane</code>
<code style="background: rgba(255,255,255,0.2); padding: 0.2rem 0.5rem; border-radius: 4px;">VBox</code>
<code style="background: rgba(255,255,255,0.2); padding: 0.2rem 0.5rem; border-radius: 4px;">HBox</code>
<code style="background: rgba(255,255,255,0.2); padding: 0.2rem 0.5rem; border-radius: 4px;">GridPane</code>
</div>
</div>
<div style="flex: 1; background: #e74c3c; color: white; padding: 1.2rem; border-radius: 12px;">
<div style="font-size: 2rem; margin-bottom: 0.3rem;">🔘 <b>Control</b></div>
<div style="opacity: 0.9;">Interagir avec l'utilisateur</div>
<div style="margin-top: 0.8rem; display: flex; flex-wrap: wrap; gap: 0.3rem;">
<code style="background: rgba(255,255,255,0.2); padding: 0.2rem 0.5rem; border-radius: 4px;">Button</code>
<code style="background: rgba(255,255,255,0.2); padding: 0.2rem 0.5rem; border-radius: 4px;">Label</code>
<code style="background: rgba(255,255,255,0.2); padding: 0.2rem 0.5rem; border-radius: 4px;">TextField</code>
<code style="background: rgba(255,255,255,0.2); padding: 0.2rem 0.5rem; border-radius: 4px;">Slider</code>
</div>
</div>
<div style="flex: 1; background: #c0392b; color: white; padding: 1.2rem; border-radius: 12px;">
<div style="font-size: 2rem; margin-bottom: 0.3rem;">⭕ <b>Shape</b></div>
<div style="opacity: 0.9;">Dessiner des formes</div>
<div style="margin-top: 0.8rem; display: flex; flex-wrap: wrap; gap: 0.3rem;">
<code style="background: rgba(255,255,255,0.2); padding: 0.2rem 0.5rem; border-radius: 4px;">Circle</code>
<code style="background: rgba(255,255,255,0.2); padding: 0.2rem 0.5rem; border-radius: 4px;">Rectangle</code>
<code style="background: rgba(255,255,255,0.2); padding: 0.2rem 0.5rem; border-radius: 4px;">Line</code>
</div>
</div>
</div>

<div style="display: flex; gap: 1.5rem; margin-top: 1.5rem; font-size: 1.6rem;">
<div style="flex: 1; background: #f0f4f8; padding: 0.8rem 1rem; border-radius: 10px; border-left: 4px solid #e8a838;">
Les conteneurs <b>contiennent</b> d'autres nœuds (y compris d'autres conteneurs).
</div>
<div style="flex: 1; background: #f0f4f8; padding: 0.8rem 1rem; border-radius: 10px; border-left: 4px solid #e74c3c;">
Les contrôles et formes sont des <b>feuilles</b> de l'arbre (pas d'enfants).
</div>
</div>

---

## 🏗️ La hiérarchie des classes JavaFX

<!-- _footer: "" -->
<!-- _header: "" -->

<p style="font-size: 1.5rem;padding:0;margin:0;">Toutes les classes du graphe de scène héritent de <code>Node</code> :</p>

```plantuml
@startuml
skinparam backgroundColor transparent
skinparam defaultFontSize 14
skinparam classAttributeIconSize 0
skinparam classFontStyle bold
skinparam shadowing false
skinparam roundCorner 10

skinparam class {
    BorderColor #888
    FontColor white
}

abstract class Node #7f8c8d

abstract class Parent #34495e
class ImageView #1a5276

abstract class Shape #c0392b
abstract class Region #b7950b
class Group #6c3483

abstract class Control #e74c3c
abstract class Pane #e8a838

class Circle #c0392b
class Rectangle #c0392b
class Line #c0392b

class Button #e74c3c
class Label #8e44ad
class TextField #27ae60
class Slider #c0392b
class CheckBox #00838f

class VBox #e8a838
class HBox #e8a838
class BorderPane #e8a838
class GridPane #e8a838

Node <|-- Parent
Node <|-- Shape
Node <|-- ImageView

Parent <|-- Region
Parent <|-- Group

Region <|-- Control
Region <|-- Pane

Shape <|-- Circle
Shape <|-- Rectangle
Shape <|-- Line

Control <|-- Button
Control <|-- Label
Control <|-- TextField
Control <|-- Slider
Control <|-- CheckBox

Pane <|-- VBox
Pane <|-- HBox
Pane <|-- BorderPane
Pane <|-- GridPane
@enduml
```

---

## 🏗️ BorderPane - zones distinctes

Divise l'espace en **5 zones** nommées. Idéal pour les applications classiques (menu en haut, contenu au centre, barre d'état en bas).

<div style="display: flex; gap: 2rem; margin-top: 0.5rem; align-items: center;">
<div style="flex: 1;">

```java
BorderPane root = new BorderPane();
root.setTop(menuBar);
root.setCenter(contenu);
root.setBottom(barreEtat);
```

Chaque zone est **optionnelle**. Le `center` prend tout l'espace restant.

</div>
<div style="flex: 1;">

![Les 5 zones du BorderPane](assets/borderpane-schema.svg)

</div>
</div>

---

## 🏗️ VBox et HBox - empiler ou aligner

Les deux conteneurs les plus simples : l'un empile **verticalement**, l'autre aligne **horizontalement**.

<div style="display: flex; gap: 2rem; margin-top: 0.5rem;">
<div style="flex: 1;">

**VBox** - empilement vertical :

```java
VBox vbox = new VBox(10); // 10px d'espacement
vbox.getChildren().addAll(
    label, textField, button
);
```

<div style="display: flex; flex-direction: column; gap: 0.4rem; margin-top: 0.5rem;">
<div style="background: #8e44ad; color: white; padding: 0.3rem 2rem; border-radius: 4px; text-align: center;">🏷️ Label</div>
<div style="background: #27ae60; color: white; padding: 0.3rem 2rem; border-radius: 4px; text-align: center;">📝 TextField</div>
<div style="background: #e74c3c; color: white; padding: 0.3rem 2rem; border-radius: 4px; text-align: center;">🔘 Button</div>
</div>

</div>
<div style="flex: 1;">

**HBox** - alignement horizontal :

```java
HBox hbox = new HBox(10);
hbox.getChildren().addAll(
    bouton1, bouton2, bouton3
);
```

<div style="display: flex; gap: 0.4rem; margin-top: 0.5rem;">
<div style="background: #e74c3c; color: white; padding: 0.3rem 1.2rem; border-radius: 4px;">🔘 Btn 1</div>
<div style="background: #e74c3c; color: white; padding: 0.3rem 1.2rem; border-radius: 4px;">🔘 Btn 2</div>
<div style="background: #e74c3c; color: white; padding: 0.3rem 1.2rem; border-radius: 4px;">🔘 Btn 3</div>
</div>

</div>
</div>

---

## 🏗️ GridPane - grille alignée

Organise les enfants dans une **grille** avec des lignes et colonnes alignées. Idéal pour les **formulaires**.

<div style="display: flex; gap: 2rem; margin-top: 0.5rem;">
<div style="flex: 1;">

```java
GridPane grid = new GridPane();
grid.setHgap(10);
grid.setVgap(10);

// add(node, colonne, ligne)
grid.add(new Label("Nom :"),   0, 0);
grid.add(new TextField(),      1, 0);
grid.add(new Label("Email :"), 0, 1);
grid.add(new TextField(),      1, 1);
```

</div>
<div style="flex: 1;">

<div style="display: grid; grid-template-columns: auto 1fr; gap: 0.5rem; margin-top: 1rem;">
<div style="background: #8e44ad; color: white; padding: 0.4rem 0.8rem; border-radius: 4px; text-align: right;">🏷️ Nom :</div>
<div style="background: #27ae60; color: white; padding: 0.4rem 0.8rem; border-radius: 4px;">📝 TextField</div>
<div style="background: #8e44ad; color: white; padding: 0.4rem 0.8rem; border-radius: 4px; text-align: right;">🏷️ Email :</div>
<div style="background: #27ae60; color: white; padding: 0.4rem 0.8rem; border-radius: 4px;">📝 TextField</div>
</div>

<p style="font-size: 0.8rem; color: #999; margin-top: 0.5rem;">colonne 0 (Label) / colonne 1 (TextField)</p>

</div>
</div>

---

## 🏗️ FlowPane - flux libre

Les enfants s'enchainent et **passent à la ligne** automatiquement quand il n'y a plus de place, comme du texte.

<div style="display: flex; gap: 2rem; margin-top: 0.5rem;">
<div style="flex: 1;">

```java
FlowPane flow = new FlowPane();
flow.setHgap(10);
flow.setVgap(10);
flow.getChildren().addAll(
    new Button("Copier"),
    new Button("Coller"),
    new Button("Couper"),
    new Button("Annuler"),
    new Button("Refaire"),
    new Button("Chercher")
);
```

</div>

<div style="flex: 1;">
<div style="border: 2px dashed #e8a838; border-radius: 8px; padding: 0.8rem; margin-top: 0; max-width: 380px; background: rgba(232,168,56,0.08);">
<div style="display: flex; flex-wrap: wrap; gap: 0.5rem;">
<div style="background: #e74c3c; color: white; padding: 0.4rem 1.2rem; border-radius: 4px;">🔘 Copier</div>
<div style="background: #e74c3c; color: white; padding: 0.4rem 1.2rem; border-radius: 4px;">🔘 Coller</div>
<div style="background: #e74c3c; color: white; padding: 0.4rem 1.2rem; border-radius: 4px;">🔘 Couper</div>
<div style="background: #e74c3c; color: white; padding: 0.4rem 1.2rem; border-radius: 4px;">🔘 Annuler</div>
<div style="background: #e74c3c; color: white; padding: 0.4rem 1.2rem; border-radius: 4px;">🔘 Refaire</div>
<div style="background: #e74c3c; color: white; padding: 0.4rem 1.2rem; border-radius: 4px;">🔘 Chercher</div>
</div>
</div>

<p style="font-size: 0.8rem; color: #999; margin-top: 0.3rem;">↑ le cadre montre la largeur du FlowPane - les boutons passent à la ligne quand ils ne rentrent plus</p>

</div>
</div>

---

## 🏗️ Choisir le bon conteneur

<!-- _footer: "" -->
<!-- _header: "" -->

<p style="font-size: 1.5rem;padding:0;margin:0;">
La question n'est pas "quel conteneur connaissez-vous ?" mais <b>"quel problème de mise en page avez-vous ?"</b>
</p>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 0.8rem; margin-top: 0.8rem;font-size: 1.5rem;">
<div style="background: #e8a838; color: white; padding: 0.8rem 1rem; border-radius: 10px;">
<div style="font-size: 1.2rem;"><b>🗺️ BorderPane</b></div>
<div style="opacity: 0.9; margin-top: 0.3rem;">Zones distinctes : top / left / <b>center</b> / right / bottom</div>
</div>
<div style="background: #e8a838; color: white; padding: 0.8rem 1rem; border-radius: 10px;">
<div style="font-size: 1.2rem;"><b>🔲 GridPane</b></div>
<div style="opacity: 0.9; margin-top: 0.3rem;">Grille avec alignement : lignes × colonnes</div>
</div>
<div style="background: #e8a838; color: white; padding: 0.8rem 1rem; border-radius: 10px;">
<div style="font-size: 1.2rem;">↕ <b>VBox</b></div>
<div style="opacity: 0.9; margin-top: 0.3rem;">Empiler les enfants verticalement</div>
</div>
<div style="background: #e8a838; color: white; padding: 0.8rem 1rem; border-radius: 10px;">
<div style="font-size: 1.2rem;">↔ <b>HBox</b></div>
<div style="opacity: 0.9; margin-top: 0.3rem;">Aligner les enfants horizontalement</div>
</div>
<div style="background: #e8a838; color: white; padding: 0.8rem 1rem; border-radius: 10px; grid-column: span 2;">
<div style="font-size: 1.2rem;">🔄 <b>FlowPane</b></div>
<div style="opacity: 0.9; margin-top: 0.3rem;">Flux libre avec retour à la ligne automatique (comme du texte)</div>
</div>
</div>

<div style="background: #2c3e50; color: white; padding: 0.6rem 1.5rem; border-radius: 10px; margin-top: 0.8rem; text-align: center; font-size: 1.5rem;">
🧠 <b>Principe de proximité</b> : les éléments proches sont perçus comme liés. Le choix du conteneur influence la perception de l'utilisateur.
</div>

---

## 🏗️ Exemple : décomposer une interface

Comment découper cette maquette en conteneurs de haut niveau ?

<div style="display: flex; gap: 2rem; margin-top: 0.5rem;">
<div style="flex: 1;">

![w:500](assets/maquette-formulaire.svg)

</div>
<div style="flex: 1;">

<div style="margin-top: 1rem;">

🗺️ **BorderPane** (3 zones) :
- `setTop()` → 📋 MenuBar
- `setCenter()` → 🔲 GridPane
- `setBottom()` → ↔ HBox

</div>
</div>
</div>

<div style="background: #4a90d9; color: white; padding: 0.6rem 1rem; border-radius: 10px; margin-top: 1.5rem; text-align: center; font-size: 1.5rem;">
🎯 C'est exactement ce que vous ferez dans l'<b>exercice 4 du TP1</b>.
</div>

---

## 🧠 Principes de perception visuelle (Gestalt)

<!-- _footer: "" -->
<!-- _header: "" -->

La **Gestalt** est un courant de psychologie de la perception (Allemagne, 1920). Il décrit comment l'œil humain **organise spontanément** ce qu'il voit.

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1rem; margin-top: 1rem;">
<div style="background: #8e44ad; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.3rem;">👥 <b>Proximité</b></div>
<div style="opacity: 0.9; margin-top: 0.3rem;">Les éléments proches sont perçus comme un <b>groupe</b></div>
</div>
<div style="background: #8e44ad; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.3rem;">📐 <b>Alignement</b></div>
<div style="opacity: 0.9; margin-top: 0.3rem;">Les éléments alignés sont perçus comme <b>ordonnés</b></div>
</div>
<div style="background: #8e44ad; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.3rem;">🔗 <b>Similarité</b></div>
<div style="opacity: 0.9; margin-top: 0.3rem;">Les éléments semblables sont perçus comme <b>liés</b></div>
</div>
<div style="background: #8e44ad; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.3rem;">🔲 <b>Clôture</b></div>
<div style="opacity: 0.9; margin-top: 0.3rem;">L'œil <b>complète</b> les formes ouvertes</div>
</div>
</div>

Ces principes ne sont pas JavaFX-spécifiques : ils s'appliquent à **toute** conception d'interface.

---

## 🧠 Gestalt appliquée aux conteneurs JavaFX

<!-- _footer: "" -->
<!-- _header: "" -->

Chaque principe Gestalt guide le choix du conteneur :

<div style="display: flex; gap: 1.2rem; margin-top: 1rem;">
<div style="flex: 1; background: #f0f4f8; padding: 1rem; border-radius: 10px; border-left: 4px solid #8e44ad;">
<div style="font-weight: bold;">👥 Proximité</div>
<div style="margin-top: 0.3rem;">Regrouper les contrôles liés dans un même conteneur (📦 VBox, ↔ HBox)</div>
</div>
<div style="flex: 1; background: #f0f4f8; padding: 1rem; border-radius: 10px; border-left: 4px solid #8e44ad;">
<div style="font-weight: bold;">📐 Alignement</div>
<div style="margin-top: 0.3rem;">Utiliser 🔲 GridPane pour aligner labels et champs de formulaire</div>
</div>
</div>

<div style="display: flex; gap: 1.2rem; margin-top: 0.8rem;">
<div style="flex: 1; background: #f0f4f8; padding: 1rem; border-radius: 10px; border-left: 4px solid #8e44ad;">
<div style="font-weight: bold;">🔗 Similarité</div>
<div style="margin-top: 0.3rem;">Donner le même style aux boutons d'action (CSS ou setStyle)</div>
</div>
<div style="flex: 1; background: #f0f4f8; padding: 1rem; border-radius: 10px; border-left: 4px solid #8e44ad;">
<div style="font-weight: bold;">🔲 Clôture</div>
<div style="margin-top: 0.3rem;">Les zones du 🗺️ BorderPane créent des frontières visuelles naturelles</div>
</div>
</div>

<div style="background: #2c3e50; color: white; padding: 0.6rem 1.5rem; border-radius: 10px; margin-top: 1rem; text-align: center; font-size: 1.5rem;">
🧠 L'ergonomie n'est pas une opinion : ce sont des <b>lois de la perception</b> qui guident la conception.
</div>

---

<!-- _class: lead -->

# Partie 4 - Le modèle événementiel

---

## ⚡ Pourquoi des événements ?

Un programme console est **séquentiel** :
```
lire entrée → traiter → afficher résultat → fin
```

Une application graphique est **réactive** :
```
attendre → un événement se produit → réagir → attendre à nouveau
```

L'utilisateur peut cliquer n'importe où, à n'importe quel moment. Le programme doit **réagir**, pas dicter l'ordre des actions.

> C'est un changement de paradigme fondamental par rapport à la programmation que vous avez pratiquée en R1.01 et R2.01.

---

## ⚡ Le pattern Observer

Le modèle événementiel de JavaFX repose sur le **pattern Observer** (Gang of Four, 1994) :

```mermaid
sequenceDiagram
    participant U as 👤 Utilisateur
    participant B as Button (Observable)
    participant H as EventHandler (Observateur)

    Note over B,H: Enregistrement (une seule fois)
    B->>B: setOnAction(handler)

    Note over U,H: À chaque clic
    U->>B: clic
    B->>H: handle(ActionEvent)
    H->>H: exécute la réaction
```

**Principe** : l'objet observé (le bouton) **ne sait pas** ce que fera l'observateur (le handler). Il se contente de le notifier. C'est une **séparation des préoccupations**.

---

## ⚡ EventHandler : 3 styles d'écriture

Java offre 3 façons d'écrire un écouteur. Elles produisent exactement le même résultat :

### Style 1 - Classe nommée (historique, avant Java 8)
```java
bouton.setOnAction(new MonHandler(compteur));
```

### Style 2 - Classe anonyme (intermédiaire)
```java
bouton.setOnAction(new EventHandler<ActionEvent>() {
    @Override
    public void handle(ActionEvent e) { compteur.incrementer(); }
});
```

### Style 3 - Lambda (moderne, recommandé)
```java
bouton.setOnAction(e -> compteur.incrementer());
```

> Le style lambda est le plus courant dans du code JavaFX moderne. Vous les pratiquerez tous les trois dans le TP1 (exercice 5).

---

## ⚡ Ce que le modèle événementiel nous apprend

Le pattern Observer illustre un principe fondamental de l'architecture logicielle :

> **Séparation des préoccupations** : chaque composant a une responsabilité unique.

- Le **bouton** sait qu'il a été cliqué → il notifie
- Le **handler** sait quoi faire → il agit
- Aucun des deux ne connaît les détails de l'autre

Ce principe sera étendu dans les CM suivants :
- **CM2** : les bindings poussent ce principe plus loin (synchronisation automatique sans écrire de handler)
- **CM3** : MVC/MVVM formalisent la séparation en couches (View, Controller, Model)

---

<!-- _class: lead -->

# Les contrôles : le vocabulaire de l'interaction

---

## 🔘 Les contrôles JavaFX

Maintenant que vous savez **comment réagir** à un événement, voici les composants qui en **produisent**.

Les contrôles sont organisés par **type d'interaction** :

<div style="display: flex; gap: 1.2rem; margin-top: 1.5rem;">
<div style="flex: 1; background: #8e44ad; color: white; padding: 1.2rem; border-radius: 12px; text-align: center;">
<div style="font-size: 2.5rem;">👁️</div>
<div style="font-weight: bold; font-size: 1.3rem; margin-top: 0.3rem;">Afficher</div>
<div style="opacity: 0.9; margin-top: 0.3rem;">Montrer de l'information</div>
</div>
<div style="flex: 1; background: #e74c3c; color: white; padding: 1.2rem; border-radius: 12px; text-align: center;">
<div style="font-size: 2.5rem;">👆</div>
<div style="font-weight: bold; font-size: 1.3rem; margin-top: 0.3rem;">Agir</div>
<div style="opacity: 0.9; margin-top: 0.3rem;">Déclencher une action</div>
</div>
<div style="flex: 1; background: #27ae60; color: white; padding: 1.2rem; border-radius: 12px; text-align: center;">
<div style="font-size: 2.5rem;">✍️</div>
<div style="font-weight: bold; font-size: 1.3rem; margin-top: 0.3rem;">Saisir</div>
<div style="opacity: 0.9; margin-top: 0.3rem;">Recueillir une entrée</div>
</div>
</div>

---

## 🔘 Afficher : Label et ImageView

<div style="display: flex; gap: 2rem; margin-top: 1rem;">
<div style="flex: 1;">

**🏷️ Label** - texte statique

```java
Label titre = new Label("Bienvenue !");
titre.setStyle("-fx-font-size: 18px;");
```

Affiche du texte non modifiable. Le composant le plus simple et le plus utilisé.

</div>
<div style="flex: 1;">

**🌄 ImageView** - afficher une image

```java
Image img = new Image("photo.png");
ImageView vue = new ImageView(img);
vue.setFitWidth(200);
vue.setPreserveRatio(true);
```

Affiche une image avec contrôle de la taille.

</div>
</div>

---

## 🔘 Agir : Button, CheckBox, MenuBar

<div style="display: flex; gap: 1.5rem; margin-top: 1rem;">
<div style="flex: 1;">

**🔘 Button** - déclencher une action

```java
Button btn = new Button("Valider");
btn.setOnAction(e -> valider());
```

L'événement `ActionEvent` est émis à chaque clic.

</div>
<div style="flex: 1;">

**☑️ CheckBox** - choix binaire

```java
CheckBox cb = new CheckBox("J'accepte");
cb.setOnAction(e ->
    System.out.println(cb.isSelected())
);
```

</div>
<div style="flex: 1;">

**📋 MenuBar** - barre de menus

```java
MenuBar bar = new MenuBar();
Menu fichier = new Menu("Fichier");
bar.getMenus().add(fichier);
```

</div>
</div>

---

## 🔘 Saisir : TextField, Slider

<div style="display: flex; gap: 2rem; margin-top: 1rem;">
<div style="flex: 1;">

**📝 TextField** - saisie de texte

```java
TextField champ = new TextField();
champ.setPromptText("Votre nom...");
String texte = champ.getText();
```

L'utilisateur tape du texte. On récupère la valeur avec `getText()`.

</div>
<div style="flex: 1;">

**🎚️ Slider** - valeur numérique

```java
Slider slider = new Slider(0, 100, 50);
// min, max, valeur initiale
double val = slider.getValue();
```

L'utilisateur fait glisser un curseur. On récupère la valeur avec `getValue()`.

</div>
</div>

<div style="background: #2c3e50; color: white; padding: 0.6rem 1.5rem; border-radius: 10px; margin-top: 1.5rem; text-align: center; font-size: 0.9rem;">
💡 La liste complète est dans la <a href="https://openjfx.io/javadoc/25/javafx.controls/javafx/scene/control/package-summary.html" style="color: #4a90d9;">Javadoc javafx.scene.control</a>. Vous en découvrirez d'autres au fil des TP.
</div>

---

<!-- _class: lead -->

# Synthèse

---

## Ce que nous avons vu

| Concept | Retenir |
|---|---|
| **IHM** | Point de contact humain-logiciel. Pas juste du code, de la conception. |
| **Stage / Scene / Node** | Métaphore du théâtre. L'affichage est un arbre de nœuds. |
| **Conteneurs** | Choisir le layout selon le besoin, pas selon l'habitude. |
| **Gestalt** | Proximité et alignement guident la perception de l'utilisateur. |
| **Événements** | Les IHM sont réactives. Le pattern Observer sépare "quoi observer" de "comment réagir". |
| **Nielsen #1 et #2** | Visibilité de l'état + correspondance avec le monde réel. |

---

## Lien avec le TP1

Le TP1 met en pratique tout ce CM en **6 exercices** progressifs :

| Exercice | Concept CM1 |
|---|---|
| 1 - Première fenêtre | Stage, `show()` |
| 2 - Stage personnalisé | Propriétés du Stage |
| 3 - Première Scene | Scene, BorderPane, Label |
| 4 - Mise en page | Décomposition en conteneurs (Gestalt) |
| 5 - Événements bouton | Pattern Observer, 3 styles de handler |
| 6 - Palette de couleurs | Synthèse : layouts + événements + feedback |

Le TP utilise le **TDD baby steps** : les tests sont livrés désactivés, vous les activez un par un. C'est une méthode professionnelle (Kent Beck, XP).

---

## Pour aller plus loin

- [JavaFX 25 API Documentation](https://openjfx.io/javadoc/25/)
- [Jakob Nielsen - 10 Usability Heuristics](https://www.nngroup.com/articles/ten-usability-heuristics/)
- [Gestalt Principles in UI Design](https://www.nngroup.com/articles/gestalt-proximity/)
- [Design of Everyday Things - Don Norman](https://www.nngroup.com/books/design-everyday-things-revised/) (le livre de référence)

**Prochain CM** : propriétés, bindings et le modèle événementiel complet. Comment synchroniser automatiquement l'interface avec les données, sans écrire un seul EventHandler.
