use ntnxsql03

CREATE TABLE table001
(Essential varchar(256), Enterprise varchar(256), "Current Time" varchar(256))
GO

CREATE TABLE table002
(Essential varchar(256), Enterprise varchar(256), "Current Time" varchar(256))
GO

CREATE TABLE table003
(Essential varchar(256), Enterprise varchar(256), "Current Time" varchar(256))
GO

CREATE TABLE table004
(Essential varchar(256), Enterprise varchar(256), "Current Time" varchar(256))
GO

CREATE TABLE table005
(Essential varchar(256), Enterprise varchar(256), "Current Time" varchar(256))
GO


 WHILE (1=1)
 BEGIN
    INSERT table001 VALUES('PrismPro','Karbon', SYSDATETIME())
    INSERT table001 VALUES('Flow','Era', SYSDATETIME())
    INSERT table001 VALUES('Calm','Objects', SYSDATETIME())
    INSERT table001 VALUES('Files','Volumes', SYSDATETIME())
    INSERT table002 VALUES('PrismPro','Karbon', SYSDATETIME())
    INSERT table002 VALUES('Flow','Era', SYSDATETIME())
    INSERT table002 VALUES('Calm','Objects', SYSDATETIME())
    INSERT table002 VALUES('Files','Volumes', SYSDATETIME())
    INSERT table003 VALUES('PrismPro','Karbon', SYSDATETIME())
    INSERT table003 VALUES('Flow','Era', SYSDATETIME())
    INSERT table003 VALUES('Calm','Objects', SYSDATETIME())
    INSERT table003 VALUES('Files','Volumes', SYSDATETIME())
    INSERT table004 VALUES('PrismPro','Karbon', SYSDATETIME())
    INSERT table004 VALUES('Flow','Era', SYSDATETIME())
    INSERT table004 VALUES('Calm','Objects', SYSDATETIME())
    INSERT table004 VALUES('Files','Volumes', SYSDATETIME())
    INSERT table005 VALUES('PrismPro','Karbon', SYSDATETIME())
    INSERT table005 VALUES('Flow','Era', SYSDATETIME())
    INSERT table005 VALUES('Calm','Objects', SYSDATETIME())
    INSERT table005 VALUES('Files','Volumes', SYSDATETIME())
END
