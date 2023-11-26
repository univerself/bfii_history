SELECT 
    printf('%s-%02d-%04s', c.activity, c.[event-id], substr(e.startdate, 1, 4)) AS Турнир,
    c.name AS Дисциплина,
    printf('%s-%02d-%s', 
        IIF(r."person-key" IS NULL, t.slug, persons.slug),
        c.[event-id], 
        substr(e.startdate, 1, 4)
    ) AS Участник,
    s.category AS Зачёт,
    (s.place_from + s.place_to) / 2 AS Место,
    IIF(r."person-key" IS NULL, p."team-toursite-id", r."player-tournsite-id") AS IDteam,
    IIF(r."person-key" IS NULL, p.name, printf('%s %s', r.firstname, r.lastname)) AS Название,
    IFNULL(r.city, p.city) AS Город,
    IIF(
        r."team-id" IS NULL,
        p.organization,
        printf('%s (%s%s)', p.name, p.city, IFNULL(', '||p.organization, ''))
    ) AS Организация,
    points AS Очки
FROM scores AS s
INNER JOIN competitions AS c
ON 
    c.id = s."competition-id"
    AND c."event-id" = 1
    AND c.ispartof IS NULL
LEFT JOIN participations AS p
ON p.id = s."team-participant-id"
LEFT JOIN rosters AS r
ON r.id = s."player-id"
LEFT JOIN persons
ON persons.id = r."person-id"
LEFT JOIN teams AS t
ON p."team-id" = t.id
LEFT JOIN events AS e
ON e.[number-in-series] = c.[event-id]
ORDER BY 
	s.[participation-key],
	c.[event-id],
	c.activity,
	s.place_from