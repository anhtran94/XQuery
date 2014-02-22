for $m in doc("movies.xml")/Movies/Movie
return ( string($m/@MID), count(distinct-values($m/Actors/Actor)) )
