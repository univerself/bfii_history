---
aliases:
- Азия
- Азии
- Азию
- Азией
tags:
  - place/часть-света
---
# Азия

## Персоналии

```dataview 
TABLE desc, birthdate, birthplace, deathdate
FROM "notes/persons" 
WHERE contains(cities.region, this.file.link)
```

## Команды

```dataview 
TABLE desc, birthdate, birthplace, deathdate
FROM "notes/teams" 
WHERE contains(cities.region, this.file.link)
```

## Справка и навигация

- [[Siberia|Сибирь]]
	- [[East Siberia|Восточная Сибирь]]
		- [[Irkutsk region|Иркутская область]]
			- [[Irkutsk|Иркутск]]