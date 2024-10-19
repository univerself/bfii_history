---
<%*
const fname = tp.file.title;
const names = fname.split(" "); 
const firstname = await tp.system.prompt("Имя", names[0]);
const middlename = await tp.system.prompt("Отчество");
const lastname = await tp.system.prompt("Фамилия", names[1]);
%>
firstname: <% firstname %>
middlename: <% middlename %>
lastname: <% lastname %>
aliases:
- <% firstname %>а <% lastname %>
- <% firstname %>у <% lastname %>
- <% firstname %>а <% lastname %>
- <% firstname %>ом <% lastname %>
- <% firstname %>е <% lastname %>
- <% firstname %> <% middlename %> <% lastname %>
- <% lastname %> <% firstname %> <% middlename %>
- <% lastname %>, <% firstname %> <% middlename %>
- <% firstname[0] %>.<% middlename[0] %>. <% lastname %>
- <% lastname %> <% firstname[0] %>.<% middlename[0] %>.
- <% lastname[0] %>. <% firstname %> <% middlename%>
- <% firstname[0] %>. <% lastname %>
- <% lastname %> <% firstname[0] %>.
- <% lastname %>
links:
tag:
- person 
---
# <% firstname %> <% middlename %> <% lastname %>

(occupation:: ) в составе (ispartof:: )

```{.include shift-heading-level-by=1}
notes/events/_/teams/_/<% fname %>--.md
```

## Биография

Родился (birthdate:: ) в (birthplace:: ).

### Образование

(education::)

## Справка и навигация

Часть света: (continent::)
Страны: (country::)
Регионы и территории: (region::)
Города: (capital::), (city::)
Адрес - (address::)

### Связанные персоналии

## Дополнительно