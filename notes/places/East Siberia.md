---
aliases: 
- Восточная Сибирь
- Восточной Сибири
- Восточной Сибирью
tags:
  - place/регион/исторический
---
# Восточная Сибирь

## Главное

Восточная (type::[[Регион|часть]]) (ispartof::[[Siberia|Сибири]])

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

Часть света: (continent::[[Asia|Азия]])
Страны: (country::[[Russia|Россия]])

- [[Irkutsk region|Иркутская область]]
		- [[Irkutsk|Иркутск]]