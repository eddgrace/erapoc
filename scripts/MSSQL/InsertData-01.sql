DECLARE @_i INT
DECLARE @_MAX INT
 SET @_i = 0
 SET @_MAX = 999999999
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
Set @_i=@_i+1 END