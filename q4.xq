let $p := doc("people.xml")/People/Person[Name/First= "Sam" and Name/Last = "Worthington"]
for $m in doc("movies.xml")/Movies/Movie
where $m/Actors/Actor/@PID = $p/@PID
order by $m/@year descending
return (string($m/Title), string($m/@year))
