for $m in doc("movies.xml")/Movies/Movie[exists(Oscar)]
for $o in doc("oscars.xml")/Oscars/Oscar
where $m/Oscar/@OID = $o/@OID 
return (string($m/Title), string($o/Type))
