SELECT 
    printf('bfii-%02d-%04s', r.[event-id], substr(e.startdate, 1, 4) ) AS Турнир,
    printf('%s-%02d-%s', t.slug, r.[event-id], substr(e.startdate, 1, 4) ) AS Участник,
    printf('%s-%02d-%s', persons.slug, r.[event-id], substr(e.startdate, 1, 4) ) AS Игрок,
    p."team-toursite-id" AS [Team ID],
    p.name AS Название,
    p.city AS Город,
    p.organization AS Организация,
    r.type AS Флаг,
    r."player-tournsite-id" AS IDplayer,
    r.lastname AS Фамилия,
    r.firstname AS Имя,
    r.middlename AS Отчество
FROM rosters AS r
LEFT JOIN
participations AS p ON p.id = r.[team-id]
LEFT JOIN
events AS e ON e.[number-in-series] = r.[event-id]
LEFT JOIN persons
ON persons.id = r."person-id"
LEFT JOIN teams AS t
ON p."team-id" = t.id
WHERE NOT r.[event-id] IS NULL;
