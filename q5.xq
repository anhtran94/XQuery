let $p := doc("people.xml")/People/Person[Name/First= "James" and Name/Last = "Cameron"]
for $m in doc("movies.xml")/Movies/Movie[@year >= 2001]
where $m/Director/@PID = $p/@PID 
return $m
