<ActressInfo>
{let $maxc := max(for $a in doc("people.xml")/People/Person[@gender = "female"]
return count(for $m in doc("movies.xml")/Movies/Movie where $m/Actors/Actor/@PID = $a/@PID return $m))

for $actress in doc("people.xml")/People/Person[@gender = "female"]
let $c := count(for $m in doc("movies.xml")/Movies/Movie where $m/Actors/Actor/@PID = $actress/@PID return $m)
return if ($c >= $maxc) then (<Actress firstname="{$actress/Name/First/text()}" lastname="{$actress/Name/Last/text()}" count="{$c}"/>) else()
}
</ActressInfo>
