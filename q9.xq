<Stats>
	{for $g in distinct-values(doc("movies.xml")/Movies/Movie/Genre/Category)
	let $c := count(doc("movies.xml")/Movies/Movie[Genre/Category = $g])
	return <Bar category="{$g}" count="{$c}"/>
	}
</Stats>
