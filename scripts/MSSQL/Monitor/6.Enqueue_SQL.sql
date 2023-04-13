/*
此腳本將顯示所有排隊中的SQL語句，包括session_id、command、status、wait_type、wait_time、cpu_time、total_elapsed_time、reads、writes、batch_text、statement_text和query_plan。通過查看排隊中的SQL，可以找出可能會導致性能問題的查詢或存儲過程，以便進行優化和調整。
*/

SELECT 
    r.session_id
    ,r.command
    ,r.status
    ,r.wait_type
    ,r.last_wait_type
    ,r.wait_time
    ,r.cpu_time
    ,r.total_elapsed_time
    ,r.reads
    ,r.writes
    ,t.text AS batch_text
    ,SUBSTRING(t.text, r.statement_start_offset/2 + 1, 
        (CASE WHEN r.statement_end_offset = -1 
              THEN LEN(CONVERT(NVARCHAR(MAX), t.text)) * 2 
              ELSE r.statement_end_offset 
         END - r.statement_start_offset)/2) AS statement_text
    ,qp.query_plan
FROM sys.dm_exec_requests r
CROSS APPLY sys.dm_exec_sql_text(r.sql_handle) t
CROSS APPLY sys.dm_exec_query_plan(r.plan_handle) qp
WHERE r.command IN ('SELECT', 'UPDATE', 'INSERT', 'DELETE')
AND r.status = 'suspended'
ORDER BY r.wait_time DESC;
