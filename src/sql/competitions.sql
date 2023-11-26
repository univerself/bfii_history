SELECT
	e."number-in-series" AS "event-id",
	e."note-key" AS "event-note-key",
	c."activity" AS "activity",
	printf('%s-%02d-%04s', c.activity, c.[event-id], substr(e.startdate, 1, 4)) AS "competition-note-key",
	e."fullname" AS "event-name",
	c."name" AS "competition-name",
	e."startdate" AS "event-startdate",
	e."enddate" AS "event-enddate",
	c."startdate" AS "competition-startdate",
	c."enddate" AS "competition-enddate",
	c."team-competition" AS "team-competition",
	c."personal-competition" AS "personal-competition",
	c."awards" AS "awards",
	c."stages" AS stages,
	c."task-count" AS "task-count",
	c."participants" AS participants,
	c."tournamentid" AS tournamentid
FROM "events" AS e
LEFT JOIN "competitions" AS c
ON c."event-id" = e."number-in-series"