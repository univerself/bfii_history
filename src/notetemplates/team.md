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
links:
tags: 
  - community/команда
---
# <% name %> (<% city %>)

(type::[[teams|Команда]]) клуба (ispartof:: ) (city::[[<% city %>]]).

## Состав

## Участие в фестивалях

```{.include shift-heading-level-by=1}
notes/events/_/teams/<% fname %>/<% fname %>--.md
```

## Общая справка

Основана (establisheddate:: ) в (establishedplace:: ) (closeddate:: ), (closedplace:: )

(links::[Страница на турнирном сайте](https://rating.chgk.info/teams/<% teamid %>))

