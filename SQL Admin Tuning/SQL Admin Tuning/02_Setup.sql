--Setiup

--weitere Instanz f�r Tuning?
--weil anderee Serversettings <-- > Scoped database seit SQL 2016


--Volumewartungstask. lok Sicherheitsrichtlinie NT
--Ausnullen aus Sicherheitsgr�nden
--Einem guten Admin rel egal...weil der Admin daf�r sorgt, dass die DB sogut wie ie wachsen
--weil sie gro� genug sind  Anfangsgr��en gr��er dimensionieren


--Pfade: 
--Trenne Daten von Logs pyhsikalisch pro DB immer neu �berlegen
--da muss aber nicht immer so sein


--tempdb
--eig HDDs 
--trenne Log von Daten
--soviele Datendateien wie Kerne  max 8 
-- T 1117    T 1118     Traceflag

--1117 gleiches autom Wachstum
--1118 uniform extents, weil der Zugriff auf Seiten  bzw Bl�cke immer single Threaded ist

--Latch


select sum(freight) as Summe into #t from orders

select * from #t




--MAXDOP

--= max Anzahl der Kerne, die f�r eine Abfrage zur Verf�gung gestellt werden
--Regel: MAXOP = Anzahl der kerne aber nicht mehr als 8
--fr�her (2014) : MAXDOP 0  = alle


