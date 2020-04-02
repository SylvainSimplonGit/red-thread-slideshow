# Déroulement de la présentation des Test

## A faire une fois avant

  1. Désactiver l’accélération matérielle : chrome://settings/system
  1. Agrandir la taille du cursor :
  1. Dans OBS, redimensionner la sortie (taille de la source)

## A faire à chaque enregistrement

  1. Relancer l'API via IntelliJ pour remettre à zéro les données de la base
  2. Vider la case de gauche de l'onglet "JSON Diff"
  3. Aller dans l'onglet Swagger
  4. recharger la page par un CTRL + F5 : [http://localhost:8080/swagger-ui.html#/](http://localhost:8080/swagger-ui.html#/)
  5. Démarrer l'enregistrement

### Montrer le Swagger

  1. Cliquez sur `movie-controller`
  2. Ouvrir `GET : /api/movies/{movieId}/tmdb    getMovieFromTmdbByImdbId`
  3. Cliquer sur `Try it out`
  
### Test KO

  1. Renseigner ce qui suit dans le champ MovieId : `&&--#*:`
     - Montrer le retour "The resource you requested could not be found."
  1. Renseigner ce qui suit dans le champ MovieId : `0123456`
     - Montrer le retour "The resource you requested could not be found."
  1. Renseigner ce qui suit dans le champ MovieId : `tt00000`
     - Montrer le retour "The resource you requested could not be found."

## Montrer comment le fichier OK a été construit

  1. Dans un nouvel onglet, cliquez sur le lien : [JSON du Film](https://api.themoviedb.org/3/movie/tt0109440?api_key=09f9524466812ccf78760c6ef7807fd5&language=fr-FR)
      - Montrer les données
  2. Dans un nouvel onglet, cliquez sur le lien : [JSON des acteurs et Réalisateur](https://api.themoviedb.org/3/movie/tt0109440/credits?api_key=09f9524466812ccf78760c6ef7807fd5)
      - Montrer les données Acteurs
      - Montrer la donnée Réalisateur (CTRL + F) et renseigner "Director"
  3. Dans un nouvel onglet, cliquez sur le lien : [JSON des Posters](https://api.themoviedb.org/3/movie/tt0109440/images?api_key=09f9524466812ccf78760c6ef7807fd5)
      - Montrer la donnée Posters (CTRL + F) et renseigner "0.666"
  4. Dans un nouvel onglet, cliquez sur le lien : [JSON des Votes](http://www.omdbapi.com/?i=tt0109440&apikey=3c7d9cd)
      - Montrer les données "imdbVotes" et "imdbRating"
  5. Montrer le résultat dans l'onglet "JSON Diff", case de droite

### Test OK

  1. Aller dans l'[onglet Swagger](http://localhost:8080/swagger-ui.html#/movie-controler/getMovieFromTmdbByImdbIdUsingGET)
  2. Copier le code : tt0109440
  3. Coller dans le champ "movieId"
  4. Cliquer sur "Execute"
  5. Copier le retour du Swagger
  6. Aller dans l'onglet JSON Diff
  7. Coller dans la case de GAUCHE
  8. Cliquer sur COMPARE
  9. Surligner "The two files were semantically identical."

  10. Cliquer sur "Perform a new diff"

  11. Retourner dans l'onglet Swagger

  12. Copier le code : 15097
  13. Cliquer sur "Execute"
  14. Copier le retour du Swagger
  15. Aller dans l'onglet JSON Diff
  16. Coller dans la case de GAUCHE
  17. Cliquer sur COMPARE
  18. Surligner "The two files were semantically identical."
