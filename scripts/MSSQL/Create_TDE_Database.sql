-- 在master DB 建立 master key  
USE master;  
GO  
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Nutanix/4u';   --密碼隨便給，不影響本文作業
--查看建立的master key
select * from sys.symmetric_keys
Where name='##MS_DatabaseMasterKey##'


CREATE CERTIFICATE MySQLServerCert   
WITH SUBJECT = '用來展示TDE功能的憑證'  
--查看建立的憑證
Select * from sys.certificates
Where name='MySQLServerCert'

BACKUP CERTIFICATE MySQLServerCert --要備份的憑證
TO FILE = 'MySQLServerCert.cert'   --給一個檔名
WITH PRIVATE KEY   --建立私錀
(  
    FILE = 'MySQLPrivateKeyFile.pk',  --預設備份位置為(C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA)
	--根據SQL Server版本不同存放的憑證&私錀 位置會不一樣 
    ENCRYPTION BY PASSWORD = 'Nutanix/4u'  --這密碼很重要！移機時用得到
);  
GO  

USE TWM;  
GO  

CREATE DATABASE ENCRYPTION KEY  
WITH ALGORITHM = AES_128  --加密演算法
ENCRYPTION BY SERVER CERTIFICATE MySQLServerCert;  --使用哪個憑證 
GO  

ALTER DATABASE TWM  
SET ENCRYPTION ON;  
GO

select name,is_encrypted from sys.databases;
go

=============================  Cloned Server  =========================


select name,is_encrypted from sys.databases;
go


-- 在另一台 SQL Server 建立 master key .   
USE master;  
GO  
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'masterKey2PWD';  --密碼故意跟之前的master key不一樣，沒關係
Go

USE master;  
GO  
-- 以下是重點！
-- 利用之前備份的SQL Server憑證和私錀再次建立SQL Server certificate    

CREATE CERTIFICATE SQLServerCertAnother --這台SQL Server的憑證名字故意取不一樣，沒關係
FROM FILE = 'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\MySQLServerCert.cert'  --剛剛備份的憑證
WITH PRIVATE KEY   
(  
    FILE = 'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\MySQLPrivateKeyFile.pk',  --剛剛備份的私錀
    DECRYPTION BY PASSWORD = 'Nutanix/4u'  --密碼必須和備份時指定的密碼一樣
);  
GO  

select name,is_encrypted from sys.databases;
go

