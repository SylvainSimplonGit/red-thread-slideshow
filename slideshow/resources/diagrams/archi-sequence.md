### Architecture séquentielle

```plantuml
@startuml

'------------------------------------------------
'           Déclaration des objets
'------------------------------------------------
actor User as user

rectangle "Browser" as browser{
  'agent "Browser" as browser
    node "Frontend" as front {
    control "Router" as frt_rtr
    [addAMovie] as frt_cmp_addamaovie
    interface "Movie" as frt_mdl_movie
    frame "movieService" as frt_srv_movie
  }
}

node "Backend" as back {
  interface "Movie" as bck_mdl_movie
  control "ControllerMovie" as bck_ctr_movie
  frame "MovieServiceImpl" as bck_srv_movie
  frame "MovieRepository" as bck_rep_movie
  
}

database "postgreSQL" {
  database "moviestack_db" as db
}


cloud  "API Externes" as api_tmdb {
  interface "The Movie Database" as tmdb
  interface "Open Movie Database" as omdb
}



'------------------------------------------------
'                Interaction
'------------------------------------------------
' <-> double flèche horizontale
' <--> double flèche verticale
'user <-> browser
'browser <-> frt_rtr
user <-> frt_rtr

frt_rtr <-> frt_cmp_addamaovie
frt_cmp_addamaovie <--> frt_mdl_movie
frt_cmp_addamaovie <-> frt_srv_movie
frt_mdl_movie <-> frt_srv_movie

frt_srv_movie <-> bck_ctr_movie

bck_mdl_movie <-> bck_rep_movie
bck_mdl_movie <--> bck_srv_movie
bck_ctr_movie <-> bck_srv_movie
bck_rep_movie <--> bck_srv_movie

bck_rep_movie <-> db

bck_srv_movie <--> tmdb
bck_srv_movie <--> omdb

@enduml
```

Note:
Nous allons voir la séquence logicielle d'ajout d'un film

Le User charge la page d'ajout de film, ce qui va permettre d'afficher le composant `addAMovie` via le routeur.

Le User clique sur le bouton **ajouter un film** de la page d'ajout de film. Ce qui active **dans** le composant `addAMovie`, l'instanciation d'un nouvel object `Movie`.

Ce nouveau `Movie` va être utilisé par le service `movieService` qui va faire une requête au backend via l'API pour l'ajouter à la base de données.

Cette requête passe par le controleur `ControllerMovie` pour être "traduite". Ce controleur va parser l'URL pour en reconnaitre un chemin.
Si ce chemin est valide, le controleur exécutera le service associé à cette requête.

Le service `MovieServiceImpl` va récupérer les informations sur des API externes puis, via le Repository `MovieRepository`, enregistrer, dans notre cas, l'objet `Movie` dans la base de données postgreSQL
(O)
