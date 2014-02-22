let $no := count(doc("people.xml")/People/Person/Oscar/@OID)
let $np := count(distinct-values(doc("people.xml")/People/Person/@PID))
return $no div $np

