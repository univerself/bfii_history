---
aliases: 
- Клуб молодых учёных «Альянс»
- Альянс
address: 
links: 
tags:
  - community/организация
---
# Клуб молодых учёных «Альянс»

## Главное

(occupation:: [[Просвещение|Просветительская]]) (type::[[общественная организация]]), организатор фестиваля до 2013 года включительно.

## Участие в фестивале

## Персоналии

```dataview 
TABLE WITHOUT ID 
	link(file.link, file.aliases[0]) AS Персона,
	desc AS Описание
FROM "notes/persons" 
WHERE contains(ispartof, this.file.link)
```

## Команды

```dataview 
TABLE WITHOUT ID 
	file.link AS Команда,
	desc AS Описание
FROM "notes/teams" 
WHERE contains(ispartof, this.file.link)
```

## Справка и навигация

Часть света: (continent::)
Страны: (country::)
Регионы и территории: (region::)
Города: (capital::), (city::)
Адрес - (address::)

## Дополнительно