### Modèle Conceptuel de Données

```plantuml
@startuml

'------------------------------------------------
'           Déclaration des objets
'------------------------------------------------
class Movie {
  -String idImdb <&key>
  -String title
  -String posterUrl
  -String director
  -String released
  -Integer runtime
  -String plot
  -Float imdbRating
  -Integer imdbVotes
  -List<Actor> actors <&link-intact>
  -List<Genre> genres <&link-intact>
  -List<MovieBuff> movieBuffs <&link-intact>
  -List<Opinion> opinions <&link-intact>
}

class Actor {
  -Long idActor <&key>
  -String name
  -List<Movie> movies <&link-intact>
}

class Genre {
  -Long idGenre <&key>
  -String name
  -List<Movie> movies <&link-intact>
}

class MovieBuff {
  -Long idMovieBuff <&key>
  -String firstName
  -String lastName
  -List<Movie> moviesSeen <&link-intact>
  -List<Opinion> opinions <&link-intact>
}

class Opinion {
  -Long idOpinion <&key>
  -Movie movie <&link-intact>
  -MovieBuff movieBuff <&link-intact>
  -Float rating
  -String comment
}

'------------------------------------------------
'                Interaction
'------------------------------------------------
' - horizontale
' -- verticale
Actor     "0..n"  --  "1..n"    Movie       : < has
Genre     "0..n"  -   "1..n"    Movie       : < has
' Movie "1" -- "n" Genre : has >

Movie     "1"     -   "0..n"    Opinion     : < is on
' MovieBuff "1" -- "n" Movie : seen >
Movie     "0..n"  -   "0..n"    MovieBuff   : < seen
' MovieBuff "1" -- "n" Opinion : < has
Opinion   "0..n"  -   "1"       MovieBuff   : is written by >

@enduml
```

Note:
Voici le modèle conceptuel de données.

On peut voir que chaque object à une interaction avec un ou plusieurs autres. 

Par exemple :

- un Film peut avoir 1 à plusieurs Genre mais un Genre ne peut pas "exister" sans Film.
- *idem pour les Acteurs.*
- Une Opinion est sur 1 Film et est écrite par 1 Cinéphile
- Un Film peut avoir aucune à plusieurs Opinion
- *idem pour les Cinéphiles*

Des clés primaires ont été choisies afin de ne pas avoir de doublons dans nos tables. (O)
