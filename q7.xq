for $t in distinct-values(doc("oscars.xml")/Oscars/Oscar/Type)
(: Build set of oscars with same type and year :)
let $os := doc("oscars.xml")/Oscars/Oscar[Type = $t]
(: Find min issuance year and OIDs with that year :)
let $miny := min($os/@year)
let $oids := $os[@year = $miny]/@OID

for $m in doc("movies.xml")/Movies/Movie
where $m/Oscar/@OID = $oids
return (string($t), $miny, string($m/Title))

