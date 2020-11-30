SELECT sql_text.text, st.last_execution_time, DB_NAME(qp.dbid) as 
StackOverflow2010 FROM sys.dm_exec_query_stats st CROSS APPLY
sys.dm_exec_sql_text(st.sql_handle) AS sql_text INNER JOIN 
sys.dm_exec_cached_plans cp ON cp.plan_handle = st.plan_handle CROSS APPLY 
sys.dm_exec_query_plan(cp.plan_handle) as qp WHERE st.last_execution_time >= 
DATEADD(week, -1, getdate()) ORDER BY last_execution_time DESC;

SELECT t.[text]
FROM sys.dm_exec_cached_plans AS p
CROSS APPLY sys.dm_exec_sql_text(p.plan_handle) AS t
WHERE t.[text] LIKE N'%something unique about your query%';