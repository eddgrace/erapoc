use ntnxsql01
go
select count (*) table001 from table001
go
select count (*) table002 from table002
go
select count (*) table003 from table003
go
select count (*) table004 from table004
go
select count (*) table005 from table005
go

SELECT *
FROM    table001
WHERE   "Current Time" = (SELECT MAX("Current Time")  FROM table001)
go