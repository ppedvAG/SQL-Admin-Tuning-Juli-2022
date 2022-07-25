--Wait_Stats


--Abfrage--> Queue---> Worker

--> Ressourcen--->|-------------------|--------| RUNNING
--                                                                          100ms
--                                                                   10ms
--100-10 = 90ms Wartezeit auf Ressource

--sind kummulierend.. daher was bedeutet 342323ms

--Laufzeit des SQL Servers: alle wait_Stats addieren
--Anteil  der Ressource an der gesm Laufzeit


select * from sys.dm_os_wait_stats