define _editor=vi
set serveroutput on size 1000000
set trimspool on
set timing on
set long 5000
set pagesize 5000
set linesize 1024
column plan_plus_exp format a80
column global_name new_value gname


alter session set nls_date_format='YYYY-MM-DD HH24:MI:SS';

set termout off
define gname=idle
column global_name new_value gname
select lower(user)||'@'||lower(instance_name)||'('||(select distinct sid from v$mystat)||')' global_name from v$instance;
set sqlprompt '&gname> '
set termout on
