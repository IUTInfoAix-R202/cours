---
marp: true
theme: default
paginate: true
header: "R2.02 - Développement d'applications avec IHM"
footer: "IUT Aix-Marseille - BUT Informatique 1A"
---

<!-- _class: lead -->
<!-- _header: "" -->
<!-- _footer: "" -->
<!-- _paginate: false -->

<style scoped>
section {
  background-image: url('assets/logo-amu.png');
  background-repeat: no-repeat;
  background-position: bottom 40px center;
  background-size: 380px;
}
</style>

# Propriétés, bindings et contrôles

**R2.02 - Développement d'applications avec IHM**

---

## Où en sommes-nous ?

<!-- _header: "" -->
<!-- _footer: "" -->

<div style="display: flex; gap: 0.8rem; margin-top: 0.5rem; margin-bottom: 0.5rem; text-align: center; font-size: 2.5rem; line-height: 1;">
<div style="flex: 1;">&nbsp;</div>
<div style="flex: 1;">👇</div>
<div style="flex: 1;">&nbsp;</div>
<div style="flex: 1;">&nbsp;</div>
</div>

<div style="display: flex; gap: 0.8rem;">
<div style="background: #4a90d9; color: white; padding: 1.2rem; border-radius: 12px 12px 0 0; flex: 1; text-align: center;">
<div style="font-size: 1.8rem; font-weight: bold;">CM1 ✅</div>
<div style="margin-top: 0.3rem;">Fondations IHM + JavaFX</div>
</div>
<div style="background: #e8a838; color: white; padding: 1.2rem; border-radius: 12px 12px 0 0; flex: 1; text-align: center; box-shadow: 0 4px 12px rgba(232,168,56,0.4);">
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
TP1 ✅
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

<div style="display: flex; gap: 0.8rem; margin-top: 0.5rem; text-align: center; font-size: 2.5rem; line-height: 1;">
<div style="flex: 1;">&nbsp;</div>
<div style="flex: 1;">👆</div>
<div style="flex: 1;">&nbsp;</div>
<div style="flex: 1;">&nbsp;</div>
</div>

---

## Rappel CM1 - Ce que vous savez déjà

<!-- _header: "" -->
<!-- _footer: "" -->

<div style="display: grid; grid-template-columns: 1fr 1fr 1fr; gap: 1.2rem; margin-top: 1.5rem;">
<div style="background: #4a90d9; color: white; padding: 1.2rem; border-radius: 10px;">
<div style="font-size: 1.7rem; margin-bottom: 0.5rem; font-weight: bold;">🎭 Le graphe de scène</div>
<div style="margin-top: 0.5rem; font-size: 1.5rem; opacity: 0.9;">
<b>Stage</b> = la fenêtre, <b>Scene</b> = le contenu, <b>Node</b> = chaque élément.<br/>
L'arbre de nœuds organise l'interface en hiérarchie parent/enfant.
</div>
</div>
<div style="background: #e8a838; color: white; padding: 1.2rem; border-radius: 10px;">
<div style="font-size: 1.7rem; margin-bottom: 0.5rem; font-weight: bold;">📦 Les conteneurs</div>
<div style="margin-top: 0.5rem; font-size: 1.5rem; opacity: 0.9;">
<b>BorderPane</b> (5 zones), <b>VBox/HBox</b> (empilements), <b>GridPane</b> (grille).<br/>
Les principes Gestalt guident le choix du conteneur.
</div>
</div>
<div style="background: #27ae60; color: white; padding: 1.2rem; border-radius: 10px;">
<div style="font-size: 1.7rem; margin-bottom: 0.5rem; font-weight: bold;">⚡ Les événements</div>
<div style="margin-top: 0.5rem; font-size: 1.5rem; opacity: 0.9;">
Le <b>pattern Observer</b> : le bouton notifie, le handler réagit.<br/>
3 styles d'écriture : classe nommée, anonyme, lambda.
</div>
</div>
</div>

<div style="background: #2c3e50; color: white; padding: 1.2rem 2rem; border-radius: 10px; margin-top: 1.5rem; font-size: 1.7rem; text-align: center;">
Aujourd'hui : rendre l'interface <b>réactive</b> sans écrire d'EventHandler pour chaque mise à jour.
</div>

---

<!-- _class: lead -->
<!-- _header: "" -->
<!-- _footer: "" -->

# Partie 1 - Le problème

---

## TP1 : la Palette, version naïve ❌

<!-- _header: "" -->
<!-- _footer: "" -->

<style scoped>
pre { font-size: 0.78rem; }
</style>

<p style="font-size:1.6rem">
Dans `Palette.java` (TP1, exercice 6), mettre à jour le label demande du code répété à chaque handler :
</p>

```java
int[] compteurs = {0, 0, 0};

btnRouge.setOnAction(e -> {
    compteurs[0]++;
    zone.setStyle("-fx-background-color: red;");
    labelCompteurs.setText(
        "Rouge: " + compteurs[0]
        + "  Vert: " + compteurs[1]
        + "  Bleu: " + compteurs[2]);
}); // même code dans btnVert et btnBleu...
```

<div style="background: #c0392b; color: white; padding: 0.8rem 1.5rem; border-radius: 10px; margin-top: 0.8rem;">
⚠️ <b>3 problèmes</b> : <code>setText()</code> copié-collé 3 fois - ajouter un bouton = oublier une mise à jour - le label n'est jamais la "source de vérité"
</div>

---

## TP2 : la PaletteReactive, version bindings ✅

<!-- _header: "" -->
<!-- _footer: "" -->

<style scoped>
pre { font-size: 0.78rem; }
</style>

<p style="font-size:1.6rem">
Dans <code>PaletteReactive.java</code> (TP2, exercice 3), un seul binding remplace les 3 <code>setText()</code> :
</p>

```java
StringExpression texte = Bindings.concat(
    "Rouge: ", btnRouge.nbClicsProperty().asString(),
    "  Vert: ", btnVert.nbClicsProperty().asString(),
    "  Bleu: ", btnBleu.nbClicsProperty().asString()
    );

labelCompteurs.textProperty().bind(texte);
```

<div style="background: #1e8449; color: white; padding: 0.8rem 1.5rem; border-radius: 10px; margin-top: 0.8rem;">
✅ <b>Résultat</b> :<br/>
&bull; Le label se met à jour <b>automatiquement</b> à chaque clic<br/>
&bull; Aucun <code>setText()</code> dans les handlers<br/>
&bull; Ajouter un bouton = allonger la concaténation
</div>

---

## La puissance des bindings - demo

Sans écrire un seul EventHandler, on peut synchroniser :

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.5rem; margin-top: 1rem;">
<div style="background: #f0f4f8; padding: 1.2rem; border-radius: 10px; border-left: 4px solid #4a90d9;">
<div style="font-weight: bold; margin-bottom: 0.5rem; font-size: 1.3rem;">⚙️ Avant (TP1)</div>
<div>Slider → clic → EventHandler → lire valeur → appeler <code>setText()</code> → appeler <code>setStyle()</code> → ...</div>
<div style="margin-top: 0.5rem; color: #e74c3c; font-weight: bold; font-size: 1.3rem;">5 lignes de code impératif</div>
</div>
<div style="background: #f0fff4; padding: 1.2rem; border-radius: 10px; border-left: 4px solid #27ae60;">
<div style="font-weight: bold; margin-bottom: 0.5rem; font-size: 1.3rem;">✅ Après (TP2)</div>
<div><code>label.textProperty().bind(<br/>  slider.valueProperty().asString())</code></div>
<div style="margin-top: 0.5rem; color: #27ae60; font-weight: bold; font-size: 1.3rem;">1 ligne déclarative</div>
</div>
</div>

<div style="background: #2c3e50; color: white; padding: 1rem 2rem; border-radius: 10px; margin-top: 1.5rem; text-align: center;">
Vous pratiquerez cette transformation dans les exercices 2 à 5 du TP2.
</div>

---

<!-- _transition: fade -->

## La liaison de données - approche impérative ❌

<style scoped>h2 { view-transition-name: titre-liaison; }</style>

<svg viewBox="0 0 700 300" xmlns="http://www.w3.org/2000/svg" style="width:100%; max-width:800px; display:block; margin:0.5rem auto;">
  <defs>
    <marker id="a1" markerWidth="8" markerHeight="6" refX="8" refY="3" orient="auto"><path d="M0,0 L8,3 L0,6" fill="#555"/></marker>
  </defs>
  <rect x="5" y="5" width="690" height="290" rx="12" fill="#fdf2f2" stroke="#e74c3c" stroke-width="2"/>
  <text x="350" y="38" text-anchor="middle" font-family="Arial" font-size="18" font-weight="bold" fill="#c0392b">❌ Approche impérative (TP1)</text>
  <!-- Nœuds -->
  <rect x="40" y="120" width="120" height="55" rx="10" fill="#f5f5f5" stroke="#ccc" stroke-width="1.5"/>
  <text x="100" y="153" text-anchor="middle" font-family="Arial" font-size="15" fill="#333">👤 Utilisateur</text>
  <rect x="210" y="120" width="110" height="55" rx="10" fill="#e74c3c"/>
  <text x="265" y="153" text-anchor="middle" font-family="Arial" font-size="15" fill="white">🔘 Button</text>
  <rect x="370" y="105" width="130" height="85" rx="10" fill="#c0392b"/>
  <text x="435" y="138" text-anchor="middle" font-family="Arial" font-size="15" fill="white">📝 Handler</text>
  <text x="435" y="160" text-anchor="middle" font-family="Arial" font-size="12" fill="rgba(255,255,255,0.8)">setText()</text>
  <text x="435" y="178" text-anchor="middle" font-family="Arial" font-size="12" fill="rgba(255,255,255,0.8)">setStyle()</text>
  <rect x="560" y="75" width="80" height="45" rx="10" fill="#8e44ad"/>
  <text x="600" y="103" text-anchor="middle" font-family="Arial" font-size="14" fill="white">🏷️ Label</text>
  <rect x="560" y="175" width="80" height="45" rx="10" fill="#8e44ad"/>
  <text x="600" y="203" text-anchor="middle" font-family="Arial" font-size="14" fill="white">📦 Pane</text>
  <!-- Flèches -->
  <line x1="160" y1="147" x2="208" y2="147" stroke="#555" stroke-width="2" marker-end="url(#a1)"/>
  <text x="184" y="140" text-anchor="middle" font-family="Arial" font-size="11" fill="#555">clic</text>
  <line x1="320" y1="147" x2="368" y2="147" stroke="#555" stroke-width="2" marker-end="url(#a1)"/>
  <text x="344" y="140" text-anchor="middle" font-family="Arial" font-size="10" fill="#555">EventHandler</text>
  <line x1="500" y1="125" x2="558" y2="100" stroke="#555" stroke-width="2" marker-end="url(#a1)"/>
  <text x="535" y="105" font-family="Arial" font-size="10" fill="#555">setText()</text>
  <line x1="500" y1="170" x2="558" y2="195" stroke="#555" stroke-width="2" marker-end="url(#a1)"/>
  <text x="535" y="195" font-family="Arial" font-size="10" fill="#555">setStyle()</text>
  <!-- Bilan -->
  <text x="350" y="270" text-anchor="middle" font-family="Arial" font-size="16" font-weight="bold" fill="#c0392b">Le handler fait TOUT manuellement</text>
</svg>

---

<!-- _transition: fade -->

## La liaison de données - approche déclarative ✅

<style scoped>h2 { view-transition-name: titre-liaison; }</style>

<svg viewBox="0 0 700 300" xmlns="http://www.w3.org/2000/svg" style="width:100%; max-width:800px; display:block; margin:0.5rem auto;">
  <defs>
    <marker id="a2" markerWidth="8" markerHeight="6" refX="8" refY="3" orient="auto"><path d="M0,0 L8,3 L0,6" fill="#555"/></marker>
    <marker id="a2g" markerWidth="8" markerHeight="6" refX="8" refY="3" orient="auto"><path d="M0,0 L8,3 L0,6" fill="#27ae60"/></marker>
  </defs>
  <rect x="5" y="5" width="690" height="290" rx="12" fill="#f0faf0" stroke="#27ae60" stroke-width="2"/>
  <text x="350" y="38" text-anchor="middle" font-family="Arial" font-size="18" font-weight="bold" fill="#1e8449">✅ Approche déclarative (TP2)</text>
  <!-- Nœuds -->
  <rect x="40" y="120" width="120" height="55" rx="10" fill="#f5f5f5" stroke="#ccc" stroke-width="1.5"/>
  <text x="100" y="153" text-anchor="middle" font-family="Arial" font-size="15" fill="#333">👤 Utilisateur</text>
  <rect x="210" y="120" width="110" height="55" rx="10" fill="#e74c3c"/>
  <text x="265" y="153" text-anchor="middle" font-family="Arial" font-size="15" fill="white">🔘 Button</text>
  <rect x="370" y="110" width="130" height="75" rx="10" fill="#e8a838"/>
  <text x="435" y="143" text-anchor="middle" font-family="Arial" font-size="15" fill="white">⚡ Property</text>
  <text x="435" y="165" text-anchor="middle" font-family="Arial" font-size="12" fill="rgba(255,255,255,0.8)">nbClics</text>
  <rect x="560" y="75" width="80" height="45" rx="10" fill="#8e44ad"/>
  <text x="600" y="103" text-anchor="middle" font-family="Arial" font-size="14" fill="white">🏷️ Label</text>
  <rect x="560" y="175" width="80" height="45" rx="10" fill="#8e44ad"/>
  <text x="600" y="203" text-anchor="middle" font-family="Arial" font-size="14" fill="white">📦 Pane</text>
  <!-- Flèches pleines -->
  <line x1="160" y1="147" x2="208" y2="147" stroke="#555" stroke-width="2" marker-end="url(#a2)"/>
  <text x="184" y="140" text-anchor="middle" font-family="Arial" font-size="11" fill="#555">clic</text>
  <line x1="320" y1="147" x2="368" y2="147" stroke="#555" stroke-width="2" marker-end="url(#a2)"/>
  <text x="344" y="140" text-anchor="middle" font-family="Arial" font-size="11" fill="#555">+1</text>
  <!-- Flèches pointillées (bind) -->
  <line x1="500" y1="125" x2="558" y2="100" stroke="#27ae60" stroke-width="2.5" stroke-dasharray="6,4" marker-end="url(#a2g)"/>
  <text x="535" y="105" font-family="Arial" font-size="11" fill="#27ae60" font-weight="bold">bind</text>
  <line x1="500" y1="170" x2="558" y2="195" stroke="#27ae60" stroke-width="2.5" stroke-dasharray="6,4" marker-end="url(#a2g)"/>
  <text x="535" y="195" font-family="Arial" font-size="11" fill="#27ae60" font-weight="bold">bind</text>
  <!-- Bilan -->
  <text x="350" y="270" text-anchor="middle" font-family="Arial" font-size="16" font-weight="bold" fill="#1e8449">La propriété notifie AUTOMATIQUEMENT</text>
</svg>

---

<!-- _transition: fade -->

## La liaison de données - comparaison

<style scoped>h2 { view-transition-name: titre-liaison; }</style>

<div style="display: flex; gap: 0.8rem; margin-top: 0.5rem;">

<svg viewBox="0 0 520 230" xmlns="http://www.w3.org/2000/svg" style="flex:1;">
  <defs><marker id="a3" markerWidth="6" markerHeight="5" refX="6" refY="2.5" orient="auto"><path d="M0,0 L6,2.5 L0,5" fill="#555"/></marker></defs>
  <rect x="3" y="3" width="514" height="224" rx="10" fill="#fdf2f2" stroke="#e74c3c" stroke-width="1.5"/>
  <text x="260" y="25" text-anchor="middle" font-family="Arial" font-size="13" font-weight="bold" fill="#c0392b">❌ Impératif (TP1)</text>
  <rect x="20" y="85" width="85" height="40" rx="7" fill="#f5f5f5" stroke="#ccc"/>
  <text x="62" y="110" text-anchor="middle" font-family="Arial" font-size="11" fill="#333">👤 User</text>
  <rect x="135" y="85" width="80" height="40" rx="7" fill="#e74c3c"/>
  <text x="175" y="110" text-anchor="middle" font-family="Arial" font-size="11" fill="white">🔘 Button</text>
  <rect x="245" y="75" width="95" height="60" rx="7" fill="#c0392b"/>
  <text x="292" y="100" text-anchor="middle" font-family="Arial" font-size="11" fill="white">📝 Handler</text>
  <text x="292" y="118" text-anchor="middle" font-family="Arial" font-size="9" fill="rgba(255,255,255,0.7)">setText() / setStyle()</text>
  <rect x="375" y="55" width="60" height="32" rx="7" fill="#8e44ad"/>
  <text x="405" y="76" text-anchor="middle" font-family="Arial" font-size="10" fill="white">Label</text>
  <rect x="375" y="125" width="60" height="32" rx="7" fill="#8e44ad"/>
  <text x="405" y="146" text-anchor="middle" font-family="Arial" font-size="10" fill="white">Pane</text>
  <line x1="105" y1="105" x2="133" y2="105" stroke="#555" stroke-width="1.5" marker-end="url(#a3)"/>
  <line x1="215" y1="105" x2="243" y2="105" stroke="#555" stroke-width="1.5" marker-end="url(#a3)"/>
  <line x1="340" y1="90" x2="373" y2="73" stroke="#555" stroke-width="1.5" marker-end="url(#a3)"/>
  <line x1="340" y1="120" x2="373" y2="138" stroke="#555" stroke-width="1.5" marker-end="url(#a3)"/>
  <text x="260" y="210" text-anchor="middle" font-family="Arial" font-size="12" font-weight="bold" fill="#c0392b">Le handler fait tout</text>
</svg>

<svg viewBox="0 0 520 230" xmlns="http://www.w3.org/2000/svg" style="flex:1;">
  <defs>
    <marker id="a4" markerWidth="6" markerHeight="5" refX="6" refY="2.5" orient="auto"><path d="M0,0 L6,2.5 L0,5" fill="#555"/></marker>
    <marker id="a4g" markerWidth="6" markerHeight="5" refX="6" refY="2.5" orient="auto"><path d="M0,0 L6,2.5 L0,5" fill="#27ae60"/></marker>
  </defs>
  <rect x="3" y="3" width="514" height="224" rx="10" fill="#f0faf0" stroke="#27ae60" stroke-width="1.5"/>
  <text x="260" y="25" text-anchor="middle" font-family="Arial" font-size="13" font-weight="bold" fill="#1e8449">✅ Déclaratif (TP2)</text>
  <rect x="20" y="85" width="85" height="40" rx="7" fill="#f5f5f5" stroke="#ccc"/>
  <text x="62" y="110" text-anchor="middle" font-family="Arial" font-size="11" fill="#333">👤 User</text>
  <rect x="135" y="85" width="80" height="40" rx="7" fill="#e74c3c"/>
  <text x="175" y="110" text-anchor="middle" font-family="Arial" font-size="11" fill="white">🔘 Button</text>
  <rect x="245" y="75" width="95" height="60" rx="7" fill="#e8a838"/>
  <text x="292" y="100" text-anchor="middle" font-family="Arial" font-size="11" fill="white">⚡ Property</text>
  <text x="292" y="118" text-anchor="middle" font-family="Arial" font-size="9" fill="rgba(255,255,255,0.7)">nbClics</text>
  <rect x="375" y="55" width="60" height="32" rx="7" fill="#8e44ad"/>
  <text x="405" y="76" text-anchor="middle" font-family="Arial" font-size="10" fill="white">Label</text>
  <rect x="375" y="125" width="60" height="32" rx="7" fill="#8e44ad"/>
  <text x="405" y="146" text-anchor="middle" font-family="Arial" font-size="10" fill="white">Pane</text>
  <line x1="105" y1="105" x2="133" y2="105" stroke="#555" stroke-width="1.5" marker-end="url(#a4)"/>
  <line x1="215" y1="105" x2="243" y2="105" stroke="#555" stroke-width="1.5" marker-end="url(#a4)"/>
  <line x1="340" y1="90" x2="373" y2="73" stroke="#27ae60" stroke-width="2" stroke-dasharray="5,3" marker-end="url(#a4g)"/>
  <line x1="340" y1="120" x2="373" y2="138" stroke="#27ae60" stroke-width="2" stroke-dasharray="5,3" marker-end="url(#a4g)"/>
  <text x="260" y="210" text-anchor="middle" font-family="Arial" font-size="12" font-weight="bold" fill="#1e8449">La propriété notifie auto.</text>
</svg>

</div>

<div style="background: #2c3e50; color: white; padding: 0.8rem 1.5rem; border-radius: 10px; margin-top: 0.8rem; text-align: center;">
💡 La <b>propriété</b> devient le point central : elle stocke la donnée ET notifie automatiquement tous les composants liés.
</div>

---

<!-- _class: lead -->
<!-- _header: "" -->
<!-- _footer: "" -->

# Partie 2 - ⚡ Modèle événementiel complet

---

## Rappel : les 3 styles d'EventHandler

<style scoped>
pre { font-size: 0.76rem; }
</style>

Trois façons d'écrire le même comportement - revus dans le TP1, exercice 5 :

```java
// Style 1 : classe nommée
class MonEcouteur implements EventHandler<ActionEvent> {
    public void handle(ActionEvent e) { /* ... */ }
}
btn.setOnAction(new MonEcouteur());

// Style 2 : classe anonyme
btn.setOnAction(new EventHandler<ActionEvent>() {
    public void handle(ActionEvent e) { /* ... */ }
});

// Style 3 : lambda (recommandé)
btn.setOnAction(e -> { /* ... */ });
```

Aujourd'hui on va plus loin : **comment les événements se propagent**, et quand utiliser `addEventHandler` vs `addEventFilter`.

---

## La propagation - phase de capture (1/2)

Quand vous cliquez sur un bouton, l'événement **ne naît pas dans le bouton**. Il commence à la racine.

```
Phase de CAPTURE (root → target)
Scene
  └── BorderPane          ← reçoit l'événement en premier
        └── HBox          ← puis HBox
              └── Button  ← enfin le Button (= target)
```

- La racine peut **intercepter** l'événement avant la cible
- Utile pour filtrer ou bloquer certains événements
- Se configure avec `addEventFilter()`

---

## La propagation - phase de bulles (2/2)

Après la phase de capture, l'événement **remonte** vers la racine :

```
Phase de BUBBLING (target → root)
Button  ← traitement ici d'abord
  └── HBox
        └── BorderPane
              └── Scene   ← traitement ici en dernier
```

- La cible (le bouton) est traitée en premier dans cette phase
- Se configure avec `addEventHandler()`
- `setOnAction()` est un raccourci pour `addEventHandler(ActionEvent.ACTION, ...)`

> La plupart du temps vous n'avez pas besoin de gérer la capture. `setOnAction()` suffit.

---

## EventFilter vs EventHandler

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.2rem; margin-top: 1rem;">
<div style="background: #fae5c0; padding: 1.2rem; border-radius: 10px; border-top: 4px solid #e8a838;">
<div style="font-weight: bold; font-size: 1.1rem;">addEventFilter()</div>
<div style="margin-top: 0.5rem; font-size: 0.9rem;">- Phase de capture (descente)<br/>- Enregistré sur un <b>parent</b><br/>- Peut bloquer avant la cible<br/>- Usage : validation globale, log</div>
</div>
<div style="background: #d0e2f3; padding: 1.2rem; border-radius: 10px; border-top: 4px solid #4a90d9;">
<div style="font-weight: bold; font-size: 1.1rem;">addEventHandler()</div>
<div style="margin-top: 0.5rem; font-size: 0.9rem;">- Phase de bulles (remontée)<br/>- Enregistré sur la cible ou un parent<br/>- Traitement normal<br/>- Usage : 99% des cas</div>
</div>
</div>

```java
// Bloquer tous les clics sur un panneau entier
panneau.addEventFilter(MouseEvent.MOUSE_CLICKED, e -> {
    if (condition) e.consume(); // stoppe la propagation
});
```

---

## event.consume() - stopper la propagation

`event.consume()` indique que l'événement a été traité - il ne se propage plus.

```java
bouton.addEventHandler(MouseEvent.MOUSE_CLICKED, e -> {
    if (e.getClickCount() == 2) {
        traiterDoubleClic();
        e.consume(); // empêche le parent de le voir aussi
    }
});
```

**Analogie** : comme un article de journal qui a déjà été lu et archivé - les autres lecteurs ne le verront pas passer.

> Utile quand plusieurs composants parents écoutent le même type d'événement.

---

## Hiérarchie des types d'événement

```
Event
├── InputEvent
│   ├── MouseEvent      (MOUSE_CLICKED, MOUSE_ENTERED, MOUSE_DRAGGED...)
│   ├── KeyEvent        (KEY_PRESSED, KEY_RELEASED, KEY_TYPED)
│   └── TouchEvent
├── ActionEvent         (Button, MenuItem, TextField Enter)
├── WindowEvent         (WINDOW_SHOWN, WINDOW_HIDING...)
└── ScrollEvent
```

Chaque type porte des données spécifiques : `MouseEvent` donne les coordonnées, `KeyEvent` donne le code de touche, etc.

---

## MouseEvent - les événements souris

<style scoped>
pre { font-size: 0.82rem; }
</style>

```java
zone.setOnMouseClicked(e -> {
    System.out.println("Clic en " + e.getX() + ", " + e.getY());
});

zone.setOnMouseEntered(e -> zone.setStyle("-fx-background-color: yellow;"));
zone.setOnMouseExited(e -> zone.setStyle(""));

zone.setOnMouseDragged(e -> {
    cercle.setCenterX(e.getX());
    cercle.setCenterY(e.getY());
});
```

`e.getX()` / `e.getY()` : coordonnées **locales** au noeud.
`e.getSceneX()` / `e.getSceneY()` : coordonnées dans la scène entière.

---

## KeyEvent - les événements clavier

<style scoped>
pre { font-size: 0.82rem; }
</style>

```java
textField.setOnKeyPressed(e -> {
    if (e.getCode() == KeyCode.ENTER) {
        valider();
    }
    if (e.isControlDown() && e.getCode() == KeyCode.Z) {
        annuler();
    }
});

// KEY_TYPED : caractère Unicode final (après combinaison de touches)
textField.setOnKeyTyped(e -> {
    System.out.println("Caractère tapé : " + e.getCharacter());
});
```

`KEY_PRESSED` : la touche physique est enfoncée.
`KEY_TYPED` : un caractère Unicode a été produit (plus adapté pour la saisie).

---

## ActionEvent - le plus courant

`ActionEvent` est déclenché par :
- Un `Button` cliqué
- Un `MenuItem` sélectionné
- Un `TextField` quand on appuie sur Entrée
- Une `CheckBox` cochée ou décochée

```java
// Ces deux lignes sont équivalentes
btn.setOnAction(e -> traiter());
btn.addEventHandler(ActionEvent.ACTION, e -> traiter());
```

> Dans le TP2 et tous les TP suivants, vous utiliserez quasi exclusivement `ActionEvent` via `setOnAction()`.

---

## 🧠 Nielsen #1 approfondi : feedback et temps de réponse

**Heuristique 1** : "Le système doit toujours informer l'utilisateur de ce qui se passe."

Trois niveaux de temps de réponse (Jakob Nielsen, 1993) :

<div style="display: grid; grid-template-columns: 1fr 1fr 1fr; gap: 1rem; margin-top: 1rem;">
<div style="background: #27ae60; color: white; padding: 1rem; border-radius: 8px; text-align: center;">
<div style="font-size: 1.8rem; font-weight: bold;">< 100ms</div>
<div style="margin-top: 0.3rem;">Instantané - aucun feedback nécessaire</div>
</div>
<div style="background: #e8a838; color: white; padding: 1rem; border-radius: 8px; text-align: center;">
<div style="font-size: 1.8rem; font-weight: bold;">< 1s</div>
<div style="margin-top: 0.3rem;">Acceptable - curseur "pensif" suffit</div>
</div>
<div style="background: #e74c3c; color: white; padding: 1rem; border-radius: 8px; text-align: center;">
<div style="font-size: 1.8rem; font-weight: bold;">> 1s</div>
<div style="margin-top: 0.3rem;">Trop long - barre de progression obligatoire</div>
</div>
</div>

---

## ⚡ Les bindings comme feedback automatique

Les bindings respectent automatiquement Nielsen #1 :

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.2rem; margin-top: 1rem;">
<div style="background: #f0f4f8; padding: 1.2rem; border-radius: 10px; border-left: 4px solid #e74c3c;">
<div style="font-weight: bold; margin-bottom: 0.5rem;">❌ Sans binding</div>
<div style="font-size: 0.9rem;">L'utilisateur clique. Si vous oubliez un <code>setText()</code>, le label reste obsolète. Feedback absent ou incorrect.</div>
</div>
<div style="background: #f0fff4; padding: 1.2rem; border-radius: 10px; border-left: 4px solid #27ae60;">
<div style="font-weight: bold; margin-bottom: 0.5rem;">✅ Avec binding</div>
<div style="font-size: 0.9rem;">Le label est déclaré comme dépendant de la propriété. Dès que la propriété change, le label se met à jour. Toujours cohérent.</div>
</div>
</div>

<div style="background: #2c3e50; color: white; padding: 1rem 2rem; border-radius: 10px; margin-top: 1.5rem; text-align: center;">
Un binding, c'est du feedback <b>garanti par construction</b>.
</div>

---

<!-- _class: lead -->
<!-- _header: "" -->
<!-- _footer: "" -->

# Partie 3 - ⚡ Propriétés JavaFX

---

## Pourquoi les propriétés ?

Le JavaBeans classique (get/set) ne permet pas de notifier les observateurs :

```java
// JavaBeans classique - INOBSERVABLE
public class Compteur {
    private int valeur = 0;
    public int getValeur() { return valeur; }
    public void setValeur(int v) { valeur = v; }
    // Personne ne sait quand valeur change !
}
```

Pour rendre une valeur observable, JavaFX introduit les **propriétés** : des objets qui encapsulent une valeur ET maintiennent une liste d'observateurs.

---

## Le triplet JavaBeans JavaFX

La convention JavaFX **étend** JavaBeans avec une troisième méthode :

<div style="display: grid; grid-template-columns: 1fr 1fr 1fr; gap: 1rem; margin-top: 1rem;">
<div style="background: #4a90d9; color: white; padding: 1rem; border-radius: 8px; text-align: center;">
<div style="font-weight: bold; font-size: 1.1rem; margin-bottom: 0.5rem;">getFoo()</div>
<div style="font-size: 0.85rem;">Lecture de la valeur brute. Hérité de JavaBeans.</div>
</div>
<div style="background: #27ae60; color: white; padding: 1rem; border-radius: 8px; text-align: center;">
<div style="font-weight: bold; font-size: 1.1rem; margin-bottom: 0.5rem;">setFoo()</div>
<div style="font-size: 0.85rem;">Écriture de la valeur. Hérité de JavaBeans.</div>
</div>
<div style="background: #e8a838; color: white; padding: 1rem; border-radius: 8px; text-align: center;">
<div style="font-weight: bold; font-size: 1.1rem; margin-bottom: 0.5rem;">fooProperty()</div>
<div style="font-size: 0.85rem;">Accès à l'objet Property lui-même. Nouveau en JavaFX.</div>
</div>
</div>

> `fooProperty()` retourne l'objet qui peut être observé ou lié via `bind()`.

---

## Exemple concret : BoutonCouleur (TP2, ex. 3)

<style scoped>
pre { font-size: 0.78rem; }
</style>

`BoutonCouleur` respecte exactement le triplet pour son compteur de clics :

```java
public class BoutonCouleur extends Button {
    private final IntegerProperty nbClics = new SimpleIntegerProperty(0);

    public BoutonCouleur(String texte, String couleur) {
        super(texte);
        setOnAction(e -> nbClics.set(nbClics.get() + 1));
    }

    public int getNbClics()           { return nbClics.get(); }
    public IntegerProperty nbClicsProperty() { return nbClics; }
}
```

Grâce à `nbClicsProperty()`, n'importe quel autre composant peut observer ou se lier au compteur.

---

## Les types de propriétés

| Type Java | Propriété JavaFX | Implémentation concrète |
|---|---|---|
| `int` | `IntegerProperty` | `SimpleIntegerProperty` |
| `double` | `DoubleProperty` | `SimpleDoubleProperty` |
| `boolean` | `BooleanProperty` | `SimpleBooleanProperty` |
| `String` | `StringProperty` | `SimpleStringProperty` |
| `T` (objet) | `ObjectProperty<T>` | `SimpleObjectProperty<T>` |

Règle : préférer `IntegerProperty` à `ObjectProperty<Integer>` pour les nombres (évite le boxing).

---

## SimpleXxxProperty - l'implémentation concrète

<style scoped>
pre { font-size: 0.82rem; }
</style>

Dans `ProprieteSimple.java` (TP2, exercice 1), vous manipulez directement `SimpleIntegerProperty` :

```java
private IntegerProperty anIntProperty;

void creerPropriete() {
    anIntProperty = new SimpleIntegerProperty(); // valeur par défaut 0
    System.out.println("anIntProperty = " + anIntProperty);
    System.out.println("anIntProperty.get() = " + anIntProperty.get());
    System.out.println("anIntProperty.getValue() = " + anIntProperty.getValue());
}
```

`get()` et `getValue()` sont équivalents. `toString()` affiche `IntegerProperty [value: 0]`.

---

## Pourquoi observer une propriété ?

Deux scénarios distincts :

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.2rem; margin-top: 1rem;">
<div style="background: #f0f4f8; padding: 1.2rem; border-radius: 10px; border-top: 4px solid #e8a838;">
<div style="font-weight: bold; margin-bottom: 0.5rem;">Scénario 1 : réagir</div>
<div style="font-size: 0.9rem;">Je veux exécuter du code chaque fois que la valeur change (mettre à jour un graphique, déclencher un appel réseau...).</div>
<div style="margin-top: 0.5rem; font-weight: bold; color: #e8a838;">→ Utiliser un Listener</div>
</div>
<div style="background: #f0fff4; padding: 1.2rem; border-radius: 10px; border-top: 4px solid #27ae60;">
<div style="font-weight: bold; margin-bottom: 0.5rem;">Scénario 2 : synchroniser</div>
<div style="font-size: 0.9rem;">Je veux qu'une autre propriété suive automatiquement la valeur (label qui reflète un slider, titre de fenêtre qui affiche le nombre de fichiers...).</div>
<div style="margin-top: 0.5rem; font-weight: bold; color: #27ae60;">→ Utiliser un Binding</div>
</div>
</div>

---

## InvalidationListener - le listener paresseux

<style scoped>
pre { font-size: 0.78rem; }
</style>

L'`InvalidationListener` est déclenché quand la propriété est **potentiellement invalidée**, mais ne fournit pas l'ancienne valeur. Exercice 1 du TP2 :

```java
anIntProperty.addListener(observable ->
    System.out.println("The observable has been invalidated."));

anIntProperty.setValue(1024); // même valeur - pas de déclenchement
anIntProperty.set(2105);      // valeur différente - déclenché une fois
anIntProperty.setValue(5012); // PAS redéclenché (lazy : pas de get() depuis)
```

**Comportement paresseux** : si vous ne lisez pas la valeur entre deux modifications, le listener n'est déclenché qu'une fois.

---

## ChangeListener - le listener exhaustif

<style scoped>
pre { font-size: 0.78rem; }
</style>

Le `ChangeListener` reçoit **l'ancienne et la nouvelle valeur** à chaque changement. Exercice 1 du TP2 :

```java
anIntProperty.addListener((observable, oldValue, newValue) ->
    System.out.println(
        "Changed: oldValue=" + oldValue + ", newValue=" + newValue));

anIntProperty.setValue(1024); // même valeur - pas de déclenchement
anIntProperty.set(2105);      // déclenché : old=1024, new=2105
anIntProperty.setValue(5012); // déclenché : old=2105, new=5012
```

Contrairement à l'`InvalidationListener`, il se déclenche à **chaque changement effectif** de valeur.

---

## Comparaison : InvalidationListener vs ChangeListener

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.2rem; margin-top: 1rem;">
<div style="background: #fae5c0; padding: 1.2rem; border-radius: 10px;">
<div style="font-weight: bold; font-size: 1.05rem; margin-bottom: 0.5rem;">InvalidationListener</div>
<div style="font-size: 0.85rem;">
✅ Plus léger (pas de calcul de la valeur)<br/>
✅ Optimal pour les bindings internes JavaFX<br/>
⚠️ Paresseux : ne se re-déclenche pas si la valeur n'est pas lue<br/>
⚠️ Pas accès à l'ancienne valeur
</div>
</div>
<div style="background: #d0e2f3; padding: 1.2rem; border-radius: 10px;">
<div style="font-weight: bold; font-size: 1.05rem; margin-bottom: 0.5rem;">ChangeListener</div>
<div style="font-size: 0.85rem;">
✅ Déclenché à chaque changement effectif<br/>
✅ Donne oldValue et newValue<br/>
✅ Comportement intuitif et prévisible<br/>
⚠️ Légèrement plus coûteux
</div>
</div>
</div>

---

## Quand utiliser lequel ?

**Règle pratique pour le TP2 et les TP suivants** :

- **ChangeListener** : dans 95% des cas, c'est celui que vous utiliserez. Comportement prévisible, accès aux deux valeurs.

- **InvalidationListener** : si vous implémentez un binding personnalisé ou si les performances sont critiques (très rare en TP).

> Les bindings de JavaFX utilisent l'`InvalidationListener` en interne pour être efficaces. Vous n'avez pas à y penser.

---

## ReadOnlyWrapper - exposer en lecture seule

<style scoped>
pre { font-size: 0.82rem; }
</style>

Pour qu'un composant expose une propriété sans que l'extérieur puisse l'écrire :

```java
private final ReadOnlyIntegerWrapper score = new ReadOnlyIntegerWrapper(0);

// Méthode publique : lecture seule
public ReadOnlyIntegerProperty scoreProperty() {
    return score.getReadOnlyProperty();
}

// En interne, on peut écrire via le wrapper
private void incrementerScore() {
    score.set(score.get() + 1);
}
```

Utile pour les propriétés calculées qu'un modèle veut exposer sans les laisser modifier de l'extérieur.

---

## Lien avec le pattern Observer (CM1)

Le système de propriétés JavaFX est une implémentation concrète du pattern Observer :

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.2rem; margin-top: 1rem;">
<div style="background: #f0f4f8; padding: 1.2rem; border-radius: 10px;">
<div style="font-weight: bold; margin-bottom: 0.5rem;">Pattern Observer (CM1)</div>
<div style="font-size: 0.9rem;">
- Subject = source observable<br/>
- Observer = listener<br/>
- notify() = déclencher les listeners<br/>
- subscribe/unsubscribe = addListener/removeListener
</div>
</div>
<div style="background: #f0fff4; padding: 1.2rem; border-radius: 10px;">
<div style="font-weight: bold; margin-bottom: 0.5rem;">Propriété JavaFX</div>
<div style="font-size: 0.9rem;">
- Property = subject + valeur<br/>
- InvalidationListener / ChangeListener = observer<br/>
- set() déclenche automatiquement<br/>
- addListener / removeListener
</div>
</div>
</div>

---

## Les propriétés SONT des observables

La hiérarchie JavaFX reflète cela :

```
Observable
  └── ObservableValue<T>
        └── ReadOnlyProperty<T>
              └── Property<T>
                    └── WritableValue<T>
                          └── IntegerProperty (classe abstraite)
                                └── SimpleIntegerProperty (implémentation)
```

- `Observable` : peut avoir des `InvalidationListener`
- `ObservableValue<T>` : peut avoir des `ChangeListener`
- `Property<T>` : peut être liée (`bind()`, `bindBidirectional()`)

---

## Une propriété = une valeur + des observateurs

<div style="background: #2c3e50; color: white; padding: 1.8rem 2rem; border-radius: 12px; text-align: center; font-size: 1.3rem; margin-top: 2rem;">
Une propriété JavaFX est bien plus qu'un entier ou une chaîne.
<br/><br/>
C'est un <b>objet vivant</b> : il connaît sa valeur, notifie ses observateurs quand elle change, et peut se synchroniser automatiquement avec d'autres propriétés.
<br/><br/>
<span style="font-size: 1.5rem; font-weight: bold;">propriété = valeur + observateurs</span>
</div>

---

<!-- _class: lead -->
<!-- _header: "" -->
<!-- _footer: "" -->

# Partie 4 - 🏗️ Bindings

---

## bind() unidirectionnel - concept

<style scoped>
pre { font-size: 0.82rem; }
</style>

Un binding unidirectionnel : la cible **suit** la source automatiquement.

```
source → cible
```

```java
IntegerProperty source = new SimpleIntegerProperty(10);
IntegerProperty cible = new SimpleIntegerProperty(0);

cible.bind(source);
System.out.println(cible.get()); // 10 - la cible a suivi

source.set(42);
System.out.println(cible.get()); // 42 - mise à jour automatique
```

Dans `LiaisonProprietes.java` (TP2, exercice 2), vous explorez ce comportement en détail.

---

## bind() - propriété liée = non modifiable

<style scoped>
pre { font-size: 0.82rem; }
</style>

**Contrainte importante** : une propriété liée ne peut pas être modifiée directement.

```java
cible.bind(source);
cible.set(99); // RuntimeException : "A bound value cannot be set."
```

Pour la délier avant de la modifier :

```java
cible.unbind();
cible.set(99); // OK maintenant
```

`isBound()` permet de tester l'état avant d'agir.

> Exercice 2 du TP2 : vous observerez ce comportement avec les sorties console.

---

## bindBidirectional() - concept

Le binding bidirectionnel synchronise deux propriétés dans **les deux sens** :

```
A ↔ B
```

Quand A change, B suit. Quand B change, A suit. Les deux propriétés restent modifiables directement.

**Cas d'utilisation typique** : synchroniser un `Slider` et un `TextField` qui représentent la même valeur. L'utilisateur peut modifier via l'un ou l'autre.

---

## bindBidirectional() - exemple CercleInteractif (TP2, ex. 7)

<style scoped>
pre { font-size: 0.78rem; }
</style>

Dans `CercleInteractif.java`, trois contrôles restent toujours synchronisés :

```java
// Rayon du cercle ↔ Slider (bidirectionnel)
cercle.radiusProperty().bindBidirectional(slider.valueProperty());

// Slider ↔ TextField avec conversion de type
Bindings.bindBidirectional(
    textField.textProperty(),
    slider.valueProperty(),
    new NumberStringConverter());

// Initialisation : suffit d'en fixer un
slider.setValue(150);
```

Modifier le slider déplace le cercle ET met à jour le champ. Taper dans le champ déplace le slider ET le cercle.

---

## NumberStringConverter - lier des types différents

<style scoped>
pre { font-size: 0.82rem; }
</style>

`bindBidirectional()` entre `StringProperty` et `DoubleProperty` requiert un convertisseur :

```java
// Sans convertisseur : erreur de compilation
// textProperty est StringProperty, valueProperty est DoubleProperty

// Avec NumberStringConverter
Bindings.bindBidirectional(
    textField.textProperty(),
    slider.valueProperty(),
    new NumberStringConverter()
);
```

D'autres convertisseurs existent : `IntegerStringConverter`, `DateTimeStringConverter`, `LocalDateStringConverter`...

---

## API fluente : multiply, add, subtract, divide

<style scoped>
pre { font-size: 0.82rem; }
</style>

Les propriétés numériques exposent une API fluente pour construire des expressions :

```java
IntegerProperty a = new SimpleIntegerProperty(3);
IntegerProperty b = new SimpleIntegerProperty(4);

// Calcul automatique : a*a + b*b
NumberBinding sommeCarres = a.multiply(a).add(b.multiply(b));

// On peut lier un label à ce calcul
label.textProperty().bind(sommeCarres.asString("a²+b² = %.0f"));
```

Les opérations `multiply()`, `add()`, `subtract()`, `divide()` retournent un `NumberBinding` - pas un entier. La valeur est recalculée automatiquement quand `a` ou `b` change.

---

## Exemple : formule de l'aire d'un triangle (TP2, ex. 4)

<style scoped>
pre { font-size: 0.76rem; }
</style>

Dans `AireTriangle.java`, l'aire est calculée par binding - jamais manuellement :

```java
NumberBinding determinant =
    x1.multiply(y2).subtract(x1.multiply(y3))
      .add(x2.multiply(y3)).subtract(x2.multiply(y1))
      .add(x3.multiply(y1)).subtract(x3.multiply(y2));

area.bind(
    Bindings.when(determinant.greaterThanOrEqualTo(0))
        .then(determinant.divide(2.0))
        .otherwise(determinant.negate().divide(2.0)));
```

Changer `x1.set(5)` recalcule `determinant` et `area` automatiquement. Aucun appel manuel à `setArea()`.

---

## Bindings.concat() - composer du texte

<style scoped>
pre { font-size: 0.82rem; }
</style>

`Bindings.concat()` assemble plusieurs valeurs observables en une `StringExpression` :

```java
StringExpression texte = Bindings.concat(
    "P1(", x1, ",", y1,
    ") P2(", x2, ",", y2,
    ") => aire = ", area);

label.textProperty().bind(texte);
```

Le label affiche toujours les valeurs courantes. Quand `x1` change, le label se met à jour sans `setText()`.

Exercice 4 du TP2 : `AireTriangle.createBinding()` utilise `Bindings.format()` pour le même résultat avec un format `printf`.

---

## Bindings.when().then().otherwise() - conditions

<style scoped>
pre { font-size: 0.82rem; }
</style>

L'expression conditionnelle en bindings : l'équivalent du `? :` ternaire, mais observable.

```java
StringExpression affichage = Bindings.when(
        btnRouge.nbClicsProperty()
            .add(btnVert.nbClicsProperty())
            .add(btnBleu.nbClicsProperty())
            .isEqualTo(0))
    .then("Bienvenue !")
    .otherwise(texteCompteurs);

label.textProperty().bind(affichage);
```

Quand aucun bouton n'a été cliqué, le label affiche "Bienvenue !". Dès le premier clic, il bascule sur les compteurs. Automatiquement.

---

## Low-level binding : BooleanBinding avec computeValue()

<style scoped>
pre { font-size: 0.76rem; }
</style>

Quand l'API fluente ne suffit pas, on crée un binding personnalisé :

```java
BooleanBinding motDePasseInvalide = new BooleanBinding() {
    {
        super.bind(pwd.textProperty()); // déclarer la dépendance
    }

    @Override
    protected boolean computeValue() {
        String text = pwd.getText();
        return text.length() < 8
            || text.chars().noneMatch(Character::isUpperCase)
            || text.chars().noneMatch(Character::isDigit);
    }
};
okBtn.disableProperty().bind(motDePasseInvalide);
```

`computeValue()` est appelé automatiquement quand `pwd.textProperty()` change.

---

## Exemple : validation login (TP2, ex. 6)

Dans `FormulaireConnexion.java`, tous les états sont gérés par bindings :

```java
// Le champ pwd n'est éditable que si userId >= 6 chars
pwd.editableProperty().bind(
    Bindings.greaterThanOrEqual(
        userId.textProperty().length(), 6));

// Annuler désactivé si les deux champs sont vides
cancelBtn.disableProperty().bind(
    Bindings.and(
        Bindings.equal(0, pwd.textProperty().length()),
        Bindings.equal(0, userId.textProperty().length())));
```

Aucun EventHandler ne modifie `disabled` ou `editable`. L'état de l'interface découle des données.

---

## 🏗️ Source unique de vérité

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.2rem; margin-top: 1rem;">
<div style="background: #fdecea; padding: 1.2rem; border-radius: 10px; border-top: 4px solid #e74c3c;">
<div style="font-weight: bold; margin-bottom: 0.5rem;">❌ Sans propriétés</div>
<div style="font-size: 0.9rem;">La valeur est dans un <code>int</code> local. Le label en a une copie. Le champ texte en a une autre. Les trois peuvent diverger.</div>
</div>
<div style="background: #f0fff4; padding: 1.2rem; border-radius: 10px; border-top: 4px solid #27ae60;">
<div style="font-weight: bold; margin-bottom: 0.5rem;">✅ Avec propriétés + bindings</div>
<div style="font-size: 0.9rem;">La valeur vit dans une propriété. Le label et le champ texte <em>dépendent</em> de cette propriété. Ils ne peuvent pas diverger.</div>
</div>
</div>

<div style="background: #2c3e50; color: white; padding: 1rem 2rem; border-radius: 10px; margin-top: 1.5rem; text-align: center; font-size: 1.1rem;">
Un binding remplace un EventHandler + un setText()
</div>

---

<!-- _class: lead -->
<!-- _header: "" -->
<!-- _footer: "" -->

# Partie 5 - 🧠 Contrôles et affordance

---

## Taxonomie des contrôles JavaFX

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.2rem; margin-top: 1rem;">
<div style="background: #f0f4f8; padding: 1.2rem; border-radius: 10px;">
<div style="font-weight: bold; margin-bottom: 0.7rem;">🏷️ Affichage (lecture seule)</div>
<div style="font-size: 0.9rem;">
<code>Label</code> - texte statique<br/>
<code>ImageView</code> - image<br/>
<code>ProgressBar</code> - progression<br/>
<code>ProgressIndicator</code> - spinner
</div>
</div>
<div style="background: #f0fff4; padding: 1.2rem; border-radius: 10px;">
<div style="font-weight: bold; margin-bottom: 0.7rem;">🕹️ Interaction (lecture-écriture)</div>
<div style="font-size: 0.9rem;">
<code>Button</code> - action ponctuelle<br/>
<code>TextField</code> / <code>PasswordField</code> - saisie texte<br/>
<code>Slider</code> - valeur numérique continue<br/>
<code>CheckBox</code> - option booléenne<br/>
<code>ComboBox</code> - choix dans une liste
</div>
</div>
</div>

> Chaque contrôle JavaFX suit le triplet JavaBeans - il expose ses états via des propriétés.

---

## Contrôles d'affichage - propriétés clés

<style scoped>
pre { font-size: 0.82rem; }
</style>

Les contrôles d'affichage sont des cibles naturelles pour `bind()` :

```java
Label label = new Label();
ProgressBar barre = new ProgressBar();

// Le label affiche toujours la valeur du slider
label.textProperty().bind(slider.valueProperty().asString("%.0f%%"));

// La barre reflète la progression (valeur entre 0 et 1)
barre.progressProperty().bind(slider.valueProperty().divide(100));
```

Pas de `setText()`, pas de `setProgress()`. Les contrôles sont des **vues déclaratives** sur les données.

---

## Contrôles d'action et de saisie - propriétés clés

<style scoped>
pre { font-size: 0.82rem; }
</style>

Les contrôles interactifs exposent leurs états comme propriétés observables :

```java
TextField champ = new TextField();
Button btn = new Button("Valider");
CheckBox option = new CheckBox("Se souvenir de moi");

// Lire l'état actuel
String texte = champ.getText();          // = champ.textProperty().get()
boolean coche = option.isSelected();    // = option.selectedProperty().get()

// Observer les changements
champ.textProperty().addListener(
    (obs, old, nouveau) -> System.out.println("Saisie : " + nouveau));
```

---

## 🧠 Affordance - Don Norman

**Affordance** : les propriétés visuelles d'un objet qui suggèrent comment l'utiliser.

<div style="display: grid; grid-template-columns: 1fr 1fr 1fr; gap: 1rem; margin-top: 1rem; font-size: 0.9rem;">
<div style="background: #27ae60; color: white; padding: 1rem; border-radius: 8px; text-align: center;">
<div style="font-size: 1.5rem; margin-bottom: 0.4rem;">🔘</div>
<div>Un bouton en relief suggère qu'on peut appuyer dessus.</div>
</div>
<div style="background: #4a90d9; color: white; padding: 1rem; border-radius: 8px; text-align: center;">
<div style="font-size: 1.5rem; margin-bottom: 0.4rem;">📝</div>
<div>Un champ de saisie avec un curseur clignotant invite à taper.</div>
</div>
<div style="background: #8e44ad; color: white; padding: 1rem; border-radius: 8px; text-align: center;">
<div style="font-size: 1.5rem; margin-bottom: 0.4rem;">🎚️</div>
<div>Un slider avec une encoche suggère qu'on peut le faire glisser.</div>
</div>
</div>

**Affordance programmatique** : désactiver un bouton communique "cette action n'est pas disponible maintenant".

---

## disableProperty().bind() - affordance automatique

<style scoped>
pre { font-size: 0.82rem; }
</style>

Dans `FormulaireConnexion.java` (TP2, ex. 6), l'affordance est gérée par bindings :

```java
// Le bouton OK est grisé tant que le mot de passe est invalide
okBtn.disableProperty().bind(motDePasseInvalide);

// Le champ mot de passe est non éditable tant que userId est trop court
pwd.editableProperty().bind(
    Bindings.greaterThanOrEqual(
        userId.textProperty().length(), 6));
```

L'utilisateur comprend immédiatement les contraintes sans lire une documentation. L'interface est **auto-explicative**.

---

## L'affordance rend l'interface auto-explicative

<div style="background: #2c3e50; color: white; padding: 1.8rem 2rem; border-radius: 12px; text-align: center; font-size: 1.2rem; margin-top: 2rem;">
Un bouton grisé dit "pas encore" sans popup d'erreur.<br/><br/>
Un champ non éditable dit "remplissez d'abord le champ précédent".<br/><br/>
<span style="font-size: 1.4rem; font-weight: bold;">L'affordance, c'est de l'ergonomie encodée dans le code.</span>
<br/><br/>
<span style="font-size: 0.95rem; opacity: 0.8;">Vous pratiquerez cela dans l'exercice 6 du TP2.</span>
</div>

---

<!-- _class: lead -->
<!-- _header: "" -->
<!-- _footer: "" -->

# Synthèse

---

## Les 3 piliers revisités

<div style="display: grid; grid-template-columns: 1fr 1fr 1fr; gap: 1.2rem; margin-top: 1rem;">
<div style="background: #e8a838; color: white; padding: 1.5rem 1.2rem; border-radius: 10px; text-align: center;">
<div style="font-size: 2rem; margin-bottom: 0.5rem;">⚡</div>
<div style="font-weight: bold; font-size: 1.1rem;">Événements</div>
<div style="margin-top: 0.5rem; font-size: 0.9rem; opacity: 0.9;">Propagation capture/bulles. EventFilter vs EventHandler. consume().</div>
</div>
<div style="background: #4a90d9; color: white; padding: 1.5rem 1.2rem; border-radius: 10px; text-align: center;">
<div style="font-size: 2rem; margin-bottom: 0.5rem;">⚡</div>
<div style="font-weight: bold; font-size: 1.1rem;">Propriétés</div>
<div style="margin-top: 0.5rem; font-size: 0.9rem; opacity: 0.9;">Le triplet JavaBeans+JavaFX. InvalidationListener vs ChangeListener. Pattern Observer concret.</div>
</div>
<div style="background: #27ae60; color: white; padding: 1.5rem 1.2rem; border-radius: 10px; text-align: center;">
<div style="font-size: 2rem; margin-bottom: 0.5rem;">🏗️</div>
<div style="font-weight: bold; font-size: 1.1rem;">Bindings</div>
<div style="margin-top: 0.5rem; font-size: 0.9rem; opacity: 0.9;">bind(), bindBidirectional(), API fluente, Bindings.when(), BooleanBinding personnalisé.</div>
</div>
</div>

<div style="background: #f0f4f8; padding: 1rem 1.5rem; border-radius: 10px; margin-top: 1rem; text-align: center;">
🧠 <b>Ergonomie</b> : affordance = états de l'interface pilotés par les données via bindings.
</div>

---

## Lien avec le TP2 - tableau exercices et concepts

| Exercice | Classe | Concepts |
|---|---|---|
| 1 | `ProprieteSimple` | InvalidationListener, ChangeListener |
| 2 | `LiaisonProprietes` | bind(), unbind(), isBound() |
| 3 | `BoutonCouleur` + `PaletteReactive` | Triplet JavaBeans, Bindings.concat() |
| 4 | `AireTriangle` | API fluente, Bindings.when() |
| 5 | `CalculatriceTriangle` | Binding modèle ↔ vue (Slider → Property) |
| 6 | `FormulaireConnexion` | BooleanBinding, disableProperty, affordance |
| 7 | `CercleInteractif` | bindBidirectional(), NumberStringConverter |
| 8 | `ConvertisseurTemperatures` | ChangeListener + binding bidirectionnel |

---

## Teaser CM3 - Architecture des IHM et FXML

Dans le CM3, vous apprendrez à **séparer** la vue du comportement :

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.2rem; margin-top: 1rem;">
<div style="background: #f0f4f8; padding: 1.2rem; border-radius: 10px; border-top: 4px solid #e74c3c;">
<div style="font-weight: bold; margin-bottom: 0.5rem;">Aujourd'hui (CM2)</div>
<div style="font-size: 0.9rem;">La vue est construite en Java. Layout et comportement dans le même fichier.</div>
</div>
<div style="background: #f0fff4; padding: 1.2rem; border-radius: 10px; border-top: 4px solid #27ae60;">
<div style="font-weight: bold; margin-bottom: 0.5rem;">CM3 : FXML + MVC</div>
<div style="font-size: 0.9rem;">La vue est décrite en XML (FXML). Le contrôleur gère le comportement. SceneBuilder permet de dessiner la vue visuellement.</div>
</div>
</div>

Les propriétés et bindings que vous apprenez aujourd'hui seront **la colle** entre la vue FXML et le modèle.

---

## Pour aller plus loin

**Documentation officielle JavaFX 25** :
- [Properties and Bindings](https://openjfx.io/javadoc/25/javafx.base/javafx/beans/property/package-summary.html) - javadoc complète
- [Using JavaFX Properties and Binding](https://docs.oracle.com/javase/8/javafx/properties-binding-tutorial/binding.htm) - tutoriel Oracle

**Concepts connexes** :
- `StringConverter<T>` : convertir entre types pour bindBidirectional
- `Bindings.createDoubleBinding()` : binding personnalisé sans sous-classer
- `ObservableList<T>` : liste observable pour `ListView` et `TableView` (CM4)

**Pour les curieux** :
- Source OpenJFX de `SimpleIntegerProperty` : voir comment `fireValueChangedEvent()` est appelé dans `set()`

---

<!-- _class: lead -->
<!-- _header: "" -->
<!-- _footer: "" -->
<!-- _paginate: false -->

## À vous de jouer !

**TP2 - Propriétés, bindings et contrôles**

8 exercices progressifs : des propriétés les plus simples (`ProprieteSimple`) jusqu'au formulaire de connexion avec validation complète (`FormulaireConnexion`).

> Activez les tests un par un. Chaque test vert = un concept maîtrisé.

`./mvnw javafx:run` pour explorer les exercices interactifs.
