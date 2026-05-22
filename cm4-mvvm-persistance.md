---
marp: true
theme: default
paginate: true
math: katex
lang: fr
---

<!-- _class: lead -->
<!-- _paginate: false -->
<!-- _header: "" -->
<!-- _footer: "" -->

<style scoped>
section {
  background-image: url('assets/logo-amu.png');
  background-repeat: no-repeat;
  background-position: bottom 40px center;
  background-size: 320px;
}
</style>

# 🦇 Présentation de la SAÉ 2.01

## **VigieChiro PR Companion**

**SAÉ commune R2.02 + R2.03 - Printemps 2026**

<div style="margin-top: 1.5rem; font-size: 1.3rem; color: #555;">
Avant d'attaquer le CM4, faisons connaissance avec le projet qui va vous mobiliser tout le mois de juin.
</div>

---

## 🦇 VigieChiro Point Fixe - le contexte

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;"><a href="https://www.vigienature.fr/fr/chauves-souris">VigieChiro</a> est un programme de <b>sciences participatives</b> porté par le <b>Muséum National d'Histoire Naturelle</b> (MNHN). Des écologues/bénévoles posent des enregistreurs ultrasons sur le terrain pour suivre les populations de chauves-souris dans toute la France avec un protocole rigoureux.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr 1fr; gap: 0.9rem; margin-top: 0.8rem;">

<div style="background: #1a5276; color: white; padding: 1rem 1.1rem; border-radius: 10px;">
<div style="font-size: 1.45rem; font-weight: bold; margin-bottom: 0.4rem;">🎤 Le Passive Recorder</div>
<div style="font-size: 1.25rem; line-height: 1.5;">Boîtier <b>open-hardware</b> basé sur la carte Teensy, posé seul sur un point d'écoute toute la nuit. Bande <b>8-120 kHz</b>, 384 kHz d'échantillonnage.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1rem 1.1rem; border-radius: 10px;">
<div style="font-size: 1.45rem; font-weight: bold; margin-bottom: 0.4rem;">💾 Enregistrements</div>
<div style="font-size: 1.25rem; line-height: 1.5;"><b>Plusieurs milliers de fichiers sonores</b>, un journal technique, un journal climat. Jusqu'à <b>40 Go</b> par enregistreur.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1rem 1.1rem; border-radius: 10px;">
<div style="font-size: 1.45rem; font-weight: bold; margin-bottom: 0.4rem;">🧪 Tadarida</div>
<div style="font-size: 1.25rem; line-height: 1.5;">Un classificateur du MNHN identifie de manière asynchrone les <b>espèces</b> (<em>Pipistrellus pipistrellus</em>, <em>Nyctalus leisleri</em>…) à partir des fichiers sons transformés.</div>
</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.8rem 1.2rem; border-radius: 10px; margin-top: 1rem; font-size: 1.5rem; text-align: center;">
Le possesseur du PR doit <b>vérifier la qualité</b>, <b>renommer</b>, <b>transformer</b>, <b>déposer</b> sur Vigie-Chiro, puis <b>valider</b> les classifications Tadarida.
</div>

---

## 😩 La chaîne actuelle : 4 outils, beaucoup de friction

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Aujourd'hui, le possesseur du PR enchaîne <b>4 outils différents</b> par nuit traitée. Une demi-journée de manipulations répétitives par carte SD.</p>

<div style="display: grid; grid-template-columns: repeat(4, 1fr); gap: 1.1rem; margin: 3.4rem 0;">

<div style="background: #8c3a2f; color: white; padding: 1.6rem 1rem; border-radius: 10px; text-align: center;">
<div style="font-size: 3.8rem; line-height: 1;">📁</div>
<div style="font-size: 1.35rem; font-weight: bold; margin-top: 0.9rem;">Explorateur</div>
<div style="font-size: 1.1rem; opacity: 0.9; margin-top: 0.3rem;">Copier depuis la SD</div>
</div>

<div style="background: #8c3a2f; color: white; padding: 1.6rem 1rem; border-radius: 10px; text-align: center;">
<div style="font-size: 3.8rem; line-height: 1;">✏️</div>
<div style="font-size: 1.35rem; font-weight: bold; margin-top: 0.9rem;">LupasRename</div>
<div style="font-size: 1.1rem; opacity: 0.9; margin-top: 0.3rem;">Renommer les WAV</div>
</div>

<div style="background: #8c3a2f; color: white; padding: 1.6rem 1rem; border-radius: 10px; text-align: center;">
<div style="font-size: 3.8rem; line-height: 1;">🎵</div>
<div style="font-size: 1.35rem; font-weight: bold; margin-top: 0.9rem;">Kaléidoscope</div>
<div style="font-size: 1.1rem; opacity: 0.9; margin-top: 0.3rem;">Découper + ralentir ×10</div>
</div>

<div style="background: #8c3a2f; color: white; padding: 1.6rem 1rem; border-radius: 10px; text-align: center;">
<div style="font-size: 3.8rem; line-height: 1;">🌐</div>
<div style="font-size: 1.35rem; font-weight: bold; margin-top: 0.9rem;">Vigie-Chiro web</div>
<div style="font-size: 1.1rem; opacity: 0.9; margin-top: 0.3rem;">Déposer + valider</div>
</div>

</div>

<div style="background: #27ae60; color: white; padding: 1rem 1.2rem; border-radius: 10px; margin-top: 1.6rem; font-size: 1.55rem; text-align: center;">
🎯 Votre mission : <b>fusionner tout cela dans une seule application JavaFX</b> qui tient sur un poste hors ligne.
</div>

---

## 📥 Le projet : *VigieChiro PR Companion*

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Une application <b>JavaFX</b>, locale, qui enchaîne toute la chaîne nocturne dans un outil unique (depuis la carte SD jusqu'au dépôt sur Vigie-Chiro).</p>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.5rem; margin-top: 1.4rem;">

<div style="background: #1a5276; color: white; padding: 1.8rem 1.5rem; border-radius: 12px; text-align: center;">
<div style="font-size: 4rem; line-height: 1;">🎯</div>
<div style="font-size: 1.7rem; font-weight: bold; margin-top: 0.9rem;">Cible MVP (MUST)</div>
<div style="font-size: 1.3rem; line-height: 1.55; margin-top: 0.9rem; text-align: left;">La <b>chaîne fil rouge</b> : déclarer un site, importer une nuit, vérifier l'enregistrement par échantillonnage, préparer un lot prêt à déposer.</div>
</div>

<div style="background: #8e44ad; color: white; padding: 1.8rem 1.5rem; border-radius: 12px; text-align: center;">
<div style="font-size: 4rem; line-height: 1;">🎁</div>
<div style="font-size: 1.7rem; font-weight: bold; margin-top: 0.9rem;">Filet de sécurité (SHOULD)</div>
<div style="font-size: 1.3rem; line-height: 1.55; margin-top: 0.9rem; text-align: left;"><b>Valider les résultats Tadarida</b> : écouter chaque observation avec sonogramme + spectrogramme, valider ou corriger la classification automatique.</div>
</div>

</div>

<div style="background: #2c3e50; color: white; padding: 1rem 1.4rem; border-radius: 10px; margin-top: 1.6rem; font-size: 1.45rem; text-align: center;">
L'application doit <b>fonctionner hors-ligne</b>, être <b>portable</b> Windows / Linux / macOS, et respecter les normes d'<b>accessibilité</b> (contraste, taille, raccourcis clavier).
</div>

---

## 👨‍🔬 Le client réel : Samuel Busson (CEREMA)

<div style="display: grid; grid-template-columns: 1fr 1.7fr; gap: 1.2rem; align-items: center;">

<div style="text-align: center;">
<img src="assets/sae201/persona-samuel.webp" style="max-width: 92%; border-radius: 12px;" alt="Illustration symbolique du sujet de thèse de Samuel : un lampadaire LED, des chauves-souris et des papillons">
<div style="margin-top: 0.5rem; font-size: 1.2rem; font-weight: bold;">Doctorant écologue, CEREMA Aix</div>
</div>

<div>

<p style="font-size: 1.35rem; line-height: 1.55;">Samuel travaille au <b><a href="https://www.cerema.fr/">CEREMA</a></b>. Sa thèse porte sur l'<b>effet de l'éclairage public LED</b> sur l'activité acoustique des chiroptères.</p>

<p style="font-size: 1.35rem; line-height: 1.55;">Sa précédente campagne a généré <b>plus de 560 000 contacts</b> chiroptères, pré-traités avec des scripts R/Bash maison <em>impossibles à transmettre</em>. Pour ses prochaines campagnes, il bascule sur le <b>PR Teensy</b> et a besoin d'un outil propre que la communauté pourra reprendre.</p>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.2rem; border-radius: 10px; margin-top: 0.8rem; font-size: 1.4rem; text-align: center;">
🎯 Samuel est votre client. Vous devez <b>comprendre son besoin</b> avant de commencer à travailler.
</div>

</div>

</div>

---

<!-- _class: lead -->
<!-- _header: "" -->
<!-- _footer: "" -->

# 🎤 La parole à Samuel

<div style="margin-top: 1.2rem; font-size: 1.5rem; color: #555; max-width: 820px; margin-left: auto; margin-right: auto; line-height: 1.6;">
Samuel vient en personne nous présenter son <b>contexte de recherche</b>, le terrain qu'il observe, et ce qu'il attend de vous.
</div>

<div style="margin-top: 2rem; font-size: 1.3rem; color: #1a5276; font-weight: bold;">
🎧 À vous de l'écouter, prendre des notes, et lui poser vos questions.
</div>

---

## 👥 Trois personas - trois profils utilisateur

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.8rem 0;">Pour incarner les utilisateurs cibles, le brief définit <b>3 personas</b>. Ils diffèrent par leur volume de travail, leurs compétences techniques et leurs attentes. <b>Votre IHM doit servir les trois.</b></p>

<div style="display: grid; grid-template-columns: repeat(3, 1fr); gap: 0.9rem; margin-top: 0.4rem;">

<div style="background: white; border: 3px solid #1a5276; border-radius: 12px; padding: 0.8rem; text-align: center; display: flex; flex-direction: column;">
<img src="assets/sae201/persona-marie.webp" style="width: 140px; height: 140px; object-fit: cover; border-radius: 12px; margin: 0 auto;" alt="Marie">
<div style="font-size: 1.4rem; font-weight: bold; color: #1a5276; margin-top: 0.4rem;">Marie, 58 ans</div>
<div style="font-size: 1.1rem; color: #555; margin-top: 0.2rem;">Naturaliste retraitée bénévole, Lozère</div>
<div style="background: #ecf0f1; padding: 0.5rem; border-radius: 6px; margin-top: auto; font-size: 1.05rem; text-align: left; line-height: 1.4;">
Bénévole et amateur, elle fait 2-3 carrés/saison. Traite ses nuits le matin avec un café. <b>Veut un outil simple</b>, libellés en français, rien qui se perde.
</div>
</div>

<div style="background: white; border: 3px solid #c0392b; border-radius: 12px; padding: 0.8rem; text-align: center; display: flex; flex-direction: column;">
<img src="assets/sae201/persona-karim.webp" style="width: 140px; height: 140px; object-fit: cover; border-radius: 12px; margin: 0 auto;" alt="Karim">
<div style="font-size: 1.4rem; font-weight: bold; color: #c0392b; margin-top: 0.4rem;">Karim, 32 ans</div>
<div style="font-size: 1.1rem; color: #555; margin-top: 0.2rem;">Chargé d'études faune, bureau d'études, Lyon</div>
<div style="background: #ecf0f1; padding: 0.5rem; border-radius: 6px; margin-top: auto; font-size: 1.05rem; text-align: left; line-height: 1.4;">
5 chantiers en parallèle, dizaines de nuits/mois. <b>Veut aller vite</b> : import groupé, tags chantier, traçabilité pour les rapports.
</div>
</div>

<div style="background: white; border: 3px solid #8e44ad; border-radius: 12px; padding: 0.8rem; text-align: center; display: flex; flex-direction: column;">
<img src="assets/sae201/persona-samuel.webp" style="width: 140px; height: 140px; object-fit: cover; border-radius: 12px; margin: 0 auto;" alt="Samuel">
<div style="font-size: 1.4rem; font-weight: bold; color: #8e44ad; margin-top: 0.4rem;">Samuel</div>
<div style="font-size: 1.1rem; color: #555; margin-top: 0.2rem;">Doctorant écologue, CEREMA Aix</div>
<div style="background: #ecf0f1; padding: 0.5rem; border-radius: 6px; margin-top: auto; font-size: 1.05rem; text-align: left; line-height: 1.4;">
Volumes très lourds, exigences scientifiques. <b>Veut un outil partageable</b> et durable pour la communauté des chiroptérophiles.
</div>
</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.8rem; font-size: 1.4rem; text-align: center;">
Personas <a href="https://iutinfoaix-s201.github.io/brief/Analyse%20et%20conception/Personas/">fichés en détail dans le brief</a> : besoins, frustrations, attentes.
</div>

---

## 🚂 La chaîne fil rouge MUST (P1 → P4)

<p style="font-size: 1.45rem; margin: -0.5rem 0 0.7rem 0;">4 parcours utilisateurs enchaînés - c'est votre <b>scénario de démo</b> en soutenance.</p>

<div style="display: grid; grid-template-columns: 1fr 3rem 1fr 3rem 1fr 3rem 1fr; gap: 0.9rem 0.3rem; align-items: stretch; margin: 1.2rem 0 0 0;">

<div style="background: #1e8449; color: white; padding: 1.4rem 0.8rem; border-radius: 12px; text-align: center;">
<div style="font-size: 3.4rem; line-height: 1;">🌐</div>
<div style="font-size: 1.5rem; font-weight: bold; margin-top: 0.7rem;">P1</div>
<div style="font-size: 1.15rem; margin-top: 0.3rem;">Déclarer un site</div>
</div>

<div style="text-align: center; font-size: 3rem; color: #1e8449; font-weight: bold; align-self: center;">→</div>

<div style="background: #1e8449; color: white; padding: 1.4rem 0.8rem; border-radius: 12px; text-align: center;">
<div style="font-size: 3.4rem; line-height: 1;">📥</div>
<div style="font-size: 1.5rem; font-weight: bold; margin-top: 0.7rem;">P2</div>
<div style="font-size: 1.15rem; margin-top: 0.3rem;">Importer une nuit</div>
</div>

<div style="text-align: center; font-size: 3rem; color: #1e8449; font-weight: bold; align-self: center;">→</div>

<div style="background: #1e8449; color: white; padding: 1.4rem 0.8rem; border-radius: 12px; text-align: center;">
<div style="font-size: 3.4rem; line-height: 1;">🎧</div>
<div style="font-size: 1.5rem; font-weight: bold; margin-top: 0.7rem;">P3</div>
<div style="font-size: 1.15rem; margin-top: 0.3rem;">Vérifier par échantillon</div>
</div>

<div style="text-align: center; font-size: 3rem; color: #1e8449; font-weight: bold; align-self: center;">→</div>

<div style="background: #1e8449; color: white; padding: 1.4rem 0.8rem; border-radius: 12px; text-align: center;">
<div style="font-size: 3.4rem; line-height: 1;">📦</div>
<div style="font-size: 1.5rem; font-weight: bold; margin-top: 0.7rem;">P4</div>
<div style="font-size: 1.15rem; margin-top: 0.3rem;">Préparer le lot</div>
</div>

<div style="background: #d5f5e3; padding: 0.8rem; border-radius: 8px; font-size: 1.15rem; line-height: 1.45;">N° carré + codes des points d'écoute.</div>
<div></div>
<div style="background: #d5f5e3; padding: 0.8rem; border-radius: 8px; font-size: 1.15rem; line-height: 1.45;">Copie protégée + rename + transformation ×10.</div>
<div></div>
<div style="background: #d5f5e3; padding: 0.8rem; border-radius: 8px; font-size: 1.15rem; line-height: 1.45;">Sound check + verdict OK / Douteux / À jeter.</div>
<div></div>
<div style="background: #d5f5e3; padding: 0.8rem; border-radius: 8px; font-size: 1.15rem; line-height: 1.45;">Vérif cohérence + ouverture dossier + marquage déposé.</div>

</div>

<div style="background: #2c3e50; color: white; padding: 1rem 1.4rem; border-radius: 10px; margin-top: 1.3rem; font-size: 1.45rem; text-align: center;">
👉 Si vous livrez cette chaîne <b>de bout-en-bout</b>, le MVP est atteint.
</div>

---

## 📊 Périmètre projet - priorisation MoSCoW

<p style="font-size: 1.45rem; margin: -0.5rem 0 0.6rem 0;">Le <b>cahier des charges fonctionnel</b> a été arbitré selon la méthode <a href="https://fr.wikipedia.org/wiki/M%C3%A9thode_MoSCoW">MoSCoW</a> : chaque fonctionnalité reçoit une priorité explicite. Vous avez <b>13 jours ouvrés</b> de dév exclusif. Le MUST est non-négociable.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr 1fr 1fr; gap: 1rem; margin-top: 1.2rem;">

<div style="background: #1e8449; color: white; padding: 1.4rem 1rem; border-radius: 12px; text-align: center;">
<div style="font-size: 3rem; line-height: 1;">✅</div>
<div style="font-size: 1.7rem; font-weight: bold; margin-top: 0.6rem;">MUST</div>
<div style="font-size: 1.2rem; margin-top: 0.7rem; line-height: 1.5; text-align: left;">Chaîne fil rouge P1→P4 + base de données. Sans cela, <b>pas de prototype livrable</b>.</div>
</div>

<div style="background: #e67e22; color: white; padding: 1.4rem 1rem; border-radius: 12px; text-align: center;">
<div style="font-size: 3rem; line-height: 1;">🟠</div>
<div style="font-size: 1.7rem; font-weight: bold; margin-top: 0.6rem;">SHOULD</div>
<div style="font-size: 1.2rem; margin-top: 0.7rem; line-height: 1.5; text-align: left;">Navigation tabulaire, diagnostic matériel, validation Tadarida (filet de sécurité), annotations météo.</div>
</div>

<div style="background: #7f8c8d; color: white; padding: 1.4rem 1rem; border-radius: 12px; text-align: center;">
<div style="font-size: 3rem; line-height: 1;">⚪</div>
<div style="font-size: 1.7rem; font-weight: bold; margin-top: 0.6rem;">COULD</div>
<div style="font-size: 1.2rem; margin-top: 0.7rem; line-height: 1.5; text-align: left;">Re-rattachement rétroactif, regroupement de nuits, bibliothèque de sons, stats globales.</div>
</div>

<div style="background: #34495e; color: white; padding: 1.4rem 1rem; border-radius: 12px; text-align: center;">
<div style="font-size: 3rem; line-height: 1;">⛔</div>
<div style="font-size: 1.7rem; font-weight: bold; margin-top: 0.6rem;">WON'T</div>
<div style="font-size: 1.2rem; margin-top: 0.7rem; line-height: 1.5; text-align: left;">API Vigie-Chiro, multi-utilisateur, cloud, classification automatique, web/mobile.</div>
</div>

</div>

<div style="background: #2c3e50; color: white; padding: 1rem 1.4rem; border-radius: 10px; margin-top: 1.4rem; font-size: 1.4rem; text-align: center;">
🎯 Une <b>démo convaincante bout-en-bout</b> + un <b>plan d'action explicite</b> sur ce qui reste pèsent autant qu'un MUST 100 % livré sans plus.
</div>

---

## ⚙️ Stack technique imposée + composant fourni

<p style="font-size: 1.45rem; margin: -0.5rem 0 0.6rem 0;">Vous démarrez sur une base <b>déjà câblée</b> : pas de scaffolding à faire vous-même, vous vous concentrez sur la chaîne métier et votre code.</p>

<div style="display: grid; grid-template-columns: 1.15fr 1fr; gap: 1.5rem; margin-top: 1.2rem;">

<div style="display: flex; flex-direction: column;">

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 0.8rem;">
<div style="background: #1a5276; color: white; padding: 1rem; border-radius: 10px; text-align: center; font-size: 1.35rem;"><b>Java 25</b></div>
<div style="background: #1a5276; color: white; padding: 1rem; border-radius: 10px; text-align: center; font-size: 1.35rem;"><b>JavaFX 25 + FXML</b></div>
<div style="background: #1a5276; color: white; padding: 1rem; border-radius: 10px; text-align: center; font-size: 1.35rem;"><b>JDBC + SQLite</b></div>
<div style="background: #1a5276; color: white; padding: 1rem; border-radius: 10px; text-align: center; font-size: 1.35rem;"><b>Maven Wrapper</b></div>
<div style="background: #1a5276; color: white; padding: 1rem; border-radius: 10px; text-align: center; font-size: 1.35rem;"><b>JUnit 5 + AssertJ + TestFX</b></div>
<div style="background: #1a5276; color: white; padding: 1rem; border-radius: 10px; text-align: center; font-size: 1.35rem;"><b>Spotless + GitHub Actions</b></div>
</div>

<div style="background: #27ae60; color: white; padding: 1.2rem 1.4rem; border-radius: 12px; margin-top: 1.2rem; display: flex; align-items: center; gap: 1.1rem;">
<div style="font-size: 3rem; line-height: 1; flex-shrink: 0;">🎁</div>
<div style="font-size: 1.4rem; line-height: 1.5;">Le dépôt Classroom n'est <b>pas vide</b> : app JavaFX qui démarre, Maven prêt, CI verte, Spotless en pre-commit, README de démarrage.</div>
</div>

</div>

<div style="background: #8e44ad; color: white; padding: 1.6rem 1.5rem; border-radius: 12px; display: flex; flex-direction: column;">

<div style="display: flex; align-items: center; gap: 1.2rem;">
<div style="font-size: 4rem; line-height: 1; flex-shrink: 0;">🔊</div>
<div style="font-size: 1.7rem; font-weight: bold;">Composant audio fourni</div>
</div>

<div style="font-size: 1.4rem; line-height: 1.55; margin-top: 1rem;">Un composant JavaFX qui prend un WAV en entrée et affiche le <b>sonogramme</b> et le <b>spectrogramme</b> avec curseur de lecture synchronisé et zoom temps/fréquence.</div>

<div style="font-size: 1.4rem; line-height: 1.5; margin-top: 0.8rem; opacity: 0.95;">Vous l'<b>intégrez</b> dans votre IHM, vous ne le réimplémentez pas (malheureusement pour les plus matheux, vous n'aurez pas de FFT à coder).</div>

</div>

</div>

---

## 📦 Données fournies : nuit d'enregistrement du 22-23 avril 2026

<p style="font-size: 1.45rem; margin: -0.5rem 0 0.6rem 0;">PR n° <b>1925492</b>, point fixe en zone Z1 du carré 640380. Deux variantes pour deux usages.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.5rem; margin-top: 1.2rem;">

<div style="background: #27ae60; color: white; padding: 1.3rem 1.4rem; border-radius: 12px; text-align: center; display: flex; flex-direction: column;">
<div style="font-size: 2.8rem; line-height: 1;">📦</div>
<div style="font-size: 1.7rem; font-weight: bold; margin-top: 0.7rem;">Sample versionné dans le dépôt</div>
<div style="font-size: 1.4rem; font-weight: bold; margin-top: 0.4rem; opacity: 0.95;">~518 Mo</div>
<div style="font-size: 1.25rem; line-height: 1.55; margin-top: 0.8rem; text-align: left;">191 WAV redécoupés et le CSV Tadarida (473 observations couvrant les principales espèces de chauves-souris). Disponibles immédiatement dans votre repo. Suffit pour la CI et les tests.</div>
</div>

<div style="background: #2980b9; color: white; padding: 1.3rem 1.4rem; border-radius: 12px; text-align: center; display: flex; flex-direction: column;">
<div style="font-size: 2.8rem; line-height: 1;">📥</div>
<div style="font-size: 1.7rem; font-weight: bold; margin-top: 0.7rem;">Full dataset à télécharger</div>
<div style="font-size: 1.4rem; font-weight: bold; margin-top: 0.4rem; opacity: 0.95;">~4,2 Go zip / ~11 Go décompressé</div>
<div style="font-size: 1.25rem; line-height: 1.55; margin-top: 0.8rem; text-align: left;">1572 WAV bruts, 2109 WAV redécoupés et le CSV Tadarida (4031 observations). Indispensable pour valider les <b>objectifs de volumétrie</b>.</div>
</div>

</div>

<div style="background: #8c3a2f; color: white; padding: 1.2rem 1.4rem; border-radius: 12px; margin-top: 1.4rem; display: flex; align-items: center; gap: 1.1rem;">
<div style="font-size: 2.8rem; line-height: 1; flex-shrink: 0;">⚠️</div>
<div style="font-size: 1.4rem; line-height: 1.5;">Lien <b>Filesender RENATER expire le 15/06/2026</b>. Téléchargez le dataset <b>dès le début</b> de la SAE.</div>
</div>

---

## 📅 Calendrier 2026

<p style="font-size: 1.45rem; margin: -0.5rem 0 0.6rem 0;">3 phases du 22 mai au 18 juin 2026, dont seulement <b>13 jours ouvrés</b> de travail exclusif sur la SAE.</p>

<div style="display: flex; flex-direction: column; gap: 0.8rem; margin-top: 1.2rem;">

<div style="background: #b7950b; color: white; padding: 1rem 1.3rem; border-radius: 12px;">
<div style="display: flex; justify-content: space-between; align-items: center;">
<div style="font-size: 1.5rem; font-weight: bold;">🟡 Phase 1 - Amorçage</div>
<div style="font-size: 1.35rem; font-weight: bold; opacity: 0.95;">22/05 → 31/05</div>
</div>
<div style="margin-top: 0.5rem; font-size: 1.2rem; line-height: 1.55;">
<b>22/05</b> : présentation du brief (aujourd'hui) • <b>22/05 → 31/05</b> : lecture du brief, formation des équipes par les enseignants des SAÉ 2.01 et 2.03, réception des composants du PR
</div>
</div>

<div style="background: #8c3a2f; color: white; padding: 1rem 1.3rem; border-radius: 12px;">
<div style="display: flex; justify-content: space-between; align-items: center;">
<div style="font-size: 1.5rem; font-weight: bold;">🔴 Phase 2 - Travail exclusif (13 jours)</div>
<div style="font-size: 1.35rem; font-weight: bold; opacity: 0.95;">01/06 → 17/06</div>
</div>
<div style="margin-top: 0.5rem; font-size: 1.2rem; line-height: 1.55;">
<b>01/06 → 09/06</b> : Sprint 1 - chaîne fil rouge MUST • <b>10/06 → 17/06</b> : Sprint 2 - finition + SHOULD opportunistes • <b>en parallèle</b> : assemblage du PR (par les équipes si possible)
</div>
</div>

<div style="background: #1e8449; color: white; padding: 1rem 1.3rem; border-radius: 12px;">
<div style="display: flex; justify-content: space-between; align-items: center;">
<div style="font-size: 1.5rem; font-weight: bold;">🟢 Phase 3 - Livraison + soutenance</div>
<div style="font-size: 1.35rem; font-weight: bold; opacity: 0.95;">18/06/2026</div>
</div>
<div style="margin-top: 0.5rem; font-size: 1.2rem; line-height: 1.55;">
<b>Avant 8h</b> : code freeze + diaporama déposé • <b>8h - 10h</b> : test individuel R2.02 / R2.03 • <b>10h - 12h et 13h - 18h</b> : soutenances + démos
</div>
</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 10px; margin-top: 1.2rem; font-size: 1.35rem; text-align: center;">
👉 <b>13 jours c'est court.</b> La chaîne fil rouge est une cible <b>idéale exigeante</b>, pas une obligation absolue.
</div>

---

## 🎓 Évaluation - R2.02 + R2.03 conjoints

<p style="font-size: 1.45rem; margin: -0.5rem 0 0.6rem 0;">Deux temps d'évaluation, qui comptent <b>à la fois pour R2.02</b> (IHM, JavaFX, MVVM) <b>et pour R2.03</b> (qualité, tests, hygiène Git).</p>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.5rem; margin-top: 1.2rem;">

<div style="background: #1a5276; color: white; padding: 1.6rem 1.4rem; border-radius: 12px; display: flex; flex-direction: column;">

<div style="display: flex; align-items: center; gap: 1.2rem;">
<div style="font-size: 3.2rem; line-height: 1; flex-shrink: 0;">📦</div>
<div style="font-size: 1.7rem; font-weight: bold;">Phase 1 - Code livré</div>
</div>

<div style="font-size: 1.25rem; line-height: 1.55; margin-top: 1rem;">Dépôt Git évalué <b>simultanément</b> pour R2.02 (IHM JavaFX, FXML, MVVM) et R2.03 (qualité, tests, hygiène Git, PR/review).</div>
<div style="font-size: 1.2rem; line-height: 1.5; margin-top: 0.7rem; opacity: 0.95;">Code métier, JDBC, IHM JavaFX, tests TestFX et README clair. L'intégration continue doit être verte.</div>

</div>

<div style="background: #8e44ad; color: white; padding: 1.6rem 1.4rem; border-radius: 12px; display: flex; flex-direction: column;">

<div style="display: flex; align-items: center; gap: 1.2rem;">
<div style="font-size: 3.2rem; line-height: 1; flex-shrink: 0;">🎤</div>
<div style="font-size: 1.7rem; font-weight: bold;">Phase 2 - Soutenance</div>
</div>

<div style="font-size: 1.25rem; line-height: 1.55; margin-top: 1rem;"><b>10 min</b> d'oral par équipe + diaporama + démo en direct sur le jeu de données fourni.</div>
<div style="font-size: 1.2rem; line-height: 1.5; margin-top: 0.7rem; opacity: 0.95;"><b>Chacun prend la parole</b> et sera interrogé individuellement sur les apprentissages critiques.</div>

</div>

</div>

<div style="background: #27ae60; color: white; padding: 1rem 1.4rem; border-radius: 12px; margin-top: 1.4rem; display: flex; align-items: center; gap: 1.1rem;">
<div style="font-size: 2.8rem; line-height: 1; flex-shrink: 0;">🤖</div>
<div style="font-size: 1.3rem; line-height: 1.5;">
<div><b>Assistant IA</b> (Copilot / Claude Code / ChatGPT Codex) <b>autorisé sous 2 conditions</b> :</div>
<div style="margin-top: 0.4rem;">① <b>Maîtriser votre code</b> - interrogation individuelle en soutenance.</div>
<div>② <b>Citer explicitement et exhaustivement</b> les apports de l'IA dans le README.</div>
</div>
</div>

---

## 🚀 Vos prochaines étapes

<p style="font-size: 1.45rem; margin: -0.5rem 0 0.6rem 0;">4 actions concrètes à mener pendant la phase d'amorçage avant le démarrage exclusif du <b>01/06</b>.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.2rem; margin-top: 1rem;">

<div style="background: #1a5276; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="display: flex; align-items: center; gap: 1rem;">
<div style="font-size: 2.6rem; line-height: 1; flex-shrink: 0;">📖</div>
<div style="font-size: 1.5rem; font-weight: bold;">1. Lire le brief en entier</div>
</div>
<div style="font-size: 1.2rem; line-height: 1.5; margin-top: 0.6rem;">Présentation, contraintes techniques, expression du besoin, et surtout le <b>dossier d'analyse</b> (personas, parcours, story mapping, périmètre MVP, maquettes).</div>
</div>

<div style="background: #1a5276; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="display: flex; align-items: center; gap: 1rem;">
<div style="font-size: 2.6rem; line-height: 1; flex-shrink: 0;">👥</div>
<div style="font-size: 1.5rem; font-weight: bold;">2. Découvrir votre équipe</div>
</div>
<div style="font-size: 1.2rem; line-height: 1.5; margin-top: 0.6rem;">Annoncée par les enseignants. Chacun contribue <b>techniquement</b> : pas de répartition « code / rédac / présentation ». Rappelez-vous qu'il est <b>difficile de faire mentir GitHub</b>.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="display: flex; align-items: center; gap: 1rem;">
<div style="font-size: 2.6rem; line-height: 1; flex-shrink: 0;">✅</div>
<div style="font-size: 1.5rem; font-weight: bold;">3. Accepter le lien Classroom</div>
</div>
<div style="font-size: 1.2rem; line-height: 1.5; margin-top: 0.6rem;">Un dépôt sera créé dans <code>IUTInfoAix-S201-2026</code>. C'est dans ce dépôt <b>et nulle part ailleurs</b> que vous travaillerez en équipe en appliquant le GitHub Flow.</div>
</div>

<div style="background: #8c3a2f; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="display: flex; align-items: center; gap: 1rem;">
<div style="font-size: 2.6rem; line-height: 1; flex-shrink: 0;">📥</div>
<div style="font-size: 1.5rem; font-weight: bold;">4. Télécharger le full dataset</div>
</div>
<div style="font-size: 1.2rem; line-height: 1.5; margin-top: 0.6rem;">Lien Filesender <b>expire le 15/06/2026</b>. Récupérez l'archive ~4,2 Go <b>dès le sprint 0</b>.</div>
</div>

</div>

<div style="background: #2c3e50; color: white; padding: 1rem 1.4rem; border-radius: 12px; margin-top: 1.4rem; font-size: 1.55rem; text-align: center;">
📘 Brief complet en ligne : <a href="https://iutinfoaix-s201.github.io/brief/" style="color: #f1c40f;"><b>iutinfoaix-s201.github.io/brief</b></a>
</div>

---

<!-- _class: lead -->
<!-- _header: "" -->
<!-- _footer: "" -->

# 📚 Et maintenant, place au CM4

## *MVVM, persistance et synthèse*

<div style="margin: 1.3rem auto 0 auto; font-size: 1.4rem; color: #555; max-width: 900px; line-height: 1.55;">
Les <b>4 fondations techniques</b> qui vous serviront directement à construire le <em>VigieChiro PR Companion</em> :
</div>

<div style="display: grid; grid-template-columns: repeat(4, 1fr); gap: 1rem; max-width: 900px; margin: 1.2rem auto 0 auto;">

<div style="background: #1a5276; color: white; padding: 1.2rem 0.8rem; border-radius: 12px; text-align: center;">
<div style="font-size: 2.8rem; line-height: 1;">🏗️</div>
<div style="font-size: 1.2rem; font-weight: bold; margin-top: 0.5rem;">Architecture MVVM</div>
</div>

<div style="background: #1a5276; color: white; padding: 1.2rem 0.8rem; border-radius: 12px; text-align: center;">
<div style="font-size: 2.8rem; line-height: 1;">💉</div>
<div style="font-size: 1.2rem; font-weight: bold; margin-top: 0.5rem;">Injection de dépendances</div>
</div>

<div style="background: #1a5276; color: white; padding: 1.2rem 0.8rem; border-radius: 12px; text-align: center;">
<div style="font-size: 2.8rem; line-height: 1;">💾</div>
<div style="font-size: 1.2rem; font-weight: bold; margin-top: 0.5rem;">JDBC + SQLite</div>
</div>

<div style="background: #1a5276; color: white; padding: 1.2rem 0.8rem; border-radius: 12px; text-align: center;">
<div style="font-size: 2.8rem; line-height: 1;">🧠</div>
<div style="font-size: 1.2rem; font-weight: bold; margin-top: 0.5rem;">Prévention des erreurs</div>
</div>

</div>

---

<!-- _class: lead -->
<!-- _paginate: false -->

<style scoped>
section {
  background-image: url('assets/logo-amu.png');
  background-repeat: no-repeat;
  background-position: bottom 40px center;
  background-size: 380px;
}
</style>

# 💥 MVVM, persistance et synthèse 💥

**R2.02 - Développement d'applications avec IHM**

---

## Où en sommes-nous ?

<div style="display: flex; gap: 0.8rem; margin-top: 0.5rem; margin-bottom: 0.5rem; text-align: center; font-size: 2.5rem; line-height: 1;">
<div style="flex: 1;">&nbsp;</div>
<div style="flex: 1;">&nbsp;</div>
<div style="flex: 1;">&nbsp;</div>
<div style="flex: 1;">👇</div>
</div>

<div style="display: flex; gap: 0.8rem;">
<div style="background: #4a90d9; color: white; padding: 1.2rem; border-radius: 12px 12px 0 0; flex: 1; text-align: center;">
<div style="font-size: 1.8rem; font-weight: bold;">CM1 ✓</div>
<div style="margin-top: 0.3rem;">Fondations IHM + JavaFX</div>
</div>
<div style="background: #e8a838; color: white; padding: 1.2rem; border-radius: 12px 12px 0 0; flex: 1; text-align: center;">
<div style="font-size: 1.8rem; font-weight: bold;">CM2 ✓</div>
<div style="margin-top: 0.3rem;">Propriétés et bindings</div>
</div>
<div style="background: #27ae60; color: white; padding: 1.2rem; border-radius: 12px 12px 0 0; flex: 1; text-align: center;">
<div style="font-size: 1.8rem; font-weight: bold;">CM3 ✓</div>
<div style="margin-top: 0.3rem;">Architecture et FXML</div>
</div>
<div style="background: #8e44ad; color: white; padding: 1.2rem; border-radius: 12px 12px 0 0; flex: 1; text-align: center; box-shadow: 0 4px 12px rgba(142,68,173,0.4);">
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
TP1 ✓
</div>
<div style="background: #fae5c0; color: #8a6a1f; padding: 0.8rem; border-radius: 0 0 12px 12px; flex: 1; text-align: center; font-weight: bold;">
TP2 ✓
</div>
<div style="background: #c8e6c9; color: #1b5e20; padding: 0.8rem; border-radius: 0 0 12px 12px; flex: 1; text-align: center; font-weight: bold;">
TP3 ✓
</div>
<div style="background: #e1bee7; color: #5c2473; padding: 0.8rem; border-radius: 0 0 12px 12px; flex: 1; text-align: center; font-weight: bold;">
TP4 + TP5
</div>
</div>

<div style="display: flex; gap: 0.8rem; margin-top: 0.5rem; text-align: center; font-size: 2.5rem; line-height: 1;">
<div style="flex: 1;">&nbsp;</div>
<div style="flex: 1;">&nbsp;</div>
<div style="flex: 1;">&nbsp;</div>
<div style="flex: 1;">👆</div>
</div>

---

## Rappel CM3 - Ce que vous savez déjà

<div style="display: grid; grid-template-columns: 1fr 1fr 1fr; gap: 1.5rem; margin-top: 1.5rem;">

<div style="background: #1a5276; color: white; padding: 1.6rem 1.4rem; border-radius: 12px; text-align: center; display: flex; flex-direction: column;">
<div style="font-size: 3.2rem; line-height: 1;">🏗️</div>
<div style="font-size: 1.7rem; font-weight: bold; margin-top: 0.7rem;">MVC</div>
<div style="font-size: 1.35rem; line-height: 1.55; margin-top: 0.8rem; text-align: left; opacity: 0.95;"><b>Modèle</b> métier, <b>Vue</b> en FXML, <b>Contrôleur</b> qui orchestre. Trois fichiers, trois responsabilités.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1.6rem 1.4rem; border-radius: 12px; text-align: center; display: flex; flex-direction: column;">
<div style="font-size: 3.2rem; line-height: 1;">📄</div>
<div style="font-size: 1.7rem; font-weight: bold; margin-top: 0.7rem;">FXML</div>
<div style="font-size: 1.35rem; line-height: 1.55; margin-top: 0.8rem; text-align: left; opacity: 0.95;">La vue déclarative, <code>@FXML</code>, <code>fx:controller</code>, <code>onAction</code>, <code>fx:include</code>. Édition possible via SceneBuilder.</div>
</div>

<div style="background: #27ae60; color: white; padding: 1.6rem 1.4rem; border-radius: 12px; text-align: center; display: flex; flex-direction: column;">
<div style="font-size: 3.2rem; line-height: 1;">🧠</div>
<div style="font-size: 1.7rem; font-weight: bold; margin-top: 0.7rem;">Cohérence</div>
<div style="font-size: 1.35rem; line-height: 1.55; margin-top: 0.8rem; text-align: left; opacity: 0.95;">Heuristique #4 de Nielsen. Mutualiser FXML+CSS, créer un <b>design system</b>, prévenir l'incohérence.</div>
</div>

</div>

<div style="background: #2c3e50; color: white; padding: 1rem 1.4rem; border-radius: 12px; margin-top: 1.5rem; font-size: 1.5rem; text-align: center;">
Aujourd'hui : combiner <b>MVC + bindings</b> pour aller vers <b>MVVM</b>, ajouter la <b>persistance</b>, et faire la <b>synthèse</b> du module.
</div>

---

## À la fin du CM4, vous saurez...

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1rem; margin-top: 0.8rem;">

<div style="background: #1a5276; color: white; padding: 1rem 1.3rem; border-radius: 12px;">
<div style="display: flex; justify-content: space-between; align-items: center;">
<div style="font-size: 1.8rem; font-weight: bold;">🏗️ Concevoir</div>
<div style="background: rgba(0,0,0,0.25); padding: 0.3rem 0.7rem; border-radius: 6px; font-size: 1rem;">Partie 2</div>
</div>
<div style="font-size: 1.25rem; line-height: 1.5; margin-top: 0.5rem;">Une architecture <b>MVVM</b> avec un <b>ViewModel</b> qui expose des propriétés observables et reste testable sans JavaFX.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1rem 1.3rem; border-radius: 12px;">
<div style="display: flex; justify-content: space-between; align-items: center;">
<div style="font-size: 1.8rem; font-weight: bold;">💉 Injecter</div>
<div style="background: rgba(0,0,0,0.25); padding: 0.3rem 0.7rem; border-radius: 6px; font-size: 1rem;">Partie 3</div>
</div>
<div style="font-size: 1.25rem; line-height: 1.5; margin-top: 0.5rem;">Les dépendances avec <b>Guice 7</b> : <code>@Inject</code>, <code>Module</code>, scopes, alternative au <code>new</code> en cascade.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1rem 1.3rem; border-radius: 12px;">
<div style="display: flex; justify-content: space-between; align-items: center;">
<div style="font-size: 1.8rem; font-weight: bold;">💾 Persister</div>
<div style="background: rgba(0,0,0,0.25); padding: 0.3rem 0.7rem; border-radius: 6px; font-size: 1rem;">Partie 4</div>
</div>
<div style="font-size: 1.25rem; line-height: 1.5; margin-top: 0.5rem;">Un modèle métier en base relationnelle avec <b>JDBC</b> (Connection, PreparedStatement, ResultSet, transactions), et lancer la BDD localement avec <b>SQLite</b>.</div>
</div>

<div style="background: #27ae60; color: white; padding: 1rem 1.3rem; border-radius: 12px;">
<div style="display: flex; justify-content: space-between; align-items: center;">
<div style="font-size: 1.8rem; font-weight: bold;">🧠 Prévenir</div>
<div style="background: rgba(0,0,0,0.25); padding: 0.3rem 0.7rem; border-radius: 6px; font-size: 1rem;">Partie 5</div>
</div>
<div style="font-size: 1.25rem; line-height: 1.5; margin-top: 0.5rem;">Les erreurs utilisateur (Nielsen #5) et permettre de bien <b>récupérer</b> quand elles surviennent (Nielsen #9), avec des interfaces tolérantes.</div>
</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.8rem 1.4rem; border-radius: 12px; margin-top: 0.9rem; font-size: 1.4rem; text-align: center;">
<em>Niveau Bloom : Créer / Évaluer</em> - TP4 et TP5 vous demandent d'<b>assembler</b> et de <b>juger</b> les choix d'architecture.
</div>

---

<!-- _class: lead -->
<!-- _header: "" -->
<!-- _footer: "" -->

# Partie 1 - 🤔 Le problème

---

## MVC en pratique : le contrôleur reste la zone grise

<style scoped>
section pre { font-size: 0.5rem !important; line-height: 1.35 !important; }
</style>

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.6rem 0;">Au CM3, on a découpé en M, V, C. Mais le <b>contrôleur</b> finit par mélanger plusieurs responsabilités quand l'écran se complexifie.</p>

```java
public class FormulaireController {
  @FXML private TextField email;
  @FXML private PasswordField motDePasse;
  @FXML private Button valider;
  @FXML private Label statut;
  
  private final ServiceAuth auth = new ServiceAuthImpl();   // ❌ couplage dur
  private final HistoriqueConnexion historique = new HistoriqueConnexionDB(); // ❌ idem

  @FXML void initialize() {
    valider.disableProperty().bind(email.textProperty().isEmpty());
  }

  @FXML void valider() {
    statut.setText("Connexion en cours...");           // ❌ état UI dans le contrôleur
    boolean ok = auth.connecter(email.getText(), motDePasse.getText()); // ❌ logique
    if (ok) {
      historique.enregistrer(email.getText(), LocalDateTime.now());     // ❌ effet de bord
      statut.setText("Bienvenue " + email.getText().split("@")[0]);     // ❌ UI + logique
    } 
  }
}
```

---

## Trois douleurs concrètes

<div style="display: grid; grid-template-columns: 1fr 1fr 1fr; gap: 1.5rem; margin-top: 1.2rem;">

<div style="background: #8c3a2f; color: white; padding: 1.6rem 1.4rem; border-radius: 12px; text-align: center; display: flex; flex-direction: column;">
<div style="font-size: 3.2rem; line-height: 1;">😵</div>
<div style="font-size: 1.7rem; font-weight: bold; margin-top: 0.7rem;">Tests difficiles</div>
<div style="font-size: 1.2rem; line-height: 1.55; margin-top: 0.8rem; text-align: left; opacity: 0.95;">Pour tester la logique de validation, il faut monter une <code>Application</code> JavaFX, charger le FXML, simuler les saisies. Lent, fragile.</div>
</div>

<div style="background: #8c3a2f; color: white; padding: 1.6rem 1.4rem; border-radius: 12px; text-align: center; display: flex; flex-direction: column;">
<div style="font-size: 3.2rem; line-height: 1;">🔗</div>
<div style="font-size: 1.7rem; font-weight: bold; margin-top: 0.7rem;">Couplage fort</div>
<div style="font-size: 1.2rem; line-height: 1.55; margin-top: 0.8rem; text-align: left; opacity: 0.95;">Le contrôleur instancie <code>ServiceAuthImpl</code> directement. Impossible de le remplacer par un mock pour tester, ou par une autre implémentation en prod.</div>
</div>

<div style="background: #8c3a2f; color: white; padding: 1.6rem 1.4rem; border-radius: 12px; text-align: center; display: flex; flex-direction: column;">
<div style="font-size: 3.2rem; line-height: 1;">📐</div>
<div style="font-size: 1.7rem; font-weight: bold; margin-top: 0.7rem;">Logique éparpillée</div>
<div style="font-size: 1.2rem; line-height: 1.55; margin-top: 0.8rem; text-align: left; opacity: 0.95;">L'état « connexion en cours », les messages, le formatage du nom : tout vit dans des branches <code>if</code> du contrôleur. Pas réutilisable.</div>
</div>

</div>

<div style="background: #2c3e50; color: white; padding: 1rem 1.4rem; border-radius: 12px; margin-top: 1.2rem; font-size: 1.5rem; text-align: center;">
💡 Le contrôleur est devenu un <b>fat controller</b> : il fait trop de choses, donc rien ne peut être testé ni réutilisé en isolation.
</div>

---

## La pyramide des tests

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Plus un test est <b>haut</b> dans la pyramide, plus il coûte cher à écrire et à exécuter. L'objectif : maximiser la base pour pouvoir lancer les tests le plus souvent possible.</p>

<div style="display: grid; grid-template-columns: 1fr 1.3fr; column-gap: 1.5rem; row-gap: 0.5rem; margin: 4.2rem 0;">

<div style="background: #e74c3c; color: #fff; padding: 0.8rem; width: 45%; margin: 0 auto; text-align: center; border-radius: 6px; font-size: 1.2rem; display: flex; align-items: center; justify-content: center; box-sizing: border-box;">E2E <span style="opacity: 0.85; margin-left: 0.3rem;">(peu)</span></div>
<div style="background: #fdecea; padding: 0.8rem 1rem; border-radius: 8px; border-left: 4px solid #e74c3c; font-size: 1.15rem; display: flex; align-items: center;">
<span><b>E2E</b> : lance toute l'app, simule clavier/souris. Lent (10-30 s/test), fragile.</span>
</div>

<div style="background: #e8a838; color: #fff; padding: 0.8rem; width: 65%; margin: 0 auto; text-align: center; border-radius: 6px; font-size: 1.3rem; display: flex; align-items: center; justify-content: center; box-sizing: border-box;">Intégration / TestFX <span style="opacity: 0.85; margin-left: 0.3rem;">(moyen)</span></div>
<div style="background: #f9f5e8; padding: 0.8rem 1rem; border-radius: 8px; border-left: 4px solid #e8a838; font-size: 1.15rem; display: flex; align-items: center;">
<span><b>Intégration / TestFX</b> : monte une partie de l'UI. Moyennement coûteux (1-3 s).</span>
</div>

<div style="background: #27ae60; color: #fff; padding: 0.8rem; width: 90%; margin: 0 auto; text-align: center; border-radius: 6px; font-size: 1.4rem; font-weight: bold; box-shadow: 0 0 0 3px rgba(39, 174, 96, 0.25); display: flex; align-items: center; justify-content: center; box-sizing: border-box;">Unitaires (JUnit) <span style="opacity: 0.9; margin-left: 0.3rem;">(la base, beaucoup)</span></div>
<div style="background: #e8f6ec; padding: 0.8rem 1rem; border-radius: 8px; border-left: 4px solid #27ae60; font-size: 1.15rem; display: flex; align-items: center;">
<span><b>Unitaires (JUnit)</b> : JUnit pur sur classes Java. Ultra rapide (&lt; 50 ms), 100% fiables.</span>
</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.2rem; border-radius: 12px; margin-top: 1rem; font-size: 1.5rem; text-align: center;">
🎯 <b>MVVM permet de basculer la logique d'affichage du haut vers la base de la pyramide.</b>
</div>

---

## L'idée de MVVM : interposer un ViewModel

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">On insère une couche entre la vue et le modèle : le <b>ViewModel</b>. Il porte l'<b>état UI</b> sous forme de propriétés observables.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.5rem; margin-top: 1.2rem;">

<div style="background: #8c3a2f; color: white; padding: 1.6rem 1.4rem; border-radius: 12px; text-align: center; display: flex; flex-direction: column;">
<div style="font-size: 3rem; line-height: 1;">📍</div>
<div style="font-size: 1.7rem; font-weight: bold; margin-top: 0.7rem;">MVC (CM3)</div>
<div style="font-size: 1.5rem; line-height: 1.55; margin-top: 0.8rem; text-align: left; opacity: 0.95;">Vue ↔ <b>Contrôleur</b> ↔ Modèle.<br/>Le contrôleur connaît la vue ET le modèle. Il doit parler aux deux tout en ayant une responsabilité forte sur le comportement de la vue.</div>
</div>

<div style="background: #8e44ad; color: white; padding: 1.6rem 1.4rem; border-radius: 12px; text-align: center; display: flex; flex-direction: column;">
<div style="font-size: 3rem; line-height: 1;">🎯</div>
<div style="font-size: 1.7rem; font-weight: bold; margin-top: 0.7rem;">MVVM (CM4)</div>
<div style="font-size: 1.5rem; line-height: 1.55; margin-top: 0.8rem; text-align: left; opacity: 0.95;">Vue ↔ <b>ViewModel</b> ↔ Modèle.<br/>La vue se bind aux propriétés du ViewModel (qui ignore la vue). Le ViewModel utilise le Modèle (qui ignore le ViewModel).</div>
</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 1.2rem; font-size: 1.5rem; text-align: center;">
👉 Le ViewModel ne sait <b>rien</b> de JavaFX (pas de <code>Label</code>, pas de <code>Button</code>). Il manipule juste des <code>StringProperty</code>, <code>BooleanProperty</code>...
</div>

---

## Origine et adoption de MVVM

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.6rem 0;">MVVM est plus jeune que MVC, et né d'une nécessité industrielle.</p>

<div style="display: grid; grid-template-columns: 0.7fr 4fr; column-gap: 0.15rem; row-gap: 0.6rem; align-items: stretch; margin-top: 0.9rem;">

<div style="background: #8e44ad; color: white; padding: 0.6rem; border-radius: 10px 0 0 10px; text-align: center; font-weight: bold; font-size: 1.6rem; display: flex; align-items: center; justify-content: center;">2005</div>
<div style="background: rgba(142,68,173,0.12); padding: 0.7rem 1.1rem; border-radius: 0 10px 10px 0; font-size: 1.3rem; line-height: 1.5; display: flex; align-items: center;"><span>John Gossman (Microsoft) formalise <b>MVVM</b> pour <b>WPF</b>. L'idée : tirer parti du data binding XAML.</span></div>

<div style="background: #8e44ad; color: white; padding: 0.6rem; border-radius: 10px 0 0 10px; text-align: center; font-weight: bold; font-size: 1.6rem; display: flex; align-items: center; justify-content: center;">2010</div>
<div style="background: rgba(142,68,173,0.12); padding: 0.7rem 1.1rem; border-radius: 0 10px 10px 0; font-size: 1.3rem; line-height: 1.5; display: flex; align-items: center;"><span><b>Knockout.js</b> popularise MVVM côté web. Le pattern devient mainstream pour les SPA.</span></div>

<div style="background: #8e44ad; color: white; padding: 0.6rem; border-radius: 10px 0 0 10px; text-align: center; font-weight: bold; font-size: 1.6rem; display: flex; align-items: center; justify-content: center;">2014</div>
<div style="background: rgba(142,68,173,0.12); padding: 0.7rem 1.1rem; border-radius: 0 10px 10px 0; font-size: 1.3rem; line-height: 1.5; display: flex; align-items: center;"><span><b>Vue.js</b> et <b>Angular</b> intègrent MVVM par défaut. Le binding réactif devient une attente standard.</span></div>

<div style="background: #8e44ad; color: white; padding: 0.6rem; border-radius: 10px 0 0 10px; text-align: center; font-weight: bold; font-size: 1.6rem; display: flex; align-items: center; justify-content: center;">2019</div>
<div style="background: rgba(142,68,173,0.12); padding: 0.7rem 1.1rem; border-radius: 0 10px 10px 0; font-size: 1.3rem; line-height: 1.5; display: flex; align-items: center;"><span><b>React Hooks</b> apportent un équivalent fonctionnel : <code>useState</code> joue le rôle de <code>Property</code>.</span></div>

<div style="background: #27ae60; color: white; padding: 0.6rem; border-radius: 10px 0 0 10px; text-align: center; font-weight: bold; font-size: 1.6rem; display: flex; align-items: center; justify-content: center;">2026</div>
<div style="background: rgba(39,174,96,0.15); padding: 0.7rem 1.1rem; border-radius: 0 10px 10px 0; font-size: 1.3rem; line-height: 1.5; display: flex; align-items: center;"><span><b>JavaFX</b> a tous les ingrédients pour MVVM : propriétés, bindings, FXML. Il suffit d'<b>introduire le ViewModel</b>.</span></div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 10px; margin-top: 0.8rem; font-size: 1.4rem; text-align: center;">
👉 MVVM = MVC + propriétés observables systématiques. C'est notre <b>CM2 + CM3</b> arrivés à maturité.
</div>

---

## Pourquoi maintenant et pas plus tôt ?

<p style="font-size: 1.45rem; margin: -0.5rem 0 0.6rem 0;">4 conditions étaient nécessaires pour aborder MVVM. Aujourd'hui elles sont toutes réunies.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.2rem; margin-top: 1rem;">

<div style="background: #4a90d9; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="display: flex; align-items: center; gap: 1rem;">
<div style="font-size: 2.6rem; line-height: 1; flex-shrink: 0;">📚</div>
<div style="font-size: 1.5rem; font-weight: bold;">Outils déjà acquis</div>
</div>
<div style="font-size: 1.2rem; line-height: 1.5; margin-top: 0.6rem;">Propriétés (<b>CM2</b>) + bindings (<b>CM2</b>) + FXML (<b>CM3</b>) sont les briques. MVVM les <b>oriente</b> en pattern.</div>
</div>

<div style="background: #27ae60; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="display: flex; align-items: center; gap: 1rem;">
<div style="font-size: 2.6rem; line-height: 1; flex-shrink: 0;">🧪</div>
<div style="font-size: 1.5rem; font-weight: bold;">Maturité testabilité</div>
</div>
<div style="font-size: 1.2rem; line-height: 1.5; margin-top: 0.6rem;">Vous savez écrire des tests JUnit. MVVM permet de tester <b>la logique d'affichage</b> sans monter d'UI.</div>
</div>

<div style="background: #e8a838; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="display: flex; align-items: center; gap: 1rem;">
<div style="font-size: 2.6rem; line-height: 1; flex-shrink: 0;">📈</div>
<div style="font-size: 1.5rem; font-weight: bold;">Apps qui grossissent</div>
</div>
<div style="font-size: 1.2rem; line-height: 1.5; margin-top: 0.6rem;">Un compteur n'a pas besoin de MVVM. La <b>SAÉ chauve-souris</b> avec ses filtres, exports, validations : oui.</div>
</div>

<div style="background: #8e44ad; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="display: flex; align-items: center; gap: 1rem;">
<div style="font-size: 2.6rem; line-height: 1; flex-shrink: 0;">💼</div>
<div style="font-size: 1.5rem; font-weight: bold;">Standard industriel</div>
</div>
<div style="font-size: 1.2rem; line-height: 1.5; margin-top: 0.6rem;">Quasiment toutes les UI modernes utilisent une variante de MVVM. C'est <b>la</b> compétence d'employabilité.</div>
</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 10px; margin-top: 1.2rem; font-size: 1.5rem; text-align: center;">
💡 MVVM n'invente rien : il <b>structure</b> ce que vous savez déjà. Pré-requis tous validés, c'est <b>le moment</b>.
</div>

---

<!-- _class: lead -->
<!-- _header: "" -->
<!-- _footer: "" -->

# Partie 2 - 🏗️ MVVM

**Modèle, Vue, ViewModel**

---

## 🏗️ Le pattern Modèle-Vue-ViewModel

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.6rem 0;">Trois rôles, dont deux que vous connaissez et un nouveau venu.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr 1fr; gap: 1.5rem; margin-top: 1.2rem;">

<div style="background: #1a5276; color: white; padding: 1.6rem 1.4rem; border-radius: 12px; text-align: center; display: flex; flex-direction: column;">
<div style="font-size: 3.2rem; line-height: 1;">📊</div>
<div style="font-size: 1.7rem; font-weight: bold; margin-top: 0.7rem;">Modèle</div>
<div style="font-size: 1.35rem; line-height: 1.55; margin-top: 0.8rem; text-align: left; opacity: 0.95;">Données et logique métier <b>pure</b>. Aucune référence à JavaFX ni à l'UI. <em>Comme en MVC.</em></div>
</div>

<div style="background: #8e44ad; color: white; padding: 1.6rem 1.4rem; border-radius: 12px; text-align: center; display: flex; flex-direction: column;">
<div style="font-size: 3.2rem; line-height: 1;">🎯</div>
<div style="font-size: 1.7rem; font-weight: bold; margin-top: 0.7rem;">ViewModel</div>
<div style="font-size: 1.35rem; line-height: 1.55; margin-top: 0.8rem; text-align: left; opacity: 0.95;">État UI sous forme de <b>propriétés observables</b>. Logique de présentation. Ne connaît pas la vue.</div>
</div>

<div style="background: #4a90d9; color: white; padding: 1.6rem 1.4rem; border-radius: 12px; text-align: center; display: flex; flex-direction: column;">
<div style="font-size: 3.2rem; line-height: 1;">🖼️</div>
<div style="font-size: 1.7rem; font-weight: bold; margin-top: 0.7rem;">Vue</div>
<div style="font-size: 1.35rem; line-height: 1.55; margin-top: 0.8rem; text-align: left; opacity: 0.95;">FXML + un contrôleur très <b>mince</b> qui se contente de bind la vue au ViewModel.</div>
</div>

</div>

<div style="background: #2c3e50; color: white; padding: 1rem 1.4rem; border-radius: 12px; margin-top: 1.2rem; font-size: 1.5rem; text-align: center;">
💡 Le ViewModel est <b>la couche testable</b> qui contient toute la logique de l'écran <b>sans avoir besoin de fenêtre</b>.
</div>

---

## Qui parle à qui ?

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Le <b>ViewModel</b> orchestre la conversation : il expose des propriétés à la Vue, et appelle le Modèle pour la logique métier.</p>

<div style="display: grid; grid-template-columns: auto auto 1fr auto 1fr auto 1fr; align-items: stretch; margin-top: 2rem;">

<div style="background: #7f8c8d; color: white; padding: 1rem 0.9rem; border-radius: 12px; text-align: center; display: flex; flex-direction: column; justify-content: center;">
<div style="font-size: 2.6rem; line-height: 1;">👤</div>
<div style="font-weight: bold; font-size: 1.2rem; margin-top: 0.4rem;">Utilisateur</div>
</div>

<div style="display: flex; flex-direction: column; align-items: center; justify-content: center; padding: 0 0.9rem;">
<div style="font-size: 1.05rem; color: #555;">clic / saisie</div>
<div style="font-size: 2.4rem; color: #4a90d9; line-height: 1; margin-top: 0.15rem;">→</div>
</div>

<div style="background: #4a90d9; color: white; padding: 1.2rem 0.9rem; border-radius: 12px; text-align: center; display: flex; flex-direction: column; justify-content: center;">
<div style="font-size: 3rem; line-height: 1;">🖼️</div>
<div style="font-weight: bold; font-size: 1.5rem; margin-top: 0.5rem;">Vue</div>
<div style="font-size: 1rem; opacity: 0.9; margin-top: 0.3rem;">FXML + Controller mince</div>
</div>

<div style="display: flex; flex-direction: column; align-items: center; justify-content: center; padding: 0 0.6rem;">
<div style="font-size: 1rem; color: #555;">bind / bindBidirectional</div>
<div style="font-size: 1.8rem; color: #8e44ad; line-height: 1; margin: 0.1rem 0;">⇄</div>
<div style="font-size: 1rem; color: #555;">propriétés UI</div>
</div>

<div style="background: #8e44ad; color: white; padding: 1.2rem 0.9rem; border-radius: 12px; text-align: center; display: flex; flex-direction: column; justify-content: center;">
<div style="font-size: 3rem; line-height: 1;">🎯</div>
<div style="font-weight: bold; font-size: 1.5rem; margin-top: 0.5rem;">ViewModel</div>
<div style="font-size: 1rem; opacity: 0.9; margin-top: 0.3rem;">propriétés + commandes</div>
</div>

<div style="display: flex; flex-direction: column; align-items: center; justify-content: center; padding: 0 0.6rem;">
<div style="font-size: 1rem; color: #555;">appelle métier</div>
<div style="font-size: 1.8rem; color: #1a5276; line-height: 1; margin: 0.1rem 0;">⇄</div>
<div style="font-size: 1rem; color: #555;">propriétés observables</div>
</div>

<div style="background: #1a5276; color: white; padding: 1.2rem 0.9rem; border-radius: 12px; text-align: center; display: flex; flex-direction: column; justify-content: center;">
<div style="font-size: 3rem; line-height: 1;">📊</div>
<div style="font-weight: bold; font-size: 1.5rem; margin-top: 0.5rem;">Modèle</div>
<div style="font-size: 1rem; opacity: 0.9; margin-top: 0.3rem;">logique pure</div>
</div>

</div>

<div style="background: #2c3e50; color: white; padding: 1rem 1.4rem; border-radius: 12px; margin-top: 2rem; font-size: 1.45rem; text-align: center;">
👉 Règle d'or : chaque couche ne connaît que celle du dessous. <b>Vue → ViewModel → Modèle</b>, jamais l'inverse.
</div>

---

## MVC vs MVVM : la différence en une slide

<style scoped>
section pre { font-size: 0.7rem !important; line-height: 1.3 !important; }
section code { font-size: 1em !important; }
</style>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 0.6rem; margin-top: 0.3rem;">

<div>
<div style="background: #8c3a2f; color: white; padding: 0.5rem 0.9rem; border-radius: 8px 8px 0 0; font-weight: bold; font-size: 1.4rem;">MVC : le contrôleur manipule la vue</div>

```java
public class CompteurController {
  private final Compteur compteur = new Compteur();
  @FXML private Label message;

  @FXML void initialize() {
    message.textProperty().bind(
      compteur.valeurProperty().asString());
  }

  @FXML void incrementer() {
    compteur.incrementer();
  }
}
```

</div>

<div>
<div style="background: #27ae60; color: white; padding: 0.5rem 0.9rem; border-radius: 8px 8px 0 0; font-weight: bold; font-size: 1.4rem;">MVVM : contrôleur de vue léger</div>

```java
public class CompteurController {
  @Inject CompteurViewModel vm;

  // FXML standard ne sait pas appeler vm.xxx(),
  // le contrôleur garde donc les handlers d'action.
  @FXML void incrementer() {
    vm.incrementerCommand();
  }
}
// FXML : <Label text="${vm.message}"/>
//
// Tout le travail vit dans CompteurViewModel :
// StringProperty messageProperty, incrementerCommand()
// => testable sans aucune UI.
```

</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.7rem; font-size: 1.4rem; text-align: center;">
💡 Idéalement, le contrôleur de vue ne porte que les <b>actions</b>. Les bindings triviaux vont en <b>FXML</b> (<code>text="${vm.message}"</code>) ; toute la logique vit dans le <b>ViewModel</b>.
</div>

---

## Le ViewModel : une classe Java pure

<style scoped>
section pre { font-size: 0.5rem !important; line-height: 1.35 !important; }
</style>

```java
public class CompteurViewModel {
  private final Compteur compteur;

  private final StringProperty message = new SimpleStringProperty("Compteur à 0"); // Propriété UI exposée à la vue

  public CompteurViewModel(Compteur compteur) {
    this.compteur = compteur;
    message.bind(Bindings.concat("Compteur à ", compteur.valeurProperty())); // la propriété UI dépend de la propriété métier
  }

  public StringProperty messageProperty() {
    return message;
  }

  public void incrementerCommand() {
    compteur.incrementer();
  }
}
```

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.8rem; font-size: 1.5rem; text-align: center;">
Aucun import de composant JavaFX (pas de <code>Label</code>, pas de <code>Button</code>).
</div>

---

## Test du ViewModel : zéro UI, zéro mock

<style scoped>
section pre { font-size: 0.65rem !important; line-height: 1.35 !important; }
</style>

```java
@Test
void messageRefleteLaValeurDuCompteur() {
  Compteur compteur = new Compteur();
  CompteurViewModel vm = new CompteurViewModel(compteur);

  assertEquals("Compteur à 0", vm.messageProperty().get());
  
  vm.incrementerCommand();
  assertEquals("Compteur à 1", vm.messageProperty().get());
  
  vm.incrementerCommand();
  vm.incrementerCommand();
  assertEquals("Compteur à 3", vm.messageProperty().get());
}
```

<div style="background: #27ae60; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.8rem; font-size: 1.45rem; text-align: center;">
✨ Pas de TestFX, pas de <code>Application.launch()</code>, pas de mock. Du JUnit pur et instantané.
</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.7rem; font-size: 1.45rem; text-align: center;">
👉 C'est <b>la promesse</b> clé du MVVM : la logique d'affichage est <b>testable comme du code métier</b>.
</div>

---

## Anatomie d'un projet MVVM

<style scoped>
section pre { font-size: 0.6rem !important; line-height: 1.35 !important; }
</style>

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.6rem 0;">Un dossier par couche, organisé par <b>feature</b>. Chaque couche reste testable sans toucher aux autres.</p>

```
src/main/java/fr/iut/exempleapp/
├── App.java                      # bootstrap JavaFX + injection
├── compteur/
│   ├── model/
│   │   └── Compteur.java         # logique métier pure (testable JUnit)
│   ├── viewmodel/
│   │   └── CompteurViewModel.java # propriétés UI + commandes (testable JUnit)
│   ├── view/
│   │   ├── compteur.fxml         # structure visuelle (édité avec SceneBuilder)
│   │   ├── compteur.css          # apparence
│   │   └── CompteurController.java # @FXML + bindings vers le VM
│   └── di/
│       └── CompteurModule.java   # configuration Guice (CM4 partie 3)
└── ...
```

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.8rem; font-size: 1.5rem; text-align: center;">
Quatre dossiers, quatre responsabilités. Chaque test cible un dossier sans toucher aux autres.
</div>

---

## Exemple : MessageView (1/2) - Modèle et ViewModel

<style scoped>
section pre { font-size: 0.6rem !important; line-height: 1.35 !important; }
section .code-col { display: flex; flex-direction: column; }
section .code-col pre { flex: 1; margin-top: 0 !important; }
</style>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1rem; margin-top: 0.5rem; align-items: stretch;">

<div class="code-col">
<div style="background: #1a5276; color: white; padding: 0.5rem 0.9rem; border-radius: 8px 8px 0 0; font-weight: bold; font-size: 1.2rem;">📊 Message (Modèle)</div>

```java
public class Message {
  private String texte = "";
  public String getTexte() {
    return texte;
  }
  public void setTexte(String t) {
    this.texte = t;
  }
}
```

</div>

<div class="code-col">
<div style="background: #8e44ad; color: white; padding: 0.5rem 0.9rem; border-radius: 8px 8px 0 0; font-weight: bold; font-size: 1.2rem;">🎯 MessageViewModel</div>

```java
public class MessageViewModel {
  private final Message message;
  private final StringProperty texte = new SimpleStringProperty();

  public MessageViewModel(Message m) {
    this.message = m;
    texte.set(m.getTexte());
    texte.addListener((o, a, n) -> m.setTexte(n));
  }

  public StringProperty texteProperty() {
    return texte;
  }
}
```

</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.8rem; font-size: 1.5rem; text-align: center;">
💡 La logique de présentation vit dans le ViewModel, <b>sans aucune dépendance JavaFX UI</b>. Testable directement avec JUnit.
</div>

---

## Exemple : MessageView (2/2) - Vue (Controller + FXML)

<style scoped>
section pre { font-size: 0.8rem !important; line-height: 1.35 !important; }
section .code-col { display: flex; flex-direction: column; }
section .code-col pre { flex: 1; margin-top: 0 !important; }
</style>

<div style="display: grid; grid-template-columns: 1.4fr 1fr; gap: 1rem; margin-top: 0.5rem; align-items: stretch;">

<div class="code-col">
<div style="background: #4a90d9; color: white; padding: 0.5rem 0.9rem; border-radius: 8px 8px 0 0; font-weight: bold; font-size: 1.2rem;">🖼️ MessageController</div>

```java
public class MessageController {
  @Inject private MessageViewModel vm;

  @FXML private TextField champ;

  // Expose le VM pour les bindings FXML ${controller.vm.xxx}
  public MessageViewModel getVm() { return vm; }

  @FXML void initialize() {
    // Bidirectionnel : pas de syntaxe FXML, reste en Java
    champ.textProperty().bindBidirectional(vm.texteProperty());
  }
}
```

</div>

<div class="code-col">
<div style="background: #4a90d9; color: white; padding: 0.5rem 0.9rem; border-radius: 8px 8px 0 0; font-weight: bold; font-size: 1.2rem;">📄 message.fxml</div>

```xml
<?import javafx.scene.control.*?>
<?import javafx.scene.layout.*?>

<VBox spacing="10" style="-fx-padding: 20;"
      fx:controller="fr.iut.MessageController"
      xmlns:fx="http://javafx.com/fxml">

  <Label text="Saisie :"/>
  <TextField fx:id="champ"
             promptText="Tapez ici..."/>

  <Label text="Aperçu :"/>
  <!-- Binding 1-way exprime directement en FXML -->
  <Label text="${controller.vm.texte}"
         style="-fx-font-weight: bold;"/>
</VBox>
```

</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.8rem; font-size: 1.5rem; text-align: center;">
Tape dans le champ → le VM met à jour le modèle → l'affichage suit. Trois fichiers Java, un FXML.
</div>

---

## Listes : ObservableList et data binding

<style scoped>
section pre { font-size: 0.8rem !important; line-height: 1.35 !important; }
section .code-col { display: flex; flex-direction: column; }
section .code-col pre { flex: 1; margin-top: 0 !important; }
</style>

<p style="font-size: 1.4rem; margin: -0.5rem 0 0.5rem 0;">Pour exposer une <b>collection</b> qui se met à jour automatiquement dans une <code>TableView</code> on utilise une <code>ObservableList</code>.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1rem; margin-top: 0.5rem; align-items: stretch;">

<div class="code-col">
<div style="background: #8e44ad; color: white; padding: 0.5rem 0.9rem; border-radius: 8px 8px 0 0; font-weight: bold; font-size: 1.2rem;">🎯 PokemonViewModel</div>

```java
private final ObservableList<Pokemon> pokemons
            = FXCollections.observableArrayList();

public PokemonViewModel(PokemonService s) {
  pokemons.setAll(s.tousLesPokemons());
}

public ObservableList<Pokemon> pokemonsProperty() {
  return pokemons;
}

public void capturer(Pokemon p) {
  pokemons.add(p); // la TableView se met à jour seule
}
```

</div>

<div class="code-col">
<div style="background: #4a90d9; color: white; padding: 0.5rem 0.9rem; border-radius: 8px 8px 0 0; font-weight: bold; font-size: 1.2rem;">🖼️ Controleur léger</div>

```java
public class PokemonViewController {
  @Inject PokemonViewModel vm;

  @FXML private TableView<Pokemon> table;

  @FXML void initialize() {
    table.setItems(vm.pokemonsProperty());
    // toute modif de la liste côté VM
    // se reflète automatiquement dans la TableView
  }
}
```

</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.8rem; font-size: 1.4rem; text-align: center;">
👉 <code>ObservableList</code> est à <code>List</code> ce que <code>StringProperty</code> est à <code>String</code> : une version observable.
</div>

---

## Plusieurs vues, un seul ViewModel

<style scoped>
section pre { font-size: 0.85rem !important; line-height: 1.35 !important; }
</style>

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">En plus de la testabilité, l'autre bénéfice clé est qu'un même ViewModel peut alimenter <b>plusieurs vues</b> simultanément.</p>

```java
// Une vue formulaire pour saisir
champ.textProperty().bindBidirectional(vm.texteProperty());
// Une autre vue, en bas de l'écran, pour afficher en temps réel
preview.textProperty().bind(vm.texteProperty());
// Un compteur de caractères, ailleurs
compteur.textProperty().bind(
    Bindings.concat(vm.texteProperty().length(), " caractères"));
```

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1rem; margin-top: 0.8rem;">

<div style="background: #8e44ad; color: white; padding: 1rem 1.2rem; border-radius: 12px;">
<div style="font-size: 1.5rem; font-weight: bold;">🔁 Réactivité naturelle</div>
<div style="font-size: 1.3rem; line-height: 1.5; margin-top: 0.4rem;">Une modification côté formulaire se propage instantanément vers la preview ET le compteur.</div>
</div>

<div style="background: #8e44ad; color: white; padding: 1rem 1.2rem; border-radius: 12px;">
<div style="font-size: 1.5rem; font-weight: bold;">🧪 Test unique</div>
<div style="font-size: 1.3rem; line-height: 1.5; margin-top: 0.4rem;">Un seul test sur le VM couvre toutes les vues. Pas de duplication.</div>
</div>

</div>

---

## Commandes : modéliser les actions

<style scoped>
section pre { font-size: 0.65rem !important; line-height: 1.35 !important; }
</style>

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Pour les actions (boutons), on expose des <b>méthodes</b> sur le ViewModel. Pattern « Command ».</p>

```java
public class FormulaireConnexionViewModel {
  private final ServiceAuth auth;
  // 4 propriétés UI : email, motDePasse, statut, validable
  // (3 StringProperty + 1 BooleanProperty)
  public FormulaireConnexionViewModel(ServiceAuth auth) {
    this.auth = auth;
    validable.bind(email.isNotEmpty().and(motDePasse.isNotEmpty()));
  }
  // Pattern Command : méthode publique sans paramètre
  public void connecterCommand() {
    statut.set("Connexion en cours...");
    boolean ok = auth.connecter(email.get(), motDePasse.get());
    statut.set(ok ? "Bienvenue !" : "Échec : vérifiez vos identifiants.");
  }
}
```

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.9rem; font-size: 1.5rem; text-align: center;">
💡 Pattern <b>Command</b> : actions exposées comme méthodes publiques sur le VM.
</div>

---

## Le contrôleur "léger" côté MVVM : un câblage

<style scoped>
section pre { font-size: 0.65rem !important; line-height: 1.35 !important; }
</style>

```java
public class FormulaireConnexionController {
  @Inject FormulaireConnexionViewModel vm;
  @FXML private TextField email;
  @FXML private PasswordField motDePasse;
  @FXML private Button valider;
  @FXML private Label statut;

  @FXML void initialize() {
    email.textProperty().bindBidirectional(vm.emailProperty());
    motDePasse.textProperty().bindBidirectional(vm.motDePasseProperty());
    statut.textProperty().bind(vm.statutProperty());
    valider.disableProperty().bind(vm.validableProperty().not());
  }
  @FXML void valider() {
    vm.connecterCommand();
  }
}
```

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.8rem; font-size: 1.5rem; text-align: center;">
Plus aucun <code>if</code>, plus aucune logique. Juste : <em>« je connecte les fils ».</em>
</div>

---

## Validation côté ViewModel

<style scoped>
section pre { font-size: 0.6rem !important; line-height: 1.35 !important; }
</style>

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Le VM est l'endroit naturel pour valider les saisies : il a accès aux propriétés et expose des indicateurs d'erreur.</p>

```java
public class FormulaireViewModel {
  private final StringProperty email = new SimpleStringProperty("");
  private final StringProperty erreurEmail = new SimpleStringProperty("");
  private final BooleanBinding emailValide;

  public FormulaireViewModel() {
    emailValide = Bindings.createBooleanBinding(
        () -> email.get().matches("^[^@]+@[^@]+\\.[a-z]{2,}$"),
        email); // Règle de validation réactive
    erreurEmail.bind(Bindings.when(emailValide.or(email.isEmpty()))
        .then("").otherwise("Format invalide. Exemple : prenom.nom@univ-amu.fr")); // Message d'erreur dérivé
  }

  public ReadOnlyStringProperty erreurEmailProperty() { return erreurEmail; }
  public BooleanBinding emailValide() { return emailValide; }
}
```

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.8rem; font-size: 1.5rem; text-align: center;">
👉 La vue se contente de se lier : <code>label.textProperty().bind(vm.erreurEmailProperty())</code>.
</div>

---

## Variantes : MVP et le reste de la famille

<style scoped>
section table { font-size: 0.8rem !important; width: 100%; border-collapse: collapse; line-height: 1.35 !important; }
section th { background: #1a5276 !important; color: white !important; padding: 0.3rem 0.6rem !important; text-align: left !important; }
section td { padding: 0.25rem 0.6rem !important; border-bottom: 1px solid #e0e0e0 !important; vertical-align: top; }
section tr:nth-child(even) td { background: #f4f6f8 !important; }
</style>

| Pattern | Découplage | Mécanisme | Cas d'usage |
|---|---|---|---|
| **MVC classique** | Faible | Vue observe Modèle directement | Petites apps, prototypes |
| **MVP** (Presenter) | Fort | Presenter manipule Vue via interface | Java Swing, GWT |
| **MVVM** | Très fort | Vue se bind au ViewModel, qui ignore la Vue | JavaFX, WPF, Vue, Knockout |
| **Flux / Redux** | Total | État central immuable + actions dispatch | React, Vuex / Pinia |
| **MVVM-C** (Coordinator) | Fort + navigation | Coordinator pilote la composition de VM | Grosses apps iOS / mobile |

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.8rem; font-size: 1.5rem; text-align: center;">
Ces patterns partagent tous la même intention : <b>séparer la logique d'affichage de la logique métier</b>. MVVM est le plus naturel pour JavaFX.
</div>

---

## Gérer les erreurs dans une commande
<style scoped>
section pre { font-size: 0.5rem !important; line-height: 1.35 !important; }
</style>

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Une commande VM peut échouer (réseau, BDD, validation). On expose l'état via une propriété, jamais via une exception qui remonte à l'UI.</p>

```java
public class FormulaireConnexionViewModel {
  private final ServiceAuth auth;
  private final StringProperty statut = new SimpleStringProperty("");
  private final BooleanProperty enCours = new SimpleBooleanProperty(false);

  public void connecterCommand() {
    enCours.set(true);
    statut.set("Connexion en cours...");
    try {
      boolean ok = auth.connecter(email.get(), motDePasse.get());
      statut.set(ok ? "Bienvenue !" : "Identifiants incorrects.");
    } catch (ServiceIndisponibleException e) {
      statut.set("Le serveur ne répond pas. Réessayez dans quelques secondes.");
    } finally {
      enCours.set(false);
    }
  }
}
```

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.8rem; font-size: 1.5rem; text-align: center;">
La vue se contente de bind <code>statut</code> dans un Label et <code>enCours</code> sur un spinner.
</div>

---

## Anti-patterns MVVM à éviter

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Trois couches et trois rôles à respecter si l'on ne veut pas perdre tous les avantages de la séparation.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.2rem; margin-top: 1rem;">

<div style="background: #8c3a2f; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="display: flex; align-items: center; gap: 1rem;">
<div style="font-size: 2.4rem; line-height: 1; flex-shrink: 0;">⚠️</div>
<div style="font-size: 1.45rem; font-weight: bold;">ViewModel qui importe javafx.scene</div>
</div>
<div style="font-size: 1.25rem; line-height: 1.5; margin-top: 0.6rem;">Si vous voyez <code>import javafx.scene.control.Alert;</code> dans un VM, vous avez fui la séparation. Les alerts sont un détail de la vue.</div>
</div>

<div style="background: #8c3a2f; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="display: flex; align-items: center; gap: 1rem;">
<div style="font-size: 2.4rem; line-height: 1; flex-shrink: 0;">⚠️</div>
<div style="font-size: 1.45rem; font-weight: bold;">Controller qui contient de la logique</div>
</div>
<div style="font-size: 1.25rem; line-height: 1.5; margin-top: 0.6rem;">Si <code>@FXML void valider()</code> contient autre chose que <code>vm.valider()</code>, c'est une fuite. Déplacer vers le VM.</div>
</div>

<div style="background: #8c3a2f; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="display: flex; align-items: center; gap: 1rem;">
<div style="font-size: 2.4rem; line-height: 1; flex-shrink: 0;">⚠️</div>
<div style="font-size: 1.45rem; font-weight: bold;">ViewModel qui hérite de Property</div>
</div>
<div style="font-size: 1.25rem; line-height: 1.5; margin-top: 0.6rem;">Le VM <em>contient</em> des propriétés, il n'<em>est</em> pas une propriété. Composition, pas héritage.</div>
</div>

<div style="background: #8c3a2f; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="display: flex; align-items: center; gap: 1rem;">
<div style="font-size: 2.4rem; line-height: 1; flex-shrink: 0;">⚠️</div>
<div style="font-size: 1.45rem; font-weight: bold;">Modèle anémique</div>
</div>
<div style="font-size: 1.25rem; line-height: 1.5; margin-top: 0.6rem;">Si le modèle n'est qu'un POJO sans logique, c'est que la logique a fui dans le VM. Réagencer.</div>
</div>
</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 1.2rem; font-size: 1.5rem; text-align: center;">
Comme tous les patterns architecturaux, si l'on ne respecte pas leur principe de séparation, on perd tout l'intérêt.
</div>


---

## Bilan MVVM en une slide
<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Comme toujours en informatique, le choix d'une solution est une question d'arbitrage.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1rem; margin: 2.4rem 0;">

<div style="background: #27ae60; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="font-size: 1.6rem; font-weight: bold; margin-bottom: 0.4rem;">✓ Ce qu'on gagne</div>
<ul style="font-size: 1.5rem; line-height: 1.5; margin: 0; padding-left: 1.2rem;">
<li>Tests JUnit pur sur la logique d'affichage</li>
<li>Plusieurs vues sur un même VM</li>
<li>Bindings comme colle, pas de <code>if</code> manuel</li>
<li>Travail en parallèle vue/logique</li>
<li>Compatible avec mocks et DI</li>
</ul>
</div>

<div style="background: #8c3a2f; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="font-size: 1.6rem; font-weight: bold; margin-bottom: 0.4rem;">⚠️ Ce que ça coûte</div>
<ul style="font-size: 1.5rem; line-height: 1.5; margin: 0; padding-left: 1.2rem;">
<li>Une couche de plus à comprendre</li>
<li>Plus verbeux pour un compteur simple</li>
<li>Bindings parfois subtils (lifecycle, weak refs)</li>
<li>Nécessite de la discipline pour ne pas commencer à tricher</li>
</ul>
</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.8rem; font-size: 1.5rem; text-align: center;">
👉 Règle : si l'écran a <b>plus de 3-4 champs interactifs</b>, MVVM gagne. En dessous, MVC suffit.
</div>

---

<!-- _class: lead -->
<!-- _header: "" -->
<!-- _footer: "" -->

# Partie 3 - 💉 Injection de dépendances

**Guice 7**

---

## Pourquoi l'Injection de dépendances, et pourquoi maintenant ?

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Vous avez déjà croisé <code>@Inject</code> en Partie 2. Vous le retrouverez en Partie 4. C'est le <b>même pattern</b> qui ressurgit : celui qui rend chaque couche testable indépendamment.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1rem; margin: 2.5rem 0; align-items: stretch;">

<div style="background: #1a5276; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="font-size: 1.5rem; font-weight: bold; margin-bottom: 0.4rem;">🏗️ Côté MVVM (Partie 2)</div>
<div style="font-size: 1.3rem; line-height: 1.5;">
Le <b>contrôleur</b> <code>@Inject</code> son <b>ViewModel</b>.<br/>
Le <b>ViewModel</b> <code>@Inject</code> ses <b>services</b>.<br/>
<em>→ chaque ViewModel se teste avec des services mockés, sans utiliser JavaFX.</em>
</div>
</div>

<div style="background: #27ae60; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="font-size: 1.5rem; font-weight: bold; margin-bottom: 0.4rem;">💾 Côté Persistance (Partie 4)</div>
<div style="font-size: 1.3rem; line-height: 1.5;">
Le <b>ViewModel</b> <code>@Inject</code> ses <b>DAO</b>.<br/>
Le <b>DAO</b> <code>@Inject</code> son <b>DataSource</b>.<br/>
<em>→ chaque DAO se teste avec une BDD en mémoire, sans toucher la prod.</em>
</div>
</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.8rem; font-size: 1.5rem; text-align: center;">
L'Injection de dépendances (DI) est le <b>ciment</b> qui rend chaque couche testable <b>indépendamment</b> des autres. C'est ce qu'on va faire avec <b>Guice</b>.
</div>

---

## 💉 Le problème : `new` partout

<style scoped>
section pre { font-size: 0.85rem !important; line-height: 1.35 !important; }
</style>

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Au CM3, le contrôleur instancie son modèle avec <code>new</code>. C'est simple, mais ça crée un graphe d'objets fragiles.</p>

```java
public class FormulaireConnexionController {

  // Couplage dur : impossible de remplacer ServiceAuthImpl
  private final ServiceAuth auth = new ServiceAuthImpl();

  // Couplage en cascade : ServiceAuthImpl construit lui-même son client réseau,
  // qui ouvre une vraie socket vers le serveur d'authentification...
  // même pendant les tests unitaires.
}
```

<div style="background: #8c3a2f; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.8rem; font-size: 1.5rem;">
🔥 Pour <b>tester</b> ce contrôleur sans appeler le vrai serveur, il faudrait modifier <code>ServiceAuthImpl</code> ou faire des hacks de réflexion. Trop tard, le couplage est gravé.
</div>

---

## L'inversion de contrôle (IoC)

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Idée fondatrice : un objet ne doit pas <b>créer</b> ses dépendances. Il doit les <b>recevoir</b>.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1rem; margin-top: 0.4rem;">

<div style="background: #8c3a2f; color: white; padding: 1.2rem 1.3rem; border-radius: 12px; display: flex; flex-direction: column;">
<div style="font-size: 1.3rem; font-weight: bold; margin-bottom: 0.4rem;">✗ Ancien réflexe</div>

```java
class A {
  B b = new B();
  // A décide quel B utiliser
}
```

<div style="font-size: 1.1rem; line-height: 1.45; margin-top: auto;">A est <b>responsable</b> de la création de B. Couplage à l'implémentation.</div>
</div>

<div style="background: #27ae60; color: white; padding: 1.2rem 1.3rem; border-radius: 12px; display: flex; flex-direction: column;">
<div style="font-size: 1.3rem; font-weight: bold; margin-bottom: 0.4rem;">✓ Avec IoC</div>

```java
class A {
  final B b;
  A(B b) { this.b = b; }
  // A reçoit son B en cadeau
}
```

<div style="font-size: 1.1rem; line-height: 1.45; margin-top: auto;">A déclare ce dont il a <b>besoin</b>. Quelqu'un d'autre choisit l'implémentation.</div>
</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.8rem; font-size: 1.5rem; text-align: center;">
« Inversion » du <b>contrôle de la création</b> : ce n'est plus A qui crée son B, mais un assembleur externe qui lui donne.
</div>

---

## Composition root : qui assemble tout ?
<style scoped>
section pre { font-size: 0.55rem !important; line-height: 1.35 !important; }
</style>

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Sans framework, on instancie « à la main » au démarrage de l'app.</p>

```java
public class App extends Application {
  @Override
  public void start(Stage stage) throws IOException {
    // Composition root : un endroit unique qui crée tout le graphe
    HttpClient http = HttpClient.newHttpClient();
    ServiceAuth auth = new ServiceAuthImpl(http);
    HistoriqueConnexion historique = new HistoriqueConnexionEnMemoire();
    FormulaireConnexionViewModel vm = new FormulaireConnexionViewModel(auth, historique);

    FXMLLoader loader = new FXMLLoader(getClass().getResource("/fxml/login.fxml"));
    loader.setController(new FormulaireConnexionController(vm));
    Parent root = loader.load();

    stage.setScene(new Scene(root));
    stage.show();
  }
}
```

<div style="background: #8c3a2f; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.8rem; font-size: 1.5rem;">
⚠️ Quand l'application a 30 contrôleurs et 50 services, cette méthode <code>start()</code> devient un cauchemar de 200 lignes qui ne sont que du câblage.
</div>

---

## Guice : un container DI léger

<style scoped>
section pre { font-size: 0.75rem !important; line-height: 1.35 !important; }
section .code-col { display: flex; flex-direction: column; }
section .code-col pre { flex: 1; margin-top: 0 !important; }
</style>

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;"><b>Google Guice</b> automatise la composition. On déclare les dépendances avec <code>@Inject</code> et un <b>Module</b> qui dit comment les résoudre.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1rem; margin-top: 0.5rem; align-items: stretch;">

<div class="code-col">
<div style="background: #8e44ad; color: white; padding: 0.5rem 0.9rem; border-radius: 8px 8px 0 0; font-weight: bold; font-size: 1.2rem;">Le consommateur</div>

```java
public class FormulaireController {
  @Inject
  private FormulaireViewModel vm;

  @FXML
  void initialize() {
    // ... bindings ...
  }
}
```

</div>

<div class="code-col">
<div style="background: #8e44ad; color: white; padding: 0.5rem 0.9rem; border-radius: 8px 8px 0 0; font-weight: bold; font-size: 1.2rem;">Le module Guice</div>

```java
public class AppModule extends AbstractModule {
  @Override
  protected void configure() {
    bind(ServiceAuth.class)
        .to(ServiceAuthImpl.class);
    bind(FormulaireViewModel.class);
  }
}
```

</div>

</div>

<div style="background: #27ae60; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.8rem; font-size: 1.5rem; text-align: center;">
✨ Au démarrage : <code>Injector inj = Guice.createInjector(new AppModule());</code> et tout est câblé.
</div>

---

## Les trois styles d'injection

<style scoped>
section pre { font-size: 0.75rem !important; line-height: 1.35 !important; }
section .code-col { display: flex; flex-direction: column; }
section .code-col pre { flex: 1; margin-top: 0 !important; }
section .code-col .descr { padding-top: 0.5rem; }
</style>

<div style="display: grid; grid-template-columns: 1fr 1fr 1fr; gap: 0.9rem; margin-top: 0.5rem; align-items: stretch;">

<div class="code-col">
<div style="background: #1a5276; color: white; padding: 0.5rem 0.9rem; border-radius: 8px 8px 0 0; font-weight: bold; font-size: 1.2rem;">Constructeur (recommandé)</div>

```java
public class A {
  private final B b;

  @Inject
  public A(B b) {
    this.b = b;
  }
}
```

<div class="descr" style="font-size: 1rem; opacity: 0.95;">Champs <code>final</code>, classe immutable.</div>

</div>

<div class="code-col">
<div style="background: #1a5276; color: white; padding: 0.5rem 0.9rem; border-radius: 8px 8px 0 0; font-weight: bold; font-size: 1.2rem;">Champ (FXML, frameworks)</div>

```java
public class A {

  @Inject
  private B b;

  // utilisé par les
  // contrôleurs FXML
}
```

<div class="descr" style="font-size: 1rem; opacity: 0.95;">Pratique avec FXMLLoader.</div>

</div>

<div class="code-col">
<div style="background: #1a5276; color: white; padding: 0.5rem 0.9rem; border-radius: 8px 8px 0 0; font-weight: bold; font-size: 1.2rem;">Méthode (rare)</div>

```java
public class A {
  private B b;

  @Inject
  public void setB(B b) {
    this.b = b;
  }
}
```

<div class="descr" style="font-size: 1rem; opacity: 0.95;">Cas particuliers, déconseillé.</div>

</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.8rem; font-size: 1.5rem; text-align: center;">
👉 Préférer l'injection par <b>constructeur</b>. Pas le choix avec FXML : injection par <b>champ</b>.
</div>

---

## Le module : configuration centralisée

<style scoped>
section pre { font-size: 0.75rem !important; line-height: 1.35 !important; }
</style>

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">La question est maintenant de savoir où se fait la configuration de quelle classe concrète utiliser. Avec Guice, cela se fait grâce aux modules.</p>

```java
public class AppModule extends AbstractModule {
  @Override
  protected void configure() {
    bind(ServiceAuth.class).to(ServiceAuthImpl.class); // Lier une interface à une implémentation
    bind(HttpClient.class).toInstance(HttpClient.newHttpClient()); // Lier un type à une instance déjà construite
    bind(HistoriqueConnexion.class).in(Singleton.class); // Avec scope explicite : une seule instance partagée
  }

  // Provider pour les cas où la création nécessite du code
  @Provides
  @Singleton
  Configuration configuration() {
    return Configuration.lireDepuis("application.properties");
  }
}
```

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.4rem; font-size: 1.5rem; text-align: center;">
Toute la composition de l'application est dans <b>un et un seul fichier</b>. Pour le test, on bascule sur un module dédié et on règle tous les problèmes en une fois.
</div>

---

## Tests : un module qui injecte des mocks
<style scoped>
section pre { font-size: 0.6rem !important; line-height: 1.35 !important; }
</style>
```java
class FormulaireViewModelTest {
  @Test
  void connecterAffecteLeStatut() {
    Injector test = Guice.createInjector(new AbstractModule() {
      @Override
      protected void configure() {
        // En test, on injecte un faux ServiceAuth qui répond toujours OK
        bind(ServiceAuth.class).toInstance((email, mdp) -> true);
      }
    });

    FormulaireViewModel vm = test.getInstance(FormulaireViewModel.class);
    vm.emailProperty().set("test@univ-amu.fr");
    vm.motDePasseProperty().set("xyz");
    vm.connecterCommand();
    assertEquals("Bienvenue !", vm.statutProperty().get());
  }
}
```

<div style="background: #27ae60; color: white; padding: 0.85rem 1.2rem; border-radius: 10px; margin-top: 0.4rem; font-size: 1.5rem; text-align: center;">
✨ Le VM ne sait <b>pas</b> qu'il est testé. Il reçoit un <code>ServiceAuth</code> et l'utilise.
</div>

---

## Guice et JavaFX : intégration FXMLLoader

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Pour que les contrôleurs FXML soient instanciés <b>par Guice</b>, on configure un <code>controllerFactory</code>.</p>

```java
public void start(Stage stage) throws IOException {
  Injector injector = Guice.createInjector(new AppModule());

  FXMLLoader loader = new FXMLLoader(getClass().getResource("/fxml/login.fxml"));
  // Tous les contrôleurs déclarés via fx:controller passent par Guice
  loader.setControllerFactory(injector::getInstance);

  Parent root = loader.load();
  stage.setScene(new Scene(root));
  stage.show();
}
```

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.5rem; font-size: 1.5rem; text-align: center;">
👉 Une seule ligne (<code>setControllerFactory</code>) et tous les contrôleurs FXML reçoivent leurs <code>@Inject</code>.
</div>

---

## Les scopes Guice

<style scoped>
section table { font-size: 0.7rem !important; width: 100%; border-collapse: collapse; line-height: 1.35 !important; }
section th { background: #8e44ad !important; color: white !important; padding: 0.3rem 0.6rem !important; text-align: left !important; }
section td { padding: 0.25rem 0.6rem !important; border-bottom: 1px solid #e0e0e0 !important; }
section tr:nth-child(even) td { background: #f4f6f8 !important; }
section pre { font-size: 0.7rem !important; line-height: 1.35 !important; }
</style>

| Scope | Effet | Cas d'usage |
|---|---|---|
| **Default (per-injection)** | Nouvelle instance à chaque `@Inject` | Contrôleurs FXML, ViewModels par fenêtre |
| **`@Singleton`** | Une instance pour toute la JVM | Services applicatifs, configuration, client HTTP |
| **Scope custom** | Définissez votre propre cycle de vie | Sessions utilisateur, contextes de transaction |

```java
// Au point de bind
bind(ServiceAuth.class).to(ServiceAuthImpl.class).in(Singleton.class);

// Ou via annotation sur la classe
@Singleton
public class ServiceAuthImpl implements ServiceAuth { ... }
```

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.4rem; font-size: 1.5rem; text-align: center;">
🎯 Règle simple : <b>singleton</b> pour les services, <b>default</b> pour les états (VM, controller).
</div>

---

## Provider : injection paresseuse

<style scoped>
section pre { font-size: 0.7rem !important; line-height: 1.35 !important; }
</style>

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Pour différer la création d'une dépendance (ou en créer plusieurs instances à la demande), on injecte un <code>Provider&lt;T&gt;</code>.</p>

```java
public class GestionnaireFenetres {

  // Pas l'instance, mais une fabrique : on en crée une nouvelle à chaque fois
  @Inject Provider<FenetreEdition> fabriqueFenetreEdition;

  public void ouvrirNouvelleEdition() {
    FenetreEdition nouvelleFenetre = fabriqueFenetreEdition.get();
    nouvelleFenetre.show();
  }
}
```

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1rem; margin-top: 0.8rem;">

<div style="background: #1a5276; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="font-size: 1.4rem; font-weight: bold;">🐢 Lazy</div>
<div style="font-size: 1.2rem; line-height: 1.5; margin-top: 0.4rem;">L'objet n'est créé qu'au premier <code>get()</code>. Utile pour des services coûteux.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="font-size: 1.4rem; font-weight: bold;">🔄 Multi-instance</div>
<div style="font-size: 1.2rem; line-height: 1.5; margin-top: 0.4rem;">Sans scope <code>@Singleton</code>, chaque <code>get()</code> renvoie une nouvelle instance.</div>
</div>

</div>

---

## @Named : résoudre les ambiguïtés
<style scoped>
section pre { font-size: 0.5rem !important; line-height: 1.35 !important; }
</style>

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Quand plusieurs implémentations d'une même interface coexistent, on les distingue par un nom.</p>

```java
public class AppModule extends AbstractModule {
  @Override
  protected void configure() {
    bind(Notifieur.class).annotatedWith(Names.named("email"))
        .to(NotifieurEmail.class);
    bind(Notifieur.class).annotatedWith(Names.named("sms"))
        .to(NotifieurSms.class);
  }
}

public class CompteController {
  @Inject @Named("email") Notifieur notifEmail;
  @Inject @Named("sms")   Notifieur notifSms;

  void alerter(String msg) {
    notifEmail.envoyer(msg);
    notifSms.envoyer(msg);
  }
}
```

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.3rem; font-size: 1.5rem; text-align: center;">
Alternative : annotations custom (<code>@EmailNotifier</code>) pour plus de type-safety.
</div>

---

## Avantages concrets de l'injection

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Au-delà du pattern, voici ce que la DI <b>change concrètement</b> au quotidien.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1rem; margin-top: 0.8rem;">

<div style="background: #1a5276; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="font-size: 1.6rem; font-weight: bold; margin-bottom: 0.4rem;">🧪 Mocks faciles</div>
<div style="font-size: 1.4rem; line-height: 1.45;">Un module de test bind les interfaces sur des mocks Mockito ou des fakes. Aucun code applicatif modifié.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="font-size: 1.6rem; font-weight: bold; margin-bottom: 0.4rem;">🔄 Implémentations interchangeables</div>
<div style="font-size: 1.4rem; line-height: 1.45;">Bind vers <code>ServiceAuthLDAP</code> ou <code>ServiceAuthMock</code> selon l'environnement. Une ligne dans le module.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="font-size: 1.6rem; font-weight: bold; margin-bottom: 0.4rem;">📐 Cycle de vie maîtrisé</div>
<div style="font-size: 1.4rem; line-height: 1.45;">Singleton géré par Guice. Pas de double instanciation accidentelle.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="font-size: 1.6rem; font-weight: bold; margin-bottom: 0.4rem;">📦 Composition lisible</div>
<div style="font-size: 1.4rem; line-height: 1.45;">Le module devient <b>la documentation</b> de l'architecture : on lit le câblage en un fichier.</div>
</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 1rem; font-size: 1.5rem; text-align: center;">
💡 Le fil rouge des 4 bénéfices : <b>chaque couche reste testable et remplaçable</b> sans toucher au code applicatif.
</div>

---

## Quand utiliser DI (et quand ne pas)

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">La DI n'est pas une fin en soi : c'est un outil qui s'adapte à la <b>taille du projet</b> et à ses <b>besoins de test</b>.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1rem; margin-top: 0.8rem;">

<div style="background: #27ae60; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="font-size: 1.5rem; font-weight: bold; margin-bottom: 0.4rem;">✓ DI gagne quand</div>
<ul style="font-size: 1.5rem; line-height: 1.55; margin: 0; padding-left: 1.2rem;">
<li>Vous avez plus de 5 services différents</li>
<li>Vous voulez tester sans BDD ni réseau</li>
<li>Vous avez plusieurs implémentations d'une même interface</li>
<li>Le cycle de vie est complexe</li>
</ul>
</div>

<div style="background: #8c3a2f; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="font-size: 1.5rem; font-weight: bold; margin-bottom: 0.4rem;">⚠️ DI est superflu quand</div>
<ul style="font-size: 1.5rem; line-height: 1.55; margin: 0; padding-left: 1.2rem;">
<li>Vous faites un POC ou un prototype</li>
<li>2 classes, pas de I/O</li>
<li>Vous n'avez <em>aucune</em> intention de tester</li>
<li>L'apprentissage du framework dépasse le bénéfice</li>
</ul>
</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.6rem; font-size: 1.5rem; text-align: center;">
👉 Pour la <b>SAÉ chauve-souris</b> : DI <b>obligatoire</b>. Plusieurs sources de données, tests requis, équipe de plusieurs développeurs.
</div>

---

<!-- _class: lead -->
<!-- _header: "" -->
<!-- _footer: "" -->

# Partie 4 - 💾 Persistance

**JDBC, SQLite**

---

## 💾 Pourquoi persister ?

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Jusqu'à présent, l'état de votre app meurt avec le processus. La <b>persistance</b> = stocker l'état au-delà du process Java.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr 1fr; gap: 1.5rem; margin-top: 1.2rem;">

<div style="background: #1a5276; color: white; padding: 1.6rem 1.4rem; border-radius: 12px; text-align: center; display: flex; flex-direction: column;">
<div style="font-size: 3.2rem; line-height: 1;">📁</div>
<div style="font-size: 1.7rem; font-weight: bold; margin-top: 0.7rem;">Fichiers</div>
<div style="font-size: 1.35rem; line-height: 1.55; margin-top: 0.8rem; text-align: left; opacity: 0.95;">CSV, JSON, XML. Simple, pas de serveur. Mauvaise pour la concurrence et les requêtes.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1.6rem 1.4rem; border-radius: 12px; text-align: center; display: flex; flex-direction: column;">
<div style="font-size: 3.2rem; line-height: 1;">🗄️</div>
<div style="font-size: 1.7rem; font-weight: bold; margin-top: 0.7rem;">BDD relationnelle</div>
<div style="font-size: 1.35rem; line-height: 1.55; margin-top: 0.8rem; text-align: left; opacity: 0.95;">PostgreSQL, MySQL, SQLite. Standard, requêtes SQL, transactions, intégrité.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1.6rem 1.4rem; border-radius: 12px; text-align: center; display: flex; flex-direction: column;">
<div style="font-size: 3.2rem; line-height: 1;">📊</div>
<div style="font-size: 1.7rem; font-weight: bold; margin-top: 0.7rem;">NoSQL / clés-valeurs</div>
<div style="font-size: 1.35rem; line-height: 1.55; margin-top: 0.8rem; text-align: left; opacity: 0.95;">MongoDB, Redis, Elasticsearch. Pour des cas spécifiques (cache, plein texte, gros volumes).</div>
</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.6rem; font-size: 1.5rem; text-align: center;">
👉 Pour la SAÉ et le TP5 : <b>BDD relationnelle</b> embarquée (SQLite).
</div>

---

## Trois niveaux d'abstraction Java

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Java propose plusieurs paliers entre votre code et le SQL brut.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr 1fr; gap: 1.5rem; margin-top: 1.2rem; align-items: stretch;">

<div style="background: #8c3a2f; color: white; padding: 1.6rem 1.4rem; border-radius: 12px; text-align: center; display: flex; flex-direction: column; box-shadow: 0 4px 12px rgba(140,58,47,0.4);">
<div style="font-size: 3.2rem; line-height: 1;">⚙️</div>
<div style="font-size: 1.7rem; font-weight: bold; margin-top: 0.7rem;">JDBC</div>
<div style="font-size: 1.35rem; line-height: 1.55; margin-top: 0.8rem; text-align: left; opacity: 0.95;"><b>Bas niveau</b>. Vous écrivez le SQL, vous gérez les connexions.<br/><em>Le focus du TP5.</em></div>
</div>

<div style="background: #7f8c8d; color: white; padding: 1.6rem 1.4rem; border-radius: 12px; text-align: center; display: flex; flex-direction: column;">
<div style="font-size: 3.2rem; line-height: 1;">🔧</div>
<div style="font-size: 1.7rem; font-weight: bold; margin-top: 0.7rem;">Helpers</div>
<div style="font-size: 1.35rem; line-height: 1.55; margin-top: 0.8rem; text-align: left; opacity: 0.95;"><b>Intermédiaire</b>. Vous gardez le SQL, le mapping résultat → objet est automatisé.</div>
</div>

<div style="background: #7f8c8d; color: white; padding: 1.6rem 1.4rem; border-radius: 12px; text-align: center; display: flex; flex-direction: column;">
<div style="font-size: 3.2rem; line-height: 1;">📐</div>
<div style="font-size: 1.7rem; font-weight: bold; margin-top: 0.7rem;">ORM</div>
<div style="font-size: 1.35rem; line-height: 1.55; margin-top: 0.8rem; text-align: left; opacity: 0.95;"><b>Haut niveau</b>. Le SQL est invisible, vous manipulez des objets annotés.</div>
</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.6rem; font-size: 1.5rem; text-align: center;">
👉 Au TP5 on reste sur <b>JDBC</b> : la fondation que toutes les couches au-dessus utilisent en interne. Les outils concrets sont listés en fin de partie.
</div>

---

## JDBC : objectifs et architecture

<p style="font-size: 1.45rem; margin: -0.5rem 0 0.5rem 0;"><b>Java DataBase Connectivity</b> : API standard pour accéder aux SGBD relationnels. <b>Accès homogène</b>, <b>simple</b>, <b>indépendant</b> du SGBD cible.</p>

<div style="display: grid; grid-template-columns: 1.2fr 1fr; gap: 1.2rem; margin-top: 0.7rem; align-items: stretch;">

<div style="background: white; border: 2px solid #1a5276; border-radius: 12px; padding: 0.9rem 1.2rem; display: flex; flex-direction: column; gap: 0.25rem;">
<div style="font-size: 1.35rem; font-weight: bold; color: #1a5276; margin-bottom: 0.35rem;">🏗️ Architecture en couches</div>
<div style="background: #34495e; color: white; padding: 0.45rem 0.9rem; border-radius: 8px; text-align: center; font-size: 1.15rem;">Votre application Java</div>
<div style="text-align: center; color: #888; font-size: 1.1rem; line-height: 1;">↕</div>
<div style="background: #1a5276; color: white; padding: 0.45rem 0.9rem; border-radius: 8px; text-align: center; font-size: 1.15rem;"><b>API JDBC</b> (<code>java.sql</code>)</div>
<div style="text-align: center; color: #888; font-size: 1.1rem; line-height: 1;">↕</div>
<div style="background: #1a5276; color: white; padding: 0.45rem 0.9rem; border-radius: 8px; text-align: center; font-size: 1.15rem;"><b>Driver Manager</b></div>
<div style="text-align: center; color: #888; font-size: 1.1rem; line-height: 1;">↕</div>
<div style="background: #1a5276; color: white; padding: 0.45rem 0.9rem; border-radius: 8px; text-align: center; font-size: 1.15rem;"><b>Driver</b> spécifique (SQLite, MySQL…)</div>
<div style="text-align: center; color: #888; font-size: 1.1rem; line-height: 1;">↕</div>
<div style="background: #27ae60; color: white; padding: 0.45rem 0.9rem; border-radius: 8px; text-align: center; font-size: 1.15rem;">🗄️ SGBD</div>
</div>

<div style="background: white; border: 2px solid #1a5276; border-radius: 12px; padding: 0.9rem 1.2rem; display: flex; flex-direction: column;">
<div style="font-size: 1.35rem; font-weight: bold; color: #1a5276; margin-bottom: 0.4rem;">🧩 Interfaces principales</div>
<div style="font-size: 1.15rem; line-height: 1.6;">
<code>Connection</code> : la session BDD<br/>
<code>Statement</code> : ordre SQL simple<br/>
<code>PreparedStatement</code> : ordre paramétré<br/>
<code>ResultSet</code> : tuples renvoyés par <code>SELECT</code><br/>
<code>DataSource</code> : fournit des <code>Connection</code>
</div>
<div style="background: #2c3e50; color: white; padding: 0.6rem 0.9rem; border-radius: 8px; margin-top: auto; font-size: 1.05rem; line-height: 1.45;">
💡 Changer de SGBD = changer le <b>Driver</b>, pas le code applicatif.
</div>
</div>

</div>

---

## Le scénario en 7 étapes

<p style="font-size: 1.45rem; margin: -0.5rem 0 0.5rem 0;">Tout accès aux données via JDBC suit le même scénario. Les étapes 1 et 2 sont <b>automatiques depuis JDBC 4.0</b> : on commence en pratique à l'étape 3.</p>

<div style="display: grid; grid-template-columns: repeat(4, 1fr); gap: 0.7rem; margin-top: 1rem;">

<div style="background: #7f8c8d; color: white; padding: 0.7rem 0.8rem; border-radius: 10px;">
<div style="font-size: 1.05rem; opacity: 0.85;">Étape 1</div>
<div style="font-size: 1.15rem; font-weight: bold; margin-top: 0.2rem;">Importer l'API</div>
<div style="font-size: 0.95rem; opacity: 0.9; margin-top: 0.2rem;"><code>import java.sql.*</code></div>
</div>

<div style="background: #7f8c8d; color: white; padding: 0.7rem 0.8rem; border-radius: 10px;">
<div style="font-size: 1.05rem; opacity: 0.85;">Étape 2</div>
<div style="font-size: 1.15rem; font-weight: bold; margin-top: 0.2rem;">Enregistrer le pilote</div>
<div style="font-size: 0.95rem; opacity: 0.9; margin-top: 0.2rem;"><em>auto depuis JDBC 4.0</em></div>
</div>

<div style="background: #1a5276; color: white; padding: 0.7rem 0.8rem; border-radius: 10px;">
<div style="font-size: 1.05rem; opacity: 0.85;">Étape 3</div>
<div style="font-size: 1.15rem; font-weight: bold; margin-top: 0.2rem;">Connexion</div>
<div style="font-size: 0.95rem; opacity: 0.9; margin-top: 0.2rem;"><code>DriverManager.getConnection()</code></div>
</div>

<div style="background: #1a5276; color: white; padding: 0.7rem 0.8rem; border-radius: 10px;">
<div style="font-size: 1.05rem; opacity: 0.85;">Étape 4</div>
<div style="font-size: 1.15rem; font-weight: bold; margin-top: 0.2rem;">Préparer l'instruction</div>
<div style="font-size: 0.95rem; opacity: 0.9; margin-top: 0.2rem;"><code>prepareStatement(sql)</code></div>
</div>

<div style="background: #1a5276; color: white; padding: 0.7rem 0.8rem; border-radius: 10px;">
<div style="font-size: 1.05rem; opacity: 0.85;">Étape 5</div>
<div style="font-size: 1.15rem; font-weight: bold; margin-top: 0.2rem;">Exécuter</div>
<div style="font-size: 0.95rem; opacity: 0.9; margin-top: 0.2rem;"><code>executeQuery / Update()</code></div>
</div>

<div style="background: #1a5276; color: white; padding: 0.7rem 0.8rem; border-radius: 10px;">
<div style="font-size: 1.05rem; opacity: 0.85;">Étape 6</div>
<div style="font-size: 1.15rem; font-weight: bold; margin-top: 0.2rem;">Traiter les résultats</div>
<div style="font-size: 0.95rem; opacity: 0.9; margin-top: 0.2rem;"><code>ResultSet.next() / getXXX()</code></div>
</div>

<div style="background: #1a5276; color: white; padding: 0.7rem 0.8rem; border-radius: 10px;">
<div style="font-size: 1.05rem; opacity: 0.85;">Étape 7</div>
<div style="font-size: 1.15rem; font-weight: bold; margin-top: 0.2rem;">Libérer les ressources</div>
<div style="font-size: 0.95rem; opacity: 0.9; margin-top: 0.2rem;">try-with-resources</div>
</div>

<div style="background: #8c3a2f; color: white; padding: 0.7rem 0.8rem; border-radius: 10px;">
<div style="font-size: 1.05rem; opacity: 0.85;">+</div>
<div style="font-size: 1.15rem; font-weight: bold; margin-top: 0.2rem;">Gérer les exceptions</div>
<div style="font-size: 0.95rem; opacity: 0.9; margin-top: 0.2rem;"><code>SQLException</code> à chaque étape</div>
</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 1rem; font-size: 1.45rem; text-align: center;">
👉 Les slides suivantes détaillent les <b>étapes 3 à 7</b> à travers un canon <code>SELECT</code> complet.
</div>

---

## Canon JDBC : un SELECT complet

<style scoped>
section pre { font-size: 0.75rem !important; line-height: 1.4 !important; }
</style>

```java
String sql = "SELECT id, nom FROM utilisateur WHERE actif = ?";
String url = "jdbc:sqlite:chauves_souris.db";

try (Connection conn = DriverManager.getConnection(url);         // ⑶ Connection
     PreparedStatement ps = conn.prepareStatement(sql)) {        // ⑷ Instruction

  ps.setBoolean(1, true);                                        // ⑷ Paramètre

  try (ResultSet rs = ps.executeQuery()) {                       // ⑸ Exécution
    List<Utilisateur> liste = new ArrayList<>();
    while (rs.next()) {                                          // ⑹ Parcours
      Utilisateur u = new Utilisateur(
          rs.getInt("id"),                                       // ⑹ getXXX
          rs.getString("nom"));
      liste.add(u);
    }
    return liste;
  }
}                                                                 // ⑺ Fermeture auto
```
---

## Étape 3 : la Connection

<style scoped>
section pre { font-size: 0.85rem !important; line-height: 1.35 !important; }
</style>

<p style="font-size: 1.45rem; margin: -0.5rem 0 0.5rem 0;">Une <code>Connection</code> représente une <b>session</b> ouverte avec le SGBD. On l'obtient via le <code>DriverManager</code> à partir d'une URL JDBC.</p>

```java
String url = "jdbc:sqlite:chauves_souris.db";
// Format général : jdbc:<sgbd>:<location>[?options]
// Exemples :
//   jdbc:sqlite::memory:                  ← en mémoire (tests)
//   jdbc:postgresql://localhost:5432/db   ← serveur distant
//   jdbc:mysql://srv/db?useSSL=true       ← avec options

try (Connection conn = DriverManager.getConnection(url)) {
  // ... la connexion est ouverte ici ...
}  // fermée automatiquement à la sortie du bloc
```

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.5rem; font-size: 1.4rem; text-align: center;">
💡 L'URL JDBC encode le SGBD, l'emplacement et les options. <b>Changer de SGBD = changer l'URL.</b>
</div>

---

## Étape 4 : Statement ou PreparedStatement ?

<style scoped>
section pre { font-size: 0.85rem !important; line-height: 1.35 !important; }
section .code-col { display: flex; flex-direction: column; }
section .code-col pre { flex: 1; margin-top: 0 !important; }
</style>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1rem; margin-top: 0.5rem; align-items: stretch;">

<div class="code-col">
<div style="background: #8c3a2f; color: white; padding: 0.5rem 0.9rem; border-radius: 8px 8px 0 0; font-weight: bold; font-size: 1.3rem;">✗ Statement + concaténation</div>

```java
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(
  "SELECT * FROM users "
  + "WHERE login = '" + login + "'");

// Si login = "' OR '1'='1"
// → renvoie TOUS les utilisateurs.
// → faille critique (injection SQL).
```

</div>

<div class="code-col">
<div style="background: #27ae60; color: white; padding: 0.5rem 0.9rem; border-radius: 8px 8px 0 0; font-weight: bold; font-size: 1.3rem;">✓ PreparedStatement paramétré</div>

```java
PreparedStatement ps = conn.prepareStatement(
  "SELECT * FROM users WHERE login = ?");
ps.setString(1, login);
ResultSet rs = ps.executeQuery();

// Le driver échappe correctement.
// Bonus : requête pré-compilée
// → plus rapide si réutilisée.
```

</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.6rem; font-size: 1.45rem; text-align: center;">
🔒 <b>Règle absolue</b> : jamais de concaténation de paramètres. Toujours <code>PreparedStatement</code> avec <code>?</code> + <code>setXXX()</code>.
</div>

---

## Étape 5 : Exécuter la requête

<style scoped>
section table { font-size: 1rem !important; width: 100%; border-collapse: collapse; line-height: 1.4 !important; }
section th { background: #1a5276 !important; color: white !important; padding: 0.4rem 0.7rem !important; text-align: left !important; }
section td { padding: 0.35rem 0.7rem !important; border-bottom: 1px solid #e0e0e0 !important; vertical-align: top; }
section tr:nth-child(even) td { background: #f4f6f8 !important; }
</style>

<p style="font-size: 1.45rem; margin: -0.5rem 0 0.6rem 0;">Le <code>PreparedStatement</code> propose trois méthodes d'exécution selon le type d'ordre SQL.</p>

| Méthode | Pour quel SQL ? | Renvoie |
|---|---|---|
| `executeQuery()` | `SELECT` (lecture) | un `ResultSet` avec les tuples |
| `executeUpdate()` | `INSERT` / `UPDATE` / `DELETE` / `CREATE TABLE` | un `int` : nombre de lignes affectées |
| `execute()` | Tout type (rare) | un `boolean` : `true` si c'est un `ResultSet` |

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.8rem; font-size: 1.45rem; text-align: center;">
👉 En pratique : <code>executeQuery</code> pour lire, <code>executeUpdate</code> pour modifier. Le mauvais choix lève une <code>SQLException</code>.
</div>

---

## Étape 6 : Parcourir le ResultSet

<style scoped>
section pre { font-size: 0.85rem !important; line-height: 1.35 !important; }
</style>

<p style="font-size: 1.45rem; margin: -0.5rem 0 0.5rem 0;">Un <code>ResultSet</code> est un <b>itérateur</b> sur les lignes renvoyées par <code>SELECT</code>. On avance ligne par ligne avec <code>rs.next()</code>, on lit colonne par colonne avec <code>rs.getXXX()</code>.</p>

```java
try (ResultSet rs = ps.executeQuery()) {
  while (rs.next()) {              // avance d'une ligne, false quand fin
    int    id  = rs.getInt("id");          // par nom de colonne
    String nom = rs.getString(2);          // ou par index (1-based)
    boolean a  = rs.getBoolean("actif");
    // ... transformation en un objet Java
  }
}
```

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1rem; margin-top: 0.7rem;">

<div style="background: #1a5276; color: white; padding: 0.8rem 1rem; border-radius: 10px;">
<div style="font-size: 1.5rem; font-weight: bold;">📌 Par nom (recommandé)</div>
<div style="font-size: 1.3rem; margin-top: 0.3rem;">Lisible, résistant au changement d'ordre des colonnes dans le SELECT.</div>
</div>

<div style="background: #1a5276; color: white; padding: 0.8rem 1rem; border-radius: 10px;">
<div style="font-size: 1.5rem; font-weight: bold;">⚡ Par index (rapide)</div>
<div style="font-size: 1.3rem; margin-top: 0.3rem;">Légèrement plus rapide. Index <b>1-based</b> (pas 0). Plus fragile.</div>
</div>

</div>

---

## Correspondance types Java ↔ SQL

<style scoped>
section table { font-size: 0.85rem !important; width: 100%; border-collapse: collapse; line-height: 1.35 !important; }
section th { background: #1a5276 !important; color: white !important; padding: 0.3rem 0.6rem !important; text-align: left !important; }
section td { padding: 0.25rem 0.6rem !important; border-bottom: 1px solid #e0e0e0 !important; }
section tr:nth-child(even) td { background: #f4f6f8 !important; }
</style>

<p style="font-size: 1.4rem; margin: -0.5rem 0 0.5rem 0;">JDBC traduit automatiquement entre types SQL et types Java. La méthode est presque toujours <code>get</code> + nom du type Java (<code>getString</code>, <code>getInt</code>, <code>getDate</code>…).</p>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1.2rem; margin-top: 0.6rem;">

<div>

| Type SQL | Type Java |
|---|---|
| `VARCHAR`, `CHAR`, `TEXT` | `String` |
| `INTEGER` | `int` |
| `BIGINT` | `long` |
| `BOOLEAN`, `BIT` | `boolean` |
| `REAL`, `FLOAT` | `float` / `double` |
| `NUMERIC`, `DECIMAL` | `BigDecimal` |

</div>

<div>

| Type SQL | Type Java |
|---|---|
| `DATE` | `java.sql.Date` |
| `TIME` | `java.sql.Time` |
| `TIMESTAMP` | `java.sql.Timestamp` |
| `BLOB`, `BINARY` | `byte[]` *(getBytes)* |
| `CLOB` | `String` |

</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.7rem 1rem; border-radius: 8px; margin-top: 0.9rem; font-size: 1.5rem; line-height: 1.45;">
💡 Si la conversion est impossible, le driver lève une <code>SQLException</code>.
</div>

---

## Gestion des valeurs NULL : le piège

<style scoped>
section pre { font-size: 0.85rem !important; line-height: 1.35 !important; margin-top: 1rem !important; }
</style>

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Comment reconnaître un <code>NULL</code> SQL côté Java ? La convention dépend du <b>type</b> retourné.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1rem;">

<div style="background: #1a5276; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="font-size: 1.6rem; font-weight: bold; margin-bottom: 0.4rem;">🟢 Types objets</div>
<div style="font-size: 1.4rem; line-height: 1.55;"><code>getString()</code>, <code>getDate()</code>, <code>getObject()</code>, <code>getBigDecimal()</code>… retournent une <b>référence <code>null</code></b>. Pas d'ambiguïté.</div>
</div>

<div style="background: #8c3a2f; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="font-size: 1.6rem; font-weight: bold; margin-bottom: 0.4rem;">⚠️ Types primitifs</div>
<div style="font-size: 1.4rem; line-height: 1.55;"><code>getInt()</code>, <code>getLong()</code>, <code>getDouble()</code> renvoient <b><code>0</code></b> pour <code>NULL</code>. <code>getBoolean()</code> renvoie <b><code>false</code></b>. Impossible de distinguer <code>NULL</code> de zéro !</div>
</div>

</div>

```java
int age = rs.getInt("age");        // 0 si NULL OU si age vaut 0 ?
if (rs.wasNull()) {                // seule façon de lever le doute
  // C'était bien un NULL en BDD
}
```

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.6rem; font-size: 1.5rem; text-align: center;">
👉 Pour les nombres : <code>rs.wasNull()</code> APRÈS la lecture pour distinguer 0 et NULL.
</div>

---

## Étape 7 : libérer les ressources

<style scoped>
section pre { font-size: 0.7rem !important; line-height: 1.35 !important; }
section .code-col { display: flex; flex-direction: column; }
section .code-col pre { flex: 1; margin-top: 0 !important; }
</style>

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Une <code>Connection</code> ouverte = un coût et un verrou. Il faut <b>impérativement</b> la fermer, même en cas d'erreur. Le <b>try-with-resources</b> rend ça automatique.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1rem; margin-top: 0.5rem; align-items: stretch;">

<div class="code-col">
<div style="background: #8c3a2f; color: white; padding: 0.5rem 0.9rem; border-radius: 8px 8px 0 0; font-weight: bold; font-size: 1.3rem;">✗ try/finally manuel</div>

```java
Connection conn = null;
PreparedStatement ps = null;
try {
  conn = ds.getConnection();
  ps = conn.prepareStatement(sql);
  // ...
} finally {
  if (ps != null) ps.close();
  if (conn != null) conn.close();
}
```

</div>

<div class="code-col">
<div style="background: #27ae60; color: white; padding: 0.5rem 0.9rem; border-radius: 8px 8px 0 0; font-weight: bold; font-size: 1.3rem;">✓ try-with-resources</div>

```java
try (Connection conn = ds.getConnection();
     PreparedStatement ps =
         conn.prepareStatement(sql)) {
  // ...
}
// ps puis conn fermés automatiquement,
// dans l'ordre inverse, même en cas
// d'exception.
```

</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.6rem; font-size: 1.5rem; text-align: center;">
💡 La fermeture d'un <code>Statement</code> ferme automatiquement les <code>ResultSet</code> associés. Mais on emboîte un 2e <code>try</code> pour aussi gérer les exceptions du parcours.
</div>

---

## INSERT, UPDATE, DELETE : `executeUpdate`

<style scoped>
section pre { font-size: 0.75rem !important; line-height: 1.35 !important; }
</style>

<p style="font-size: 1.45rem; margin: -0.5rem 0 0.5rem 0;">Même scénario que <code>SELECT</code>, sauf que l'étape 5 utilise <code>executeUpdate()</code> et il n'y a plus de <code>ResultSet</code> à parcourir.</p>

```java
public void save(Utilisateur u) throws SQLException {
  String sql = "INSERT INTO utilisateur (nom, email, actif) VALUES (?, ?, ?)";

  try (Connection conn = ds.getConnection();
       PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {

    ps.setString(1, u.getNom());
    ps.setString(2, u.getEmail());
    ps.setBoolean(3, u.isActif());

    int lignesAffectees = ps.executeUpdate();   // ← pas executeQuery !

    try (ResultSet keys = ps.getGeneratedKeys()) {   // récupérer l'id auto
      if (keys.next()) u.setId(keys.getLong(1));
    }
  }
}
```

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.5rem; font-size: 1.45rem; text-align: center;">
<code>executeUpdate()</code> renvoie le nombre de lignes affectées. <code>RETURN_GENERATED_KEYS</code> pour récupérer l'id auto-généré (clé primaire).
</div>

---

## Transactions : commit ou rollback

<style scoped>
section pre { font-size: 0.8rem !important; line-height: 1.35 !important; }
</style>

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Une transaction = plusieurs ordres SQL qui réussissent <b>ensemble</b> ou <b>échouent ensemble</b>. Atomicité indispensable pour les opérations critiques.</p>

```java
public void transferer(long depuis, long vers, BigDecimal montant) throws SQLException {
  try (Connection conn = ds.getConnection()) {
    conn.setAutoCommit(false);   // ← démarrage d'une transaction
    try {
      debiter(conn, depuis, montant);
      crediter(conn, vers, montant);
      conn.commit();             // ← tout réussit, on persiste
    } catch (SQLException e) {
      conn.rollback();           // ← une étape échoue, on annule TOUT
      throw e;
    }
  }
}
```

<div style="background: #8c3a2f; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.6rem; font-size: 1.45rem; text-align: center;">
🔥 Sans transaction : un crash entre <code>débit</code> et <code>crédit</code> = de l'argent perdu. <b>Inacceptable.</b>
</div>

---

## 🗄️ SQLite pour la BDD locale

<style scoped>
section pre { font-size: 0.8rem !important; line-height: 1.35 !important; }
</style>

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Le SGBD utilisé en TP5 et pour la SAÉ. Pas de serveur à installer, pas de configuration : un fichier <code>.db</code> sur le disque suffit.</p>

```xml
<!-- pom.xml : le driver JDBC SQLite -->
<dependency>
  <groupId>org.xerial</groupId>
  <artifactId>sqlite-jdbc</artifactId>
  <version>3.46.1.0</version>
</dependency>
```

```java
// URL JDBC : le chemin du fichier (créé à la première connexion si absent)
String url = "jdbc:sqlite:chauves_souris.db";

// Ou en mémoire pour les tests :
String urlTest = "jdbc:sqlite::memory:";

try (Connection conn = DriverManager.getConnection(url)) {
    // ...
}
```

---

## Pourquoi SQLite pour le TP et la SAÉ

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1rem; margin-top: 0.8rem;">

<div style="background: #1a5276; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="font-size: 1.5rem; font-weight: bold; margin-bottom: 0.4rem;">🚀 Zéro installation</div>
<div style="font-size: 1.3rem; line-height: 1.5;">Une dépendance Maven et c'est fini. Pas de service à lancer, pas de port à ouvrir.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="font-size: 1.5rem; font-weight: bold; margin-bottom: 0.4rem;">📦 Embarqué dans l'app</div>
<div style="font-size: 1.3rem; line-height: 1.5;">Le moteur SQL vit dans la JVM. La BDD = un fichier portable que vous pouvez copier, versionner, archiver.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="font-size: 1.5rem; font-weight: bold; margin-bottom: 0.4rem;">🧪 Tests gratuits</div>
<div style="font-size: 1.3rem; line-height: 1.5;">Mode <code>:memory:</code> : BDD jetable créée à chaque test, isolée, rapide. Idéal pour la pyramide de tests.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="font-size: 1.5rem; font-weight: bold; margin-bottom: 0.4rem;">🎯 Parfait pour la SAÉ</div>
<div style="font-size: 1.3rem; line-height: 1.5;">Mono-utilisateur, capteurs locaux, BDD embarquée : SQLite couvre tout le besoin de la SAÉ et du TP5.</div>
</div>

</div>

---

## Le pattern DAO : encapsuler l'accès aux données

<style scoped>
section pre { font-size: 0.8rem !important; line-height: 1.35 !important; }
</style>

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Écrire du SQL au milieu d'un ViewModel = retour aux antipatterns du CM3. On encapsule l'accès aux données dans une <b>classe dédiée par entité</b> : le <b>DAO</b> (Data Access Object).</p>

```java
public class UtilisateurDao {
  private final DataSource ds;

  @Inject
  public UtilisateurDao(DataSource ds) {
    this.ds = ds;
  }

  public List<Utilisateur> findActifs() { /* SELECT ... */ }
  public Optional<Utilisateur> findById(long id) { /* SELECT ... */ }
  public void save(Utilisateur u) { /* INSERT ou UPDATE */ }
  public void delete(long id) { /* DELETE */ }
}
```

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.6rem; font-size: 1.45rem; text-align: center;">
👉 Le ViewModel ne voit jamais de SQL. Il <code>@Inject</code> son DAO et appelle des méthodes métier. <b>Substituable en test</b> par un fake DAO en mémoire.
</div>

---

## Connection pool : ne pas ouvrir/fermer 1000 fois

<style scoped>
section pre { font-size: 0.8rem !important; line-height: 1.35 !important; }
</style>

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Ouvrir une <code>Connection</code> JDBC coûte ~50-200 ms (poignée de main TCP, auth, init session). Pour une app interactive, on garde un <b>pool</b> de connexions prêtes à l'emploi.</p>

```java
// HikariCP : le standard de fait, ultra rapide
HikariConfig config = new HikariConfig();
config.setJdbcUrl("jdbc:sqlite:chauves_souris.db");
config.setMaximumPoolSize(10);
// (PostgreSQL/MySQL : setUsername + setPassword en plus.
//  SQLite est sans auth, le fichier suffit.)

DataSource ds = new HikariDataSource(config);

// Les DAOs reçoivent ds via Guice
// ds.getConnection() = prendre une connexion du pool (instantané)
// connection.close() = la rendre au pool (pas de vraie fermeture)
```

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.6rem; font-size: 1.45rem; text-align: center;">
👉 Toujours travailler avec une <code>DataSource</code>, jamais avec un <code>DriverManager.getConnection()</code> direct en production.
</div>

---

## L'architecture complète

<p style="font-size: 1.45rem; margin: -0.5rem 0 0.6rem 0;">Toutes les couches du CM4 emboîtées : chaque flèche signale une dépendance unidirectionnelle (haut → bas), chaque couche reste testable indépendamment.</p>

<div style="display: grid; grid-template-columns: 1.4fr 1fr; gap: 1.2rem; margin-top: 0.8rem; align-items: start;">

<div style="display: flex; flex-direction: column; gap: 0.15rem;">

<div style="background: #4a90d9; color: white; padding: 0.55rem 0.9rem; border-radius: 8px; font-size: 1.15rem; display: flex; justify-content: space-between; align-items: center;"><span><b>🖼️ Vue</b> (FXML + Controller léger)</span><span style="opacity: 0.8; font-size: 0.95rem;">JavaFX</span></div>
<div style="text-align: center; color: #888; font-size: 1rem; line-height: 1;">↓ bind</div>
<div style="background: #8e44ad; color: white; padding: 0.55rem 0.9rem; border-radius: 8px; font-size: 1.15rem; display: flex; justify-content: space-between; align-items: center;"><span><b>🎯 ViewModel</b> (Properties + commandes)</span><span style="opacity: 0.8; font-size: 0.95rem;">MVVM</span></div>
<div style="text-align: center; color: #888; font-size: 1rem; line-height: 1;">↓ @Inject</div>
<div style="background: #1a5276; color: white; padding: 0.55rem 0.9rem; border-radius: 8px; font-size: 1.15rem; display: flex; justify-content: space-between; align-items: center;"><span><b>📦 DAO</b> (1 classe par entité)</span><span style="opacity: 0.8; font-size: 0.95rem;">Pattern</span></div>
<div style="text-align: center; color: #888; font-size: 1rem; line-height: 1;">↓ ds.getConnection()</div>
<div style="background: #7f8c8d; color: white; padding: 0.55rem 0.9rem; border-radius: 8px; font-size: 1.15rem; display: flex; justify-content: space-between; align-items: center;"><span><b>🔌 DataSource</b> (pool HikariCP)</span><span style="opacity: 0.8; font-size: 0.95rem;">Pool</span></div>
<div style="text-align: center; color: #888; font-size: 1rem; line-height: 1;">↓ API standard</div>
<div style="background: #34495e; color: white; padding: 0.55rem 0.9rem; border-radius: 8px; font-size: 1.15rem; display: flex; justify-content: space-between; align-items: center;"><span><b>⚙️ JDBC</b> (<code>java.sql</code>)</span><span style="opacity: 0.8; font-size: 0.95rem;">API</span></div>
<div style="text-align: center; color: #888; font-size: 1rem; line-height: 1;">↓ driver</div>
<div style="background: #27ae60; color: white; padding: 0.55rem 0.9rem; border-radius: 8px; font-size: 1.15rem; display: flex; justify-content: space-between; align-items: center;"><span><b>🗄️ SQLite</b> (fichier <code>.db</code>)</span><span style="opacity: 0.8; font-size: 0.95rem;">SGBD</span></div>

</div>

<div style="background: white; border: 2px solid #1a5276; border-radius: 12px; padding: 0.9rem 1.1rem;">
<div style="font-size: 1.3rem; font-weight: bold; color: #1a5276; margin-bottom: 0.4rem;">🧪 Testabilité par couche</div>
<div style="font-size: 1.05rem; line-height: 1.5;">
<b>Vue</b> : TestFX (rare)<br/>
<b>ViewModel</b> : JUnit + DAO mocké<br/>
<b>DAO</b> : JUnit + SQLite en mémoire<br/>
<b>JDBC, DataSource, SGBD</b> : déjà testés par leurs éditeurs
</div>
<div style="background: #2c3e50; color: white; padding: 0.6rem 0.9rem; border-radius: 8px; margin-top: 0.7rem; font-size: 1.05rem; line-height: 1.45;">
💡 <b>Guice</b> injecte les bons composants en prod comme en test : la même architecture, juste un module différent.
</div>
</div>

</div>

---

## Au-delà de JDBC : ouvertures

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">JDBC est la <b>fondation</b>. Quand vos applications grandissent, des couches supplémentaires deviennent utiles.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1rem; margin-top: 0.8rem;">

<div style="background: #1a5276; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="font-size: 1.5rem; font-weight: bold; margin-bottom: 0.4rem;">🔧 Helpers (jOOQ, JDBI, MyBatis)</div>
<div style="font-size: 1.3rem; line-height: 1.5;">Vous gardez le SQL, mais le mapping ResultSet → objet est automatisé. Compromis pragmatique.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="font-size: 1.5rem; font-weight: bold; margin-bottom: 0.4rem;">📐 ORM (Hibernate / JPA)</div>
<div style="font-size: 1.3rem; line-height: 1.5;">Annotations sur les classes, le SQL devient invisible. Apprentissage long, traité dans la suite du BUT.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="font-size: 1.5rem; font-weight: bold; margin-bottom: 0.4rem;">🌐 NoSQL (MongoDB, Redis)</div>
<div style="font-size: 1.3rem; line-height: 1.5;">Pour des modèles non-relationnels, du cache rapide ou du gros volume. Spécifique à certains besoins.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1.2rem 1.3rem; border-radius: 12px;">
<div style="font-size: 1.5rem; font-weight: bold; margin-bottom: 0.4rem;">🚀 Frameworks complets</div>
<div style="font-size: 1.3rem; line-height: 1.5;"><b>Spring Data</b>, <b>Quarkus</b>, <b>Micronaut</b>… combinent DI + persistance + REST. Standard du backend Java moderne.</div>
</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.8rem; font-size: 1.45rem; text-align: center;">
Côté relationnel, tous ces outils s'appuient au final sur <b>JDBC</b>. Le NoSQL emprunte un chemin parallèle (drivers dédiés).
</div>

---

<!-- _class: lead -->
<!-- _header: "" -->
<!-- _footer: "" -->

# Partie 5 - 🧠 Prévention des erreurs

**Heuristique de Nielsen #5**

---

## 🧠 Heuristique #5 - Error prevention

<div style="background: #27ae60; color: white; padding: 1.5rem 2rem; border-radius: 12px; margin-top: 1rem; font-size: 1.5rem; line-height: 1.5; text-align: center;">
« <em>Even better than good error messages is a careful design which prevents a problem from occurring in the first place.</em> »
<div style="margin-top: 0.6rem; font-size: 1.1rem; opacity: 0.9;"> -  Jakob Nielsen, 1994</div>
</div>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 0.9rem; margin-top: 0.9rem;">

<div style="background: #1a5276; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.3rem; font-weight: bold; margin-bottom: 0.4rem;">🛡️ Constraint by design</div>
<div style="font-size: 1.1rem; line-height: 1.45;">Empêcher l'erreur d'arriver plutôt que la traiter après coup. Désactiver, restreindre, valider à la saisie.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.3rem; font-weight: bold; margin-bottom: 0.4rem;">⚠️ Confirm before destruction</div>
<div style="font-size: 1.1rem; line-height: 1.45;">Pour les actions destructrices (supprimer, écraser), demander confirmation explicite avec <em>« Êtes-vous sûr ? »</em>.</div>
</div>

</div>

---

## En pratique avec les outils du module

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 0.9rem; margin-top: 0.5rem;">

<div style="background: #4a90d9; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.3rem; font-weight: bold; margin-bottom: 0.4rem;">🎯 Affordance (CM2)</div>
<div style="font-size: 1.1rem; line-height: 1.5;"><code>btn.disableProperty().bind(...)</code> - l'utilisateur ne <b>peut pas</b> cliquer sur un bouton dont l'action serait invalide.</div>
</div>

<div style="background: #4a90d9; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.3rem; font-weight: bold; margin-bottom: 0.4rem;">📝 Validation à la saisie</div>
<div style="font-size: 1.1rem; line-height: 1.5;"><code>TextFormatter</code> + masque numérique : impossible de taper des lettres dans un champ « âge ».</div>
</div>

<div style="background: #4a90d9; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.3rem; font-weight: bold; margin-bottom: 0.4rem;">📋 Listes restreintes</div>
<div style="font-size: 1.1rem; line-height: 1.5;"><code>ComboBox</code> avec valeurs prédéfinies plutôt que <code>TextField</code> libre. L'utilisateur ne peut pas se tromper.</div>
</div>

<div style="background: #4a90d9; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.3rem; font-weight: bold; margin-bottom: 0.4rem;">⏱️ Confirmations explicites</div>
<div style="font-size: 1.1rem; line-height: 1.5;"><code>Alert.AlertType.CONFIRMATION</code> avant tout <code>DELETE</code>. Bouton « Annuler » par défaut.</div>
</div>

</div>

---

## Heuristique #9 - Récupérer après l'erreur

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Quand l'erreur arrive malgré tout, l'utilisateur doit pouvoir <b>comprendre</b> et <b>réparer</b>.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 0.9rem; margin-top: 0.4rem;">

<div style="background: #8c3a2f; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.3rem; font-weight: bold; margin-bottom: 0.4rem;">✗ Mauvais message</div>
<div style="font-size: 1.1rem; line-height: 1.5;"><em>« Erreur 0x4F-A2 »</em><br/><em>« java.sql.SQLException: ORA-00942 »</em><br/><em>« Une erreur s'est produite »</em></div>
</div>

<div style="background: #27ae60; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.3rem; font-weight: bold; margin-bottom: 0.4rem;">✓ Bon message</div>
<div style="font-size: 1.1rem; line-height: 1.5;"><em>« Le serveur de la base de données ne répond pas. Vérifiez votre connexion ou réessayez dans quelques secondes. »</em></div>
</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.6rem; font-size: 1.5rem; line-height: 1.55; text-align: center;">
👉 Trois critères : <b>en langage humain</b>, <b>identifie le problème</b>, <b>suggère une solution</b>.
</div>

---

## Validation à plusieurs niveaux

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">La défense contre les erreurs se joue à <b>chaque couche</b> de l'architecture. Plus tôt on attrape, mieux c'est.</p>

<div style="display: grid; grid-template-columns: auto 1fr; gap: 0.4rem 0.9rem; align-items: center; margin-top: 0.4rem;">

<div style="background: #4a90d9; color: white; padding: 0.5rem 0.8rem; border-radius: 6px; font-weight: bold; font-size: 1rem; text-align: center;">UI</div>
<div style="background: rgba(74,144,217,0.1); padding: 0.5rem 0.9rem; border-radius: 6px; font-size: 1.05rem;"><code>TextFormatter</code>, <code>ComboBox</code>, validation côté champ. Empêche les saisies absurdes.</div>

<div style="background: #8e44ad; color: white; padding: 0.5rem 0.8rem; border-radius: 6px; font-weight: bold; font-size: 1rem; text-align: center;">VM</div>
<div style="background: rgba(142,68,173,0.1); padding: 0.5rem 0.9rem; border-radius: 6px; font-size: 1.05rem;">Validation métier : email valide, dates cohérentes, montants positifs. Messages utilisateur.</div>

<div style="background: #1a5276; color: white; padding: 0.5rem 0.8rem; border-radius: 6px; font-weight: bold; font-size: 1rem; text-align: center;">Modèle</div>
<div style="background: rgba(26,82,118,0.1); padding: 0.5rem 0.9rem; border-radius: 6px; font-size: 1.05rem;">Invariants au constructeur : interdit de créer un objet en état illégal. Lève des exceptions.</div>

<div style="background: #8c3a2f; color: white; padding: 0.5rem 0.8rem; border-radius: 6px; font-weight: bold; font-size: 1rem; text-align: center;">DAO</div>
<div style="background: rgba(192,57,43,0.1); padding: 0.5rem 0.9rem; border-radius: 6px; font-size: 1.05rem;">Vérifications avant écriture : unicité, références. Limite l'aller-retour avec la BDD.</div>

<div style="background: #27ae60; color: white; padding: 0.5rem 0.8rem; border-radius: 6px; font-weight: bold; font-size: 1rem; text-align: center;">BDD</div>
<div style="background: rgba(39,174,96,0.1); padding: 0.5rem 0.9rem; border-radius: 6px; font-size: 1.05rem;">Contraintes <code>NOT NULL</code>, <code>CHECK</code>, <code>UNIQUE</code>, clés étrangères. Garde-fou ultime.</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.5rem; font-size: 1.5rem; text-align: center;">
👉 Toujours mettre une contrainte BDD <b>en plus</b> de la validation côté code. La BDD ne se laissera jamais avoir.
</div>

---

## Annuler : la sortie de secours

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Heuristique #3 (<em>User control and freedom</em>) : l'utilisateur fait une erreur, il doit pouvoir <b>revenir en arrière</b>.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 0.9rem; margin-top: 0.4rem;">

<div style="background: #1a5276; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.3rem; font-weight: bold; margin-bottom: 0.4rem;">↩️ Undo / Redo</div>
<div style="font-size: 1.1rem; line-height: 1.5;">Pattern Memento ou Command stack. Tout VM a une <code>undoStack</code>. <kbd>Ctrl+Z</kbd> standard.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.3rem; font-weight: bold; margin-bottom: 0.4rem;">🚪 Bouton Cancel</div>
<div style="font-size: 1.1rem; line-height: 1.5;">Toute boîte de dialogue a un bouton « Annuler ». <kbd>Esc</kbd> le déclenche.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.3rem; font-weight: bold; margin-bottom: 0.4rem;">💾 Brouillons sauvegardés</div>
<div style="font-size: 1.1rem; line-height: 1.5;">Si l'app crashe, l'utilisateur retrouve sa saisie au redémarrage. JPA + autosave dans VM.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.3rem; font-weight: bold; margin-bottom: 0.4rem;">🗑️ Corbeille au lieu de delete</div>
<div style="font-size: 1.1rem; line-height: 1.5;">Suppression « molle » (flag <code>actif=false</code>) plutôt que <code>DELETE</code>. Récupération possible.</div>
</div>

</div>

---

## L'architecture aide à prévenir

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">MVVM + DI + persistance n'est pas qu'un confort développeur : c'est aussi un garde-fou contre les bugs visibles par l'utilisateur.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 0.9rem; margin-top: 0.4rem;">

<div style="background: #27ae60; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.3rem; font-weight: bold; margin-bottom: 0.4rem;">🧪 Tests = bugs prévenus</div>
<div style="font-size: 1.1rem; line-height: 1.5;">Le ViewModel testable JUnit attrape 90% des bugs de logique <b>avant</b> qu'ils touchent l'utilisateur.</div>
</div>

<div style="background: #27ae60; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.3rem; font-weight: bold; margin-bottom: 0.4rem;">🔌 DI = remplacements faciles</div>
<div style="font-size: 1.1rem; line-height: 1.5;">Mode dégradé en cas de panne BDD : on bascule sur un cache local via une autre liaison Guice.</div>
</div>

<div style="background: #27ae60; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.3rem; font-weight: bold; margin-bottom: 0.4rem;">📊 Modèle solide</div>
<div style="font-size: 1.1rem; line-height: 1.5;">Logique métier dans le modèle, contraintes en BDD : impossible de créer un état illégal.</div>
</div>

<div style="background: #27ae60; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.3rem; font-weight: bold; margin-bottom: 0.4rem;">🔄 Transactions = atomicité</div>
<div style="font-size: 1.1rem; line-height: 1.5;">Une opération réussit complètement ou est annulée. Pas d'état corrompu en cas d'échec partiel.</div>
</div>

</div>

---

<!-- _class: lead -->
<!-- _header: "" -->
<!-- _footer: "" -->

# Synthèse du module

---

## Ce que vous avez appris en 4 CM

<style scoped>
section table { font-size: 0.85rem !important; width: 100%; border-collapse: collapse; }
section th { background: #1a5276 !important; color: white !important; padding: 0.35rem 0.7rem !important; text-align: left !important; }
section td { padding: 0.3rem 0.7rem !important; border-bottom: 1px solid #e0e0e0 !important; vertical-align: top; }
section tr:nth-child(even) td { background: #f4f6f8 !important; }
</style>

| CM | Architecture | Événements | Ergonomie |
|---|---|---|---|
| **CM1** | Graphe de scène, conteneurs | 3 styles de handler, pattern Observer | Heuristiques de Nielsen, Gestalt |
| **CM2** | Propriétés, bindings, source unique | Propagation, Filter/Handler, consume() | Affordance (Don Norman, #1 feedback) |
| **CM3** | MVC, FXML déclaratif, composants | onAction déclaratif, initialize() | Cohérence et standards (#4) |
| **CM4** | MVVM, DI, persistance | Commandes ViewModel | Prévention (#5) et récupération (#9) des erreurs |

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.5rem; font-size: 1.5rem; text-align: center;">
Chaque CM construit sur le précédent. Un compteur en CM4 utilise tout : Stage, propriétés, FXML, MVVM, DI, persistance.
</div>

---

## Évolution du même compteur en 4 CM

<style scoped>
section pre { font-size: 0.65rem !important; line-height: 1.3 !important; }
section code { font-size: 1em !important; }
</style>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 0.6rem; margin-top: 0.3rem;">

<div>
<div style="background: #4a90d9; color: white; padding: 0.4rem 0.7rem; border-radius: 6px 6px 0 0; font-weight: bold; font-size: 1rem;">CM1 : tout en Java</div>

```java
Label l = new Label("0");
Button b = new Button("+1");
b.setOnAction(e -> l.setText(
   String.valueOf(
     parseInt(l.getText())+1)));
```

<div style="background: #1a5276; color: white; padding: 0.4rem 0.7rem; border-radius: 6px 6px 0 0; font-weight: bold; font-size: 1rem; margin-top: 0.4rem;">CM2 : avec propriétés</div>

```java
Compteur c = new Compteur();
Label l = new Label();
l.textProperty().bind(
  c.valeurProperty().asString());
Button b = new Button("+1");
b.setOnAction(e -> c.incrementer());
```

</div>

<div>
<div style="background: #27ae60; color: white; padding: 0.4rem 0.7rem; border-radius: 6px 6px 0 0; font-weight: bold; font-size: 1rem;">CM3 : MVC + FXML</div>

```xml
<Label fx:id="l"/>
<Button onAction="#inc"/>
```

```java
class Ctrl {
  Compteur c = new Compteur();
  @FXML Label l;
  @FXML void initialize() {
    l.textProperty().bind(...); }
  @FXML void inc() { c.incrementer(); }
}
```

<div style="background: #8e44ad; color: white; padding: 0.4rem 0.7rem; border-radius: 6px 6px 0 0; font-weight: bold; font-size: 1rem; margin-top: 0.4rem;">CM4 : MVVM + DI + JPA</div>

```java
class Ctrl {
  @Inject CompteurVM vm;
  @FXML Label l;
  @FXML void initialize() {
    l.textProperty().bind(vm.messageProperty());
  }
  @FXML void inc() { vm.incrementer(); }
}
// vm appelle Service qui appelle DAO
// → Compteur sauvegardé en BDD.
```

</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.55rem 1.1rem; border-radius: 8px; margin-top: 0.3rem; font-size: 1.5rem; text-align: center;">
Le code applicatif <b>raccourcit</b>. Le code d'<b>infrastructure</b> grandit, mais devient générique et réutilisable.
</div>

---

## Les 3 piliers consolidés

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.8rem 0;">Au terme du module, les trois piliers sont chacun appuyés sur un corpus solide.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr 1fr; gap: 1.2rem; margin: 3.8rem 0;">

<div style="background: #1a5276; color: white; padding: 1.4rem 1.2rem; border-radius: 12px; text-align: center; box-shadow: 0 4px 10px rgba(0,0,0,0.15);">
<div style="font-size: 2.5rem; margin-bottom: 0.4rem;">🏗️</div>
<div style="font-weight: bold; font-size: 1.4rem; margin-bottom: 0.5rem;">Architecture</div>
<div style="font-size: 1.3rem; line-height: 1.5; opacity: 0.95;">Du monolithique → MVC → MVVM. <strong>DI</strong> pour la composition, <strong>persistance</strong> pour la durabilité.</div>
</div>

<div style="background: #e8a838; color: white; padding: 1.4rem 1.2rem; border-radius: 12px; text-align: center; box-shadow: 0 4px 10px rgba(0,0,0,0.15);">
<div style="font-size: 2.5rem; margin-bottom: 0.4rem;">⚡</div>
<div style="font-weight: bold; font-size: 1.4rem; margin-bottom: 0.5rem;">Événements</div>
<div style="font-size: 1.3rem; line-height: 1.5; opacity: 0.95;">Handler procédural → propagation → bindings réactifs → <strong>commandes</strong> ViewModel.</div>
</div>

<div style="background: #27ae60; color: white; padding: 1.4rem 1.2rem; border-radius: 12px; text-align: center; box-shadow: 0 4px 10px rgba(0,0,0,0.15);">
<div style="font-size: 2.5rem; margin-bottom: 0.4rem;">🧠</div>
<div style="font-weight: bold; font-size: 1.4rem; margin-bottom: 0.5rem;">Ergonomie</div>
<div style="font-size: 1.3rem; line-height: 1.5; opacity: 0.95;">Heuristiques #1, #4, #5, #9 de Nielsen, affordance, design systems, <strong>prévention par design</strong>.</div>
</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.2rem; border-radius: 10px; margin-top: 1rem; font-size: 1.5rem; line-height: 1.55; text-align: center;">
💡 Ce sont les <b>trois axes du métier</b> de développeur d'IHM. Chacun est un domaine entier dans la suite de votre formation.
</div>

---

## Lien avec le TP4 - exercices et concepts

<style scoped>
section table { font-size: 0.9rem !important; width: 100%; border-collapse: collapse; }
section th { background: #1a5276 !important; color: white !important; padding: 0.4rem 0.8rem !important; text-align: left !important; font-size: 0.95rem !important; }
section td { padding: 0.35rem 0.8rem !important; border-bottom: 1px solid #e0e0e0 !important; font-size: 0.9rem !important; }
section tr:nth-child(even) td { background: #f4f6f8 !important; }
section table code { font-size: 0.85rem !important; padding: 1px 4px !important; }
</style>

| Exercice | Classe | Concepts |
|---|---|---|
| 1 | `MessageView` + `MessageViewModel` | Premier MVVM, bindBidirectional sur StringProperty |
| 2 | `Pokemon` + `PokemonViewModel` + `PokemonService` | DI Guice, Service injecté, ListProperty |
| 3 | `MemeGenerator` (capstone) | MVVM complet, plusieurs vues sur un VM, gestion d'images |

---

## Lien avec le TP5 - exercices et concepts

<style scoped>
section table { font-size: 0.9rem !important; width: 100%; border-collapse: collapse; }
section th { background: #1a5276 !important; color: white !important; padding: 0.4rem 0.8rem !important; text-align: left !important; font-size: 0.95rem !important; }
section td { padding: 0.35rem 0.8rem !important; border-bottom: 1px solid #e0e0e0 !important; font-size: 0.9rem !important; }
section tr:nth-child(even) td { background: #f4f6f8 !important; }
section table code { font-size: 0.85rem !important; padding: 1px 4px !important; }
</style>

| Exercice | Concepts |
|---|---|
| 1 | Première connexion JDBC à une BDD SQLite locale |
| 2 | `PreparedStatement`, `ResultSet`, mapping manuel objet ↔ ligne |
| 3 | Pattern DAO : `UtilisateurDao` injecté dans le ViewModel |
| 4 | Transactions : `setAutoCommit(false)`, `commit()`, `rollback()` |
| 5 | Capstone : application MVVM + Guice + JDBC + DataSource pool complète |

---

## Le workflow professionnel acquis

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Au-delà de JavaFX, ce module vous a fait pratiquer un <b>flux de travail</b> standard de l'industrie.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 0.9rem; margin-top: 0.4rem;">

<div style="background: #1a5276; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.35rem; font-weight: bold; margin-bottom: 0.4rem;">🌳 Branches Git</div>
<div style="font-size: 1.15rem; line-height: 1.5;">Une branche par fonctionnalité (<code>git checkout -b exerciceN</code>). Pas de commit direct sur <code>main</code>.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.35rem; font-weight: bold; margin-bottom: 0.4rem;">🔀 Pull Requests</div>
<div style="font-size: 1.15rem; line-height: 1.5;">Chaque feature passe par une PR avec description claire. Discussion, review, validation.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.35rem; font-weight: bold; margin-bottom: 0.4rem;">🤖 Review automatisée</div>
<div style="font-size: 1.15rem; line-height: 1.5;">Copilot suggère, GitHub Actions valide les tests, l'autograding note. Feedback en quelques secondes.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.35rem; font-weight: bold; margin-bottom: 0.4rem;">🧪 TDD baby steps</div>
<div style="font-size: 1.15rem; line-height: 1.5;">Activer un test, le voir échouer, écrire le code, le voir passer. Le rythme du dev pro.</div>
</div>

</div>

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.5rem; font-size: 1.5rem; text-align: center;">
👉 Ce workflow est <b>évalué formellement en R2.03</b> (Qualité de développement), mais vous l'avez déjà internalisé via les TPs.
</div>

---

## Vers la SAÉ chauve-souris

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">Tout ce que vous avez appris s'applique directement à la SAÉ 2.01.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 0.9rem; margin-top: 0.4rem;">

<div style="background: #1a5276; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.35rem; font-weight: bold; margin-bottom: 0.4rem;">📊 Modèle</div>
<div style="font-size: 1.15rem; line-height: 1.5;">Espèce, capteur, observation, identification. Tables persistées en SQLite via JDBC.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.35rem; font-weight: bold; margin-bottom: 0.4rem;">🎯 ViewModels</div>
<div style="font-size: 1.15rem; line-height: 1.5;">Filtres dynamiques, exports CSV, statistiques. Testables sans UI.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.35rem; font-weight: bold; margin-bottom: 0.4rem;">🖼️ Vues FXML</div>
<div style="font-size: 1.15rem; line-height: 1.5;">Tableau d'observations, formulaires, dashboards. SceneBuilder pour le design.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.35rem; font-weight: bold; margin-bottom: 0.4rem;">💉 Module Guice</div>
<div style="font-size: 1.15rem; line-height: 1.5;">Composition root unique, modules de test pour la CI, BDD SQLite jetable (mode :memory: pour les tests).</div>
</div>

</div>

<div style="background: #27ae60; color: white; padding: 0.85rem 1.2rem; border-radius: 10px; margin-top: 0.6rem; font-size: 1.5rem; text-align: center;">
🎯 Vous avez désormais <b>tous les outils</b> pour livrer une application professionnelle.
</div>

---

## Les design patterns rencontrés en 4 CM

<style scoped>
section table { font-size: 0.92rem !important; width: 100%; border-collapse: collapse; }
section th { background: #1a5276 !important; color: white !important; padding: 0.35rem 0.7rem !important; text-align: left !important; }
section td { padding: 0.3rem 0.7rem !important; border-bottom: 1px solid #e0e0e0 !important; }
section tr:nth-child(even) td { background: #f4f6f8 !important; }
</style>

| Pattern | Vu en | Forme JavaFX |
|---|---|---|
| **Observer** | CM1 | `EventHandler`, `addListener()` |
| **Composite** | CM1 | Graphe de scène (Node/Parent récursif) |
| **Property / Observable** | CM2 | `IntegerProperty`, `bind()` |
| **Strategy** | CM2 | `Bindings.when().then().otherwise()` |
| **MVC** | CM3 | `@FXML`, `fx:controller` |
| **Composite View** | CM3 | `fx:include`, `fx:root` |
| **MVVM** | CM4 | ViewModel + propriétés |
| **Dependency Injection** | CM4 | Guice `@Inject`, `Module` |
| **DAO** | CM4 | `UtilisateurDao` injecté |
| **Composition Root** | CM4 | `start()` + `Guice.createInjector(...)` |

<div style="background: #2c3e50; color: white; padding: 0.9rem 1.4rem; border-radius: 12px; margin-top: 0.4rem; font-size: 1.5rem; text-align: center;">
🎓 Vocabulaire transférable à n'importe quel framework UI moderne.
</div>

---

## Et après ce module ?

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.5rem 0;">R2.02 ouvre la voie vers la suite du BUT et au-delà.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 0.9rem; margin-top: 0.4rem;">

<div style="background: #1a5276; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.35rem; font-weight: bold; margin-bottom: 0.4rem;">📅 Semestre 3 - R3.01</div>
<div style="font-size: 1.1rem; line-height: 1.45;"><b>Architecture logicielle</b> : approfondissement DDD, micro-services, événementiel.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.35rem; font-weight: bold; margin-bottom: 0.4rem;">📅 Semestre 3 - R3.02</div>
<div style="font-size: 1.1rem; line-height: 1.45;"><b>Développement web</b> : transposez MVC + MVVM côté HTTP avec Spring/React.</div>
</div>

<div style="background: #1a5276; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.35rem; font-weight: bold; margin-bottom: 0.4rem;">📅 Semestre 4 - SAÉ 4.01</div>
<div style="font-size: 1.1rem; line-height: 1.45;"><b>App professionnelle</b> avec contraintes de qualité industrielles : CI/CD, déploiement, monitoring.</div>
</div>

<div style="background: #27ae60; color: white; padding: 1rem 1.2rem; border-radius: 10px;">
<div style="font-size: 1.35rem; font-weight: bold; margin-bottom: 0.4rem;">🚀 Stages, alternance, métier</div>
<div style="font-size: 1.1rem; line-height: 1.45;">Les patterns appris ici sont la <b>base de toutes les apps modernes</b>. Web, mobile, desktop : même architecture.</div>
</div>

</div>

---

## Pour aller plus loin

<p style="font-size: 1.5rem; margin: -0.5rem 0 0.6rem 0;">Quatre directions pour approfondir au-delà du module.</p>

<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1rem; margin-top: 0.6rem;">

<div style="background: #1a5276; color: white; padding: 1.1rem 1.2rem; border-radius: 12px;">
<div style="font-size: 1.35rem; font-weight: bold; margin-bottom: 0.5rem;">📚 Livres</div>
<div style="font-size: 1rem; line-height: 1.55;">
<b>Patterns of Enterprise Application Architecture</b> - Martin Fowler<br/>
<b>Clean Architecture</b> - Robert C. Martin<br/>
<b>Domain-Driven Design</b> - Eric Evans
</div>
</div>

<div style="background: #8e44ad; color: white; padding: 1.1rem 1.2rem; border-radius: 12px;">
<div style="font-size: 1.35rem; font-weight: bold; margin-bottom: 0.5rem;">🛠️ Frameworks alternatifs</div>
<div style="font-size: 1rem; line-height: 1.55;">
<a href="https://github.com/AdamBien/afterburner.fx" style="color: #f3d5ff;">afterburner.fx</a> - DI minimal pour JavaFX<br/>
<a href="https://www.jfoenix.com/" style="color: #f3d5ff;">JFoenix</a> - composants Material Design<br/>
<a href="https://gluonhq.com/products/javafx/" style="color: #f3d5ff;">Gluon Mobile</a> - JavaFX sur iOS/Android
</div>
</div>

<div style="background: #27ae60; color: white; padding: 1.1rem 1.2rem; border-radius: 12px;">
<div style="font-size: 1.35rem; font-weight: bold; margin-bottom: 0.5rem;">🎬 Vidéos</div>
<div style="font-size: 1rem; line-height: 1.55;">
<a href="https://www.youtube.com/playlist?list=PL4h6ypqTi3RR_bhBk6PtLfD83YkaJXXxw" style="color: #c0e8c0;">JavaFX Software</a> par Almas Baim<br/>
<a href="https://devoxx.com/" style="color: #c0e8c0;">Devoxx France</a> - talks JavaFX et architecture<br/>
<a href="https://www.youtube.com/@CleanCoders" style="color: #c0e8c0;">Clean Coders</a> - Robert Martin
</div>
</div>

<div style="background: #e67e22; color: white; padding: 1.1rem 1.2rem; border-radius: 12px;">
<div style="font-size: 1.35rem; font-weight: bold; margin-bottom: 0.5rem;">🌐 Communautés</div>
<div style="font-size: 1rem; line-height: 1.55;">
<a href="https://foojay.io/" style="color: #ffe0c0;">foojay.io</a> - actu Java<br/>
<a href="https://discord.gg/javafx" style="color: #ffe0c0;">Discord JavaFX</a> - entraide<br/>
<a href="https://stackoverflow.com/questions/tagged/javafx" style="color: #ffe0c0;">StackOverflow</a> - tag JavaFX
</div>
</div>

</div>

---

<!-- _class: lead -->
<!-- _paginate: false -->

<style scoped>
section { text-align: center; }
h2 { text-align: center; }
</style>

# 🎯 À vous de jouer !

<div style="background: linear-gradient(135deg, #1a5276 0%, #8e44ad 100%); color: white; padding: 2.5rem 2rem; border-radius: 16px; margin: 1.5rem auto 0 auto; max-width: 900px; box-shadow: 0 8px 24px rgba(0,0,0,0.2);">

<div style="font-size: 2.2rem; font-weight: bold; margin-bottom: 0.4rem;">TP4 - MVVM &nbsp; + &nbsp; TP5 - Persistance</div>
<div style="font-size: 1.3rem; opacity: 0.9; margin-bottom: 1.8rem;">Synthèse du module : MVVM + Guice + JDBC + SQLite</div>

<div style="display: flex; justify-content: center; align-items: center; gap: 1rem; margin-bottom: 1.8rem;">
<div style="background: rgba(255,255,255,0.18); padding: 0.8rem 1.1rem; border-radius: 10px; text-align: center; font-size: 1rem; min-width: 200px;">
<div style="opacity: 0.8; font-size: 0.9rem;">TP4</div>
<div style="font-weight: bold; font-family: monospace;">MessageView → MemeGenerator</div>
</div>
<div style="font-size: 1.8rem;">→</div>
<div style="background: rgba(255,255,255,0.18); padding: 0.8rem 1.1rem; border-radius: 10px; text-align: center; font-size: 1rem; min-width: 200px;">
<div style="opacity: 0.8; font-size: 0.9rem;">TP5</div>
<div style="font-weight: bold; font-family: monospace;">JDBC → JPA → app complète</div>
</div>
</div>

<code style="background: rgba(0,0,0,0.35); color: #2ecc71; padding: 0.8rem 1.6rem; border-radius: 8px; font-size: 1.3rem; font-weight: bold; font-family: monospace; display: inline-block;">./mvnw javafx:run</code>

<div style="margin-top: 1.8rem; font-size: 1.25rem; line-height: 1.5;">
💡 Activez les tests un par un.<br/>
<strong>Chaque test vert = un assemblage qui marche.</strong>
</div>

</div>

---

<!-- _class: lead -->

# Des questions ?

**Sébastien Nedjar**
IUT d'Aix-Marseille - Département Informatique

<div style="margin-top: 2rem; font-size: 1.1rem;">

🌐 [github.com/IUTInfoAix-R202](https://github.com/IUTInfoAix-R202)

📧 sebastien.nedjar@univ-amu.fr

</div>

<div style="margin-top: 2rem; background: #2c3e50; color: white; padding: 1rem 2rem; border-radius: 12px; font-size: 1.5rem;">
🎓 Fin du module R2.02 : <strong>Bon Qourage pour l'examen final</strong>, et bonne continuation pour la <strong>SAÉ 2.01</strong> !
</div>
