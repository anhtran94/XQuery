for $d in doc("movies.xml")/Movies/Movie/Director
for $p in doc("people.xml")/People/Person[not(exists(@pob))]
where $d/@PID = $p/@PID
return (string($d/@PID), $p/Name/Last)
