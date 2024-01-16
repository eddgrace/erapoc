DECLARE @counter INT = 1

-- Drop tables in each database
WHILE @counter <= 100
BEGIN
    DECLARE @dbName NVARCHAR(100)
    SET @dbName = 'TEST' + CAST(@counter AS NVARCHAR(10))

    -- Connect to the database
    USE master;
    EXEC('USE [' + @dbName + ']')

    -- Drop Table
    DECLARE @tableName NVARCHAR(100)
    SET @tableName = 'MyTable'

    DECLARE @dropTableSql NVARCHAR(MAX)
    SET @dropTableSql = 
        'IF OBJECT_ID(''[' + @dbName + '].dbo.[' + @tableName + ']'', ''U'') IS NOT NULL ' +
        '   DROP TABLE [' + @dbName + '].dbo.[' + @tableName + ']'

    EXEC(@dropTableSql)

    SET @counter = @counter + 1
END