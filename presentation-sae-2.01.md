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
