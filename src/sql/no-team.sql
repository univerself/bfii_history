INSERT INTO "teams"
SELECT
	participant AS "note-key",
	group_concat(p.name, "/") AS name,
	group_concat(p.city) AS name,
	group_concat(p.organization) AS organization,
	NULL AS establisheddate
FROM scores AS s
INNER JOIN competitions AS c
ON 
	s.[event-id] = c.[event-id]
	AND s.activity = c.activity
	AND c."personal-competition" = 0
LEFT JOIN teams AS t
ON t."note-key" = s.participant
LEFT JOIN participations AS p
ON p."team-key" = s.participant
WHERE t."note-key" IS NULL
GROUP BY 
	participant