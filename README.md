Techniques avancées en programmation Web 
582-41F-MA 
 
 

TP 3
Création d’un site web à l’aide du cadriciel Vue.JS
 


par:  François Hébert (e2296133) 


---
---

## DOCUMENTATION:

#### Description du projet
Ce projet (créé avec VUE.JS) permet d'expérimenter les capacité de vue.js.
Vous pourrez parcourir une liste de produits(cosommé via un proxy\server lui même alimenté via une base de données mySQL).  Il vous sera possible de visualiser le produit en détail, d'éditer et j'ajouter des produits.

Bon parcours de ce site web...  :)

#### Lignes de commandes:
```
CLIENT:
vue create s4webwvance_tp3_vuejs
npm i bootstrap jquery popper.js @popperjs/core --force
npm install vue-router (si non installé a l'installation)
npm i axios --force
npm run serve

SERVER
npm init -y
npm i express sequelize mysql2 body-parser cors
node server.js
```

---
---



RÉFÉRENCES:

- LIEN VERS LE GITHUB: **[GIT DU PROJET](https://github.com/fhmaisonneuve/s4webavance_tp3_vuejs)**

- LIEN VERS LE PROJET(WEBDEV): Non publié (non requis)

- LIEN VERS LE VIDEO: **[SCREENRECORD](https://github.com/fhmaisonneuve/s4webavance_tp3_vuejs/raw/main/__requis/s4webavance_tp3_vuejs_Pr%C3%A9sentationDuProjet.mp4
)**
 ---  

---


## REQUIS DÉMANDÉS



Vous devez respecter les consignes suivantes
- [x] Le site doit être monopage (SPA) avec la mise à jour du DOM et de la base de données sans exécuter de requête http au navigateur.
- [x] Insérer, mettre à jour, supprimer et lister tous les produits et le produit sélectionné
- [x]  Les informations sur le produit qui doivent être enregistrées sont :
- [x] Le nom, la description, le prix, une photo et la catégorie.
- [x] Une fois enregistré, le produit doit apparaître en bas de page avec 
- [x] un bouton pour le mettre à jour et
- [x]  un bouton pour le supprimer. 
- [x]  Toutes les opérations doivent être exécutées sans recharger la page (Requête HTTP).
- [x] Une page de présentation de l'entreprise. Cette page doit être accessible depuis un menu de navigation et directement depuis le navigateur web avec le nom de la page (route).

Votre projet doit répondre aux critères suivants.
- [x] Créer un projet Vue.js CLI
- [x] Un menu de navigation entre les pages (Accueil / produits)
- [x] Pour la conception (CSS), vous pouvez utiliser le framework bootstrap (vanille, aucun modèle autorisé) ou développer votre propre css.
- [x] Un Server Node.JS
- [x] Une base de données MySQL (nommée : tp_vue)
- [x] Le projet doit être publié sur GitHub.
Déposez votre projet (documentation au format PDF avec lien GitHub et instructions d’installation.) sur Lea - Onmivox.


- [x] La documentation doit comprendre une brève description de votre projet, 
- [x] une page de garde,
- [x] toutes les lignes de commande permettant d'installer les bibliothèques nécessaires, instruction d’installation et d’utilisation du projet et 
- [x] le lien Github.
- [x] Enregistrez une courte vidéo de votre écran (max 3 min) avec le projet en cours
d'exécution sur votre environnement local. Présentez toutes les pages et fonctions au fur et à mesure que le côté serveur change. 

- [x] Envoyez la vidéo avec le projet
L'absence de ces informations dans la documentation sera considérée comme un projet non conclu avec une note finale diminuée de 5 points sur 25
