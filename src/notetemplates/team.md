---
<%*
const fname = tp.file.title;
const name = await tp.system.prompt("Название", fname);
const city = await tp.system.prompt("Город");
const teamid = await tp.system.prompt("ID на турнирном сайте");
%>
aliases:
- "<% teamid %> <% name %> (<% city %>)"
- "<% name %> (<% city %>)"
- "<% name %>"
teamid: <% teamid %>
tags: 
  - community/команда
---
# <% name %> (<% city %>)

## Главное

(type::[[teams|Команда]]) клуба (ispartof:: ) (city::[[<% city %>]]).

## Состав

## Результаты

### Награды

## История

Основана (establisheddate:: ) в (establishedplace:: ) (closeddate:: ), (closedplace:: )

### Заметки

## Справка и навигация

(links::[Страница на турнирном сайте](https://rating.chgk.info/teams/<% teamid %>))

### География

Часть света: (continent::)
Страны: (country::)
Регионы и территории: (region::)

## Дополнительно