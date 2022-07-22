/*

GR IX = Tabelle sortiert
1 mal pro Tabelle
gut bei Bereichsabfragen   > < aber auch bei eindeutigen Ergebnissen
Tipp: leg zuerst den CL IX auf die Spalte fest, die häufig nach Bereichen abgefragt wird
---dann PK 

PK muss kein CL IX sein!!  er muss eindeutig sein

N GR IX = zusätzliche mit meist nicht allen Spalten der Tabellen
ca 1000 pro Tabelle
wenn rel wenige DS rauskommt--- LOOKUP!!!!


*/

eindeutigen IX  !
abdeckender IX  !! --IX Seek ohne Lookup
IX mit eingeschl Spalten
gefilterten IX
part IX
ind Sicht
realen hypoth IX
zusammengesetzter IX   !!

Columnstore IX


Admin muss repr Workload optimieren
--Tool für Aufzeichnung: Profiler, QueryStore


*/
--CL IX auf orderdate
--Plan: Table Scan
set statistics io, time on
select id from ku where id = 10

--NIX_ID -- SCAN und SEEK
select id from ku where id = 10  --3 Seiten

select id , freight from ku where id = 10  --4 Seiten mit Lookup

select id , freight from ku where id <13980 --b ca 1390 TAble Scan... ca 1,x % der Daten

select id , freight from ku where id <900000




