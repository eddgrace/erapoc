DECLARE @counter INT = 1

-- Loop to create a table in each database
WHILE @counter <= 100
BEGIN
    DECLARE @dbName NVARCHAR(100)
    SET @dbName = 'TEST' + CAST(@counter AS NVARCHAR(10))

    -- Connect to the database
    USE master;
    EXEC('USE [' + @dbName + ']')

    -- Create Table
    DECLARE @tableName NVARCHAR(100)
    SET @tableName = 'MyTable'

    DECLARE @createTableSql NVARCHAR(MAX)
    SET @createTableSql = 
        'CREATE TABLE [' + @dbName + '].dbo.[' + @tableName + ']' +
        ' (ID INT IDENTITY(1,1) PRIMARY KEY, Data VARCHAR(100), DateColumn DATETIME)'

    EXEC(@createTableSql)

    SET @counter = @counter + 1
END

-- Loop to insert a record into each table every one second
WHILE 1 = 1
BEGIN
    DECLARE @counterInsert INT = 1

    WHILE @counterInsert <= 100
    BEGIN
        DECLARE @dbNameInsert NVARCHAR(100)
        SET @dbNameInsert = 'TEST' + CAST(@counterInsert AS NVARCHAR(10))

        DECLARE @tableNameInsert NVARCHAR(100)
        SET @tableNameInsert = 'MyTable'

        DECLARE @insertDataSql NVARCHAR(MAX)
        SET @insertDataSql = 
            'USE [' + @dbNameInsert + ']' +
            '; INSERT INTO [' + @dbNameInsert + '].dbo.[' + @tableNameInsert + ']' +
            ' (Data, DateColumn) VALUES (''Data for ' + @tableNameInsert + ''', GETDATE())'

        EXEC(@insertDataSql)

        SET @counterInsert = @counterInsert + 1
    END
END
