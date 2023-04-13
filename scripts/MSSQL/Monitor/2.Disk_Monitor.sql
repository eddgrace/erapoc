SELECT DISTINCT
    DB_NAME(ius.database_id) AS Database_Name
    ,df.name AS Logical_File_Name
    ,df.physical_name AS Physical_File_Name
    ,ius.io_stall_read_ms
    ,ius.num_of_reads
    ,ius.io_stall_write_ms
    ,ius.num_of_writes
    ,(CAST(ius.io_stall_read_ms/(1.0 + ius.num_of_reads) AS NUMERIC(10, 1))) AS Avg_Read_Stall_MS
    ,(CAST(ius.io_stall_write_ms/(1.0 + ius.num_of_writes) AS NUMERIC(10, 1))) AS Avg_Write_Stall_MS
    ,(CAST((ius.io_stall_read_ms + ius.io_stall_write_ms)/(1.0 + ius.num_of_reads + ius.num_of_writes) AS NUMERIC(10, 1))) AS Avg_IO_Stall_MS
    ,df.type_desc AS File_Type
FROM sys.dm_io_virtual_file_stats(NULL, NULL) AS ius
INNER JOIN sys.database_files AS df ON ius.database_id = df.database_id
AND ius.file_id = df.file_id
ORDER BY Avg_IO_Stall_MS DESC OPTION (RECOMPILE);
