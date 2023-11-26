SELECT 
       s.category AS Зачёт,
--       iif(c_parent2.id IS NULL, c."number-in-series", c_parent1."number-in-series") AS "№ этапа",
       iif(c_parent2.id IS NULL, c.name, c_parent1.name) AS Конкурс,
--       "" AS Группа,
--       iif(c_parent2.id IS NULL, NULL, c."number-in-series") AS Бой,
       printf('%s-%02d-%s', t.slug, c.[event-id], substr(e.startdate, 1, 4)) AS Участник,
--       (s.place_from + s.place_to) / 2 AS Место,
       p."team-toursite-id" AS IDteam,
       p.name AS Название,
       p.city AS Город,
       p.organization AS Организация,
       points AS Очки
FROM scores AS s
INNER JOIN competitions AS c
ON 
    c.id = s."competition-id"
    AND c."event-id" = 1
    AND c.activity = "multigames"
    AND NOT c.ispartof IS NULL
LEFT JOIN participations AS p
ON p.id = s."team-participant-id"
LEFT JOIN teams AS t
ON p."team-id" = t.id
INNER JOIN competitions AS c_parent1
ON c.ispartof = c_parent1.id
LEFT JOIN competitions AS c_parent2
ON c_parent1.ispartof = c_parent2.id
LEFT JOIN events AS e
ON e.[number-in-series] = c.[event-id]
ORDER BY
    p.name,
    iif(c_parent2.id IS NULL, c."number-in-series", c_parent1."number-in-series") * 1000 + c."number-in-series"