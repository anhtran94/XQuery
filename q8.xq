(:Find PIDs of all actors and all directors that participated in some movie and take intersection:)
let $a := doc("movies.xml")/Movies/Movie/Actors/Actor/@PID
let $d := doc("movies.xml")/Movies/Movie/Director/@PID
for $p in doc("people.xml")/People/Person[@PID = $d]
where $p/@PID = $a
return (string($p/@PID), string($p/Name/Last))

