---
aliases: 
links: 
tags:
  - place
---
# 

## Главное

(type::), расположенный в (ispartof::). Место проведения (event::).

## Персоналии

```dataview 
TABLE desc, birthdate, birthplace, deathdate
FROM "notes/persons" 
WHERE contains(cities, this.file.link)
```

## Команды

```dataview 
TABLE desc, birthdate, birthplace, deathdate
FROM "notes/teams" 
WHERE contains(cities, this.file.link)
```

## Справка и навигация

Часть света: (continent::)
Страны: (country::)
Регионы и территории: (region::)
Города: (capital::), (city::)
Адрес - (address::)
