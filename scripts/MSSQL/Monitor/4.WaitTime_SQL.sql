
/*
此腳本將顯示等待時間最長的10個SQL查詢，並包括等待的類型、最大等待時間、總等待時間、總耗時和查詢文本。此腳本可以幫助您找出可能會導致性能問題的SQL查詢，以便進行優化和調整。
*/
SELECT TOP 10 
    wait_type
    ,max_wait_time_ms
    ,total_wait_time_ms
    ,total_elapsed_time_ms
    ,SUBSTRING(qt.text, (qs.statement_start_offset/2)+1, 
        ((CASE qs.statement_end_offset 
        WHEN -1 THEN DATALENGTH(qt.text)
        ELSE qs.statement_end_offset
        END - qs.statement_start_offset)/2) + 1) AS query_text
FROM sys.dm_exec_query_stats AS qs
CROSS APPLY sys.dm_exec_sql_text(qs.sql_handle) AS qt
INNER JOIN sys.dm_os_waiting_tasks AS wt ON qs.session_id = wt.session_id
ORDER BY max_wait_time_ms DESC;

