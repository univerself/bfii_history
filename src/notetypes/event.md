---
limit: 100
mapWithTag: true
icon: calendar-days
tagNames: 
excludes: 
extends: 
version: 2
---

startdate:: {"type":"Date","options":{"dateFormat":"YYYY-MM-DD","defaultInsertAsLink":"false"}}
enddate:: {"type":"Date","options":{"dateFormat":"YYYY-MM-DD","defaultInsertAsLink":"false"},"command":{"id":"insert__presetField__enddate","icon":"list-plus","label":"Insert enddate field"}}
communication:: {"type":"Multi","options":{"valuesList":{"1":"очное","2":"распределенно-очное","3":"видеоконференция","4":"по телефону","5":"в записи","6":"по переписке"},"sourceType":"ValuesList","valuesListNotePath":"","valuesFromDVQuery":""}}

place:: {"type":"MultiFile","options":{}}
continent:: {"type":"MultiFile","options":{}}
country:: {"type":"MultiFile","options":{}}
region:: {"type":"MultiFile","options":{}}
city:: {"type":"MultiFile","options":{}}
type:: {"type":"MultiFile","options":{}}

number-in-series:: {"type":"Number","options":{}}
ispartof::  {"type":"MultiFile","options":{}}
basedon::  {"type":"MultiFile","options":{}}

activity:: {"type":"MultiFile","options":{}}

organizer:: {"type":"MultiFile","options":{}}
actors::  {"type":"MultiFile","options":{}}

audience:: {"type":"Input","options":{}}
prerequisites::  {"type":"Input","options":{}}
price:: {"type":"Number","options":{}}

links:: {"type":"Input","options":{}}
references::  {"type":"Input","options":{}}
