---
aliases:
  - Тайшет
  - Тайшета
  - Тайшету
  - Тайшетом
  - Тайшете
tags:
  - place/город
---
# Тайшет

## Главное

(type::[[Город]]) в (ispartof::[[Irkutsk region|Иркутской области]]). 

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

Часть света: (continent::[[Asia|Азия]])
Страны: (country::[[Russia|Россия]])
Регионы и территории: (region::[[Irkutsk region|Иркутская область]], [[East Siberia|Восточная]]) (region::[[Siberia|Сибирь]])
