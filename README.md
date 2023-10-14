Techniques avancées en programmation Web 
582-41F-MA 
 
 

TP 3
Création d’un site web à l’aide du cadriciel Vue.JS
 


par:  François Hébert (e2296133) 


---
---

## DOCUMENTATION:

#### Description du projet


#### Lignes de commandes:
```
CLIENT:
vue create s4webwvance_tp3_vuejs
npm i bootstrap jquery popper.js @popperjs/core --force
npm install vue-router (si non installé a l'installation)
npm run serve

SERVER
npm init -y
npm i express sequelize mysql2 body-parser cors
node server.js
```

---
---



RÉFÉRENCES:

- LIEN VERS LE GITHUB: **[GIT DU PROJET](https://github.com/fhmaisonneuve/s4WebAvance_TP2_ReactCli)**

- LIEN VERS LE PROJET(WEBDEV): **[https://e2296133.webdev.cmaisonneuve.qc.ca/webavancetp2/](https://e2296133.webdev.cmaisonneuve.qc.ca/webavancetp2/)** 

- LIEN VERS LE VIDEO: **[SCREENRECORD](https://github.com/fhmaisonneuve/s4WebAvance_TP2_ReactCli/raw/master/__requis/s4webavance_presentation.mp4)**
 ---  

---


## REQUIS DÉMANDÉS



Vous devez respecter les consignes suivantes
- [ ] Le site doit être monopage (SPA) avec la mise à jour du DOM et de la base de données sans exécuter de requête http au navigateur.
- [ ] Insérer, mettre à jour, supprimer et lister tous les produits et le produit
sélectionné
- [ ]  Les informations sur le produit qui doivent être enregistrées sont :
- [ ] Le nom, la description, le prix, une photo et la catégorie.
- [ ] Une fois enregistré, le produit doit apparaître en bas de page avec un
bouton pour le mettre à jour et un bouton pour le supprimer. Toutes les
opérations doivent être exécutées sans recharger la page (Requête
HTTP).
- [ ] Une page de présentation de l'entreprise. Cette page doit être accessible
depuis un menu de navigation et directement depuis le navigateur web avec le nom de la page (route).

Votre projet doit répondre aux critères suivants.
- [ ] Créer un projet Vue.js CLI
- [ ] Un menu de navigation entre les pages (Accueil / produits)
- [ ] Pour la conception (CSS), vous pouvez utiliser le framework bootstrap
(vanille, aucun modèle autorisé) ou développer votre propre css.
- [ ] Un Server Node.JS
- [ ] Une base de données MySQL (nommée : tp_vue)
- [ ] Le projet doit être publié sur GitHub.
Déposez votre projet (documentation au format PDF avec lien GitHub et
instructions d’installation.) sur Lea - Onmivox.


- [ ] La documentation doit comprendre une brève description de votre projet, 
- [ ] une page de garde,
- [ ] toutes les lignes de commande permettant d'installer les bibliothèques nécessaires, instruction d’installation et d’utilisation du projet et 
- [ ] lelien Github.
- [ ] Enregistrez une courte vidéo de votre écran (max 3 min) avec le projet en cours
d'exécution sur votre environnement local. Présentez toutes les pages et fonctions au fur et à mesure que le côté serveur change. 

- [ ] Envoyez la vidéo avec le projet
L'absence de ces informations dans la documentation sera considérée comme un
projet non conclu avec une note finale diminuée de 5 points sur 25



