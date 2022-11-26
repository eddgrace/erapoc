CREATE TABLE table001
(Essential varchar(256), Enterprise varchar(256), "Current Time" varchar(256))
GO

DECLARE @_i INT
DECLARE @_MAX INT
 SET @_i = 0
 SET @_MAX = 5000
 WHILE (@_i<@_MAX)
 BEGIN
    INSERT table001 VALUES('PrismPro','Karbon', SYSDATETIME())
    INSERT table001 VALUES('Flow','Era', SYSDATETIME())
    INSERT table001 VALUES('Calm','Objects', SYSDATETIME())
    INSERT table001 VALUES('Files','Volumes', SYSDATETIME())
    INSERT table001 VALUES('PrismPro','Karbon', SYSDATETIME())
    INSERT table001 VALUES('Flow','Era', SYSDATETIME())
    INSERT table001 VALUES('Calm','Objects', SYSDATETIME())
    INSERT table001 VALUES('Files','Volumes', SYSDATETIME())
    INSERT table001 VALUES('PrismPro','Karbon', SYSDATETIME())
    INSERT table001 VALUES('Flow','Era', SYSDATETIME())
    INSERT table001 VALUES('Calm','Objects', SYSDATETIME())
    INSERT table001 VALUES('Files','Volumes', SYSDATETIME())
    INSERT table001 VALUES('PrismPro','Karbon', SYSDATETIME())
    INSERT table001 VALUES('Flow','Era', SYSDATETIME())
    INSERT table001 VALUES('Calm','Objects', SYSDATETIME())
    INSERT table001 VALUES('Files','Volumes', SYSDATETIME())
    INSERT table001 VALUES('PrismPro','Karbon', SYSDATETIME())
    INSERT table001 VALUES('Flow','Era', SYSDATETIME())
    INSERT table001 VALUES('Calm','Objects', SYSDATETIME())
    INSERT table001 VALUES('Files','Volumes', SYSDATETIME())
WAITFOR DELAY '00:00:01'
Set @_i=@_i+1 END

確認資料筆數
select count (*) from table001

確認最後幾筆資料
SELECT *
FROM    table001
WHERE   "Current Time" = (SELECT MAX("Current Time")  FROM table001)

測完 清除資料
drop table table001

-- wait for 1 second
WAITFOR DELAY '00:00:01'
