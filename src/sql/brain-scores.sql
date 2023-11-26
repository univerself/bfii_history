SELECT
    printf('[[%s-%02d-%s|%s]]', t.slug, c.[event-id],  substr(e.startdate, 1, 4), IIF(
        s.place_from = s.place_to, 
        s.place_from, 
        printf('%s-%s', s.place_from, s.place_to)
    )) AS Место,
    IIF(p."team-toursite-id" IS NULL, '', printf('[%d](https://rating.chgk.info/teams/%d)', p."team-toursite-id", p."team-toursite-id")) AS ID,
    printf('[[%s|%s]]', t.slug,p.name) AS Команда,
    p.city AS Город,
    p.organization AS Организация,
    GROUP_CONCAT(IIF(
        r.id IS NULL, NULL,
        printf('<li>[[%s|%s %s]]', persons.slug, r.firstname, r.lastname))
    ) AS Состав,
    MAX(IIF(c.ispartof IS NULL, s.points, NULL)) AS Побед
FROM scores AS s
LEFT JOIN participations AS p
ON p.id = s."team-participant-id"
INNER JOIN competitions AS c
ON 
    c.id = s."competition-id"
    AND c.id = 2
LEFT JOIN teams AS t
ON p."team-id" = t.id
LEFT JOIN rosters AS r
ON 
    r."team-id" = p.id
    AND c.ispartof IS NULL
LEFT JOIN persons
ON persons.id = r."person-id"
LEFT JOIN events AS e
ON e.[number-in-series] = c.[event-id]
WHERE s."player-id" IS NULL
GROUP BY
    p.id
ORDER BY 
    s.place_from