---
aliases:
- Россия
- России
- Россию
- Россией
- Российская федерация
- Российской федерации
- Российскую федерацию
- Российской федерацией
- РФ
tags:
  - place/страна
---
# Россия

## Персоналии

```dataview 
TABLE desc, birthdate, birthplace, deathdate
FROM "notes/persons" 
WHERE contains(cities.country, this.file.link)
```

## Команды

```dataview 
TABLE desc, birthdate, birthplace, deathdate
FROM "notes/teams" 
WHERE contains(cities.country, this.file.link)
```

## Справка и навигация

- [[Siberia|Сибирь]]
	- [[East Siberia|Восточная Сибирь]]
		- [[Irkutsk region|Иркутская область]]
			- [[Irkutsk|Иркутск]]
