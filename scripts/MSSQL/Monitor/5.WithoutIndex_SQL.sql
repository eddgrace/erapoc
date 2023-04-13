/*
此腳本可以顯示IO量最高的前10個腳本，並包括數據庫名稱、模式名稱、對象名稱、物理讀取次數、邏輯讀取次數、邏輯寫入次數和總IO量。腳本還顯示了查詢的執行計劃，可以用來更深入地了解該查詢的性能問題。通過查看IO量最高的腳本，可以找出可能會導致性能問題的查詢或存儲過程，以便進行優化和調整。
*/

SELECT TOP 10
    DB_NAME(database_id) AS DatabaseName
    ,OBJECT_SCHEMA_NAME(object_id, database_id) AS SchemaName
    ,OBJECT_NAME(object_id, database_id) AS ObjectName
    ,total_physical_reads
    ,total_logical_reads
    ,total_logical_writes
    ,total_physical_reads + total_logical_reads + total_logical_writes AS Total_IO
    ,query_plan
FROM sys.dm_exec_query_stats
CROSS APPLY sys.dm_exec_sql_text(sql_handle)
CROSS APPLY sys.dm_exec_query_plan(plan_handle)
WHERE dbid > 4
ORDER BY Total_IO DESC;

