# Questions possibles

## Architecture macro

- Pourquoi un serveur web ?
  >Un serveur web est en fait un serveur internet ou intranet, c’est-à-dire utilisant les protocoles de transport **TCP/IP** et utilisant le protocole de communication **HTTP**.

  >L’intérêt d’utiliser les protocoles **TCP/IP** est de tirer partie de toute l’infrastructure réseau existante.

  >L’intérêt d’utiliser **HTTP** est de tirer parti de tous les logiciels/bibliothèques existantes, notamment les navigateurs web.

  - Pourquoi dynamique ?
    >Les informations gérées par le S.I. peuvent être **modifiées** par les utilisateurs. En conséquence, il faut que le serveur puisse **générer dynamiquement** (en cours d’utilisation) les informations à envoyer. À contrario, un site web statique ne pourrait que servir des informations figées.

  - Pourquoi implémenté en Java ?
    >Il est possible de gérer les connections de plusieurs utilisateurs en parallèle, tirant ainsi parti des architectures multi-cœurs des ordinateurs **[Concurrence / Parallelisme]**

    >En plus de tirer parti de tous les cœurs d’un ordinateur, chacun de ceux-ci est utilisé efficacement grâce à la performance de la JVM **[Performance]**
    
    >Grâce à la JVM, un serveur programmé en Java peut facilement être déployé sur n’importe quelle architecture disposant d’une JVM. Cela permet notamment d’externaliser l’hébergement du site (cf. cloud, IaaS voire PaaS) **[Portabilité]**

    >Le fait que Java soit un langage compilé à typage statique aide à la réalisation de programmes fiables, même si les erreurs de compilation ne remplacent pas les tests ! **[Fiabilité]**

    >Le fait que les autres qualités aient fait reconnaître l’intérêt d’utiliser Java pour la programmation de serveurs web a provoqué le développement de nombreuses bibliothèques et frameworks qui facilitent la programmation de serveurs. **[Rapidité de développement]**

  - Pourquoi développer une API REST ?

    >Maintenant que le code est côté client avec les applications Frontend, il n'est  plus utile de générer des pages côté serveur. il suffit simplement que notre serveur sache répondre aux requêtes **HTTP** pour créer/lire/modifier/supprimer des données. C'est ce que l'on va implémenter avec une API REST.

  - Pourquoi choisir Spring Boot ?

    >On utilisera Spring boot qui est un framework qui permet de cadrer et simplifier le développement de ce type d'API en Java.

- Pourquoi utiliser Angular ?

  >Aujourd'hui on utilise des frameworks (ou cadriciels pour les académiciens) comme **Angular** pour construire des Single Page Applications. Ces frameworks permettent de faire les mêmes choses qu'avec des librairies comme jQuery et rajoutent un cadre de développement. Cela permet de construire des applications modulaires rapidement et proprement.

  - Quels sont les avantages et inconvénients par rapport à de la génération dynamique de pages côté serveur ?

    >

  Y a-t-il un impact sur la navigation ? Retour à la 'page' précédente possible ?

- Client/serveur
  - Que peut-on faire côté serveur ?

    >

  - Que peut-on faire côté client ?

    >

  - Quels avantages/inconvénients d'implémenter une fonctionnalité côté serveur ou côté client ?
    - Côté Serveur :
      - Avantage :
        >**sécurisation des données**, on ne met à disposition QUE ce que l'on a choisi.

        >**stockage centralisé**, les données sont disponible à un seul endroits ce qui favorisent leur mise à jour.
      - Inconvénient :
        >**Le réseau**, on est tributaire du réseau, plus de réseau plus de données
    - Coté Client :
      - Avantage :
        >**rapidité** : Les données sont présentes en locale, il n'y a pas à attendre la réponse du serveurs
      - Inconvénient :
        >

- Pourquoi et comment utiliser une base de données ?

  >

  - Pourquoi un SGBDR ?

    >L'intérêt principal et la délégation de la gestion des relations au SGBD.

  - PostgreSQL vs H2 ? Quelles différences ?
    >H2 est très facile à implémenter (natif dans Spring boot) et est donc très utile en développement mais la persistance des données n'est pas facile pour de multiples connexions.
    >PostgreSQL sera plus recherché pour une base de produciton avec de multiples connexions

- Comment les données transitent-elles entre un front Angular et une API REST ?

    >

## Echelle projet

### Back

- Gestion des données
  - Quelles sont les entités ?

    >

  - Comment les entités sont-elles reliées à la base ?

    >

  - Quelles sont les relations (cardinalité, directions) entre entités ? Comment les relations sont-elles implémentées en base ?

    >

  - Quelles sont les contraintes d'intégrité ? À quoi servent-elles ?

    >

  - Quels types sont utilisés pour les attributs ? Pourquoi ? (par exemple quel type numérique, à virgule ou non, type primitif ou classe : pourquoi ?)

    >

  - Quels types sont utilisés pour les collections ? Pourquoi ?

    >

  - Créer les tables soi-même vs création par ORM ? Quelle méthode préférer ?

    >

  - Comment injecter des données dans notre base ?

    >

  - Comment gérer les écritures multiples en base pour une seule fonctionnalité ?

    >

  - Quel est le problème posé par des écritures multiples en base pour implémenter une seule fonctionnalité ?

    >

  - Que faut-il faire si cela met en jeu plusieurs repositories ?

    >

- Architecture
  - Pourquoi et comment bien découper son code côté back ?

    >

  - Quels sont les rôles et les dépendances ? (Être capable de faire un schéma explicatif)

    >

  - Comment sont gérées les dépendances entre composants ?

    >

  - Pourquoi utiliser l'injection de dépendance et l'inversion de contrôle ?

    >

- Communication vers le monde extérieur
  
  - Comment renvoyer proprement des erreurs depuis l'API vers le front ?

    >

  - Comment ne pas exposer toutes les données des entités lors d'une réponse de l'API ?

    >

  - Pourquoi choisir de paginer les données ?

    >

- Sécurité
  - Qu'est-ce que l'authentification ? Qu'est-ce qu'une autorisation ?

    >

  - Doit-on authentifier toutes les requêtes API ?

    >

  - Doit-on autoriser les requêtes cross origin sur notre API ? Pourquoi ?

    >

### Front

- Gestion des données
  - Doit-on répliquer le modèle de données back côté front à l'identique ?

    >

  - Peut-on stocker des données dans le navigateur ? Si oui, à quelles conditions ?

    >

- Architecture
  - Comment les composants peuvent-ils communiquer (Input / Output) ?

    >

  - Peut-on imbriquer un composant dans un autre ?

    >

- Navigation
  - Comment gérer la navigation d'une SPA ? Quels mécanismes proposent Angular ?

    >

  - Comment faire transiter des données lors d'un changement de composant ?

    >

- Communication avec les API

  - Comment récupérer des données venant d'une API ?

    >En utilisant les endpoints (URL d'accès à la donnée) définie par cette API

  - Pourquoi doit-on utiliser l'asynchronisme ?

    >Parce que le serveur (Backend) prend du temps pour répondre.

  - Quels avantages/inconvénients d'un appel asynchrone ?

    >Pour ne pas bloquer l'affichage d'une page par exemple, l'asynchronisme libère l'affichage des données déjà présente.

    >Mais n'affichera pas les données non présentes, ce qui peut rendre un peu étrange l'affichage d'une page si le fournisseur de certaines données sont "loin".
