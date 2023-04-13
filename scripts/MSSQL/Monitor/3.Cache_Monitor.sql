SELECT TOP (50) 
    obj.name AS objectname
    ,IDX.name AS indexname
    ,i.index_id 
    ,iuser_seeks 
    ,iuser_scans 
    ,iuser_lookups 
    ,idelete_marks 
    ,iinsert_rows 
    ,iupdate_rows 
    ,duser_seeks 
    ,duser_scans 
    ,duser_lookups 
    ,ddatabase_pages
FROM sys.dm_db_index_usage_stats AS i
INNER JOIN sys.indexes AS IDX ON i.OBJECT_ID = IDX.OBJECT_ID AND i.index_id = IDX.index_id
INNER JOIN sys.objects AS obj ON i.OBJECT_ID = obj.OBJECT_ID
INNER JOIN sys.dm_db_partition_stats AS ps ON i.OBJECT_ID = ps.OBJECT_ID AND ps.index_id = i.index_id
WHERE 
    ps.index_id < 2 
    AND obj.type_desc <> 'HEAP' 
ORDER BY 
    (iuser_seeks + iuser_scans + iuser_lookups) DESC;
