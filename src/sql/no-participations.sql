--INSERT INTO "participations"
SELECT
	participant AS "team-key",
	NULL AS "participation-key",
	s."event-id",
	NULL AS "team-id",
	NULL AS "name",
	NULL AS "city",
	NULL AS "organization",
	group_concat(s."category") AS "category"
FROM scores AS s
INNER JOIN competitions AS c
ON 
	s.[event-id] = c.[event-id]
	AND s.activity = c.activity
	AND c."personal-competition" = 0
LEFT JOIN participations AS p
ON p."team-key" = s.participant
WHERE p."team-key" IS NULL
GROUP BY 
	participant,
	s."event-id"