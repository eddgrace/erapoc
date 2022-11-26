

source $HOME/.bash_profile

sqlplus / as sysdba<<EOF
-- Add more redo group to enhance db access. 20210315 by Eddie Chang

alter database add logfile group 5 ('/u02/app/oracle/oradata/datafiles_${ORACLE_SID}/${ORACLE_SID}/redo05.log','/u02/app/oracle/oradata/fra_${ORACLE_SID}/${ORACLE_SID}/redo05.log') size 500m;
alter database add logfile group 6 ('/u02/app/oracle/oradata/datafiles_${ORACLE_SID}/${ORACLE_SID}/redo06.log','/u02/app/oracle/oradata/fra_${ORACLE_SID}/${ORACLE_SID}/redo06.log') size 500m;
alter database add logfile group 7 ('/u02/app/oracle/oradata/datafiles_${ORACLE_SID}/${ORACLE_SID}/redo07.log','/u02/app/oracle/oradata/fra_${ORACLE_SID}/${ORACLE_SID}/redo07.log') size 500m;
alter database add logfile group 8 ('/u02/app/oracle/oradata/datafiles_${ORACLE_SID}/${ORACLE_SID}/redo08.log','/u02/app/oracle/oradata/fra_${ORACLE_SID}/${ORACLE_SID}/redo08.log') size 500m;
alter database add logfile group 9 ('/u02/app/oracle/oradata/datafiles_${ORACLE_SID}/${ORACLE_SID}/redo09.log','/u02/app/oracle/oradata/fra_${ORACLE_SID}/${ORACLE_SID}/redo09.log') size 500m;
alter database add logfile group 10 ('/u02/app/oracle/oradata/datafiles_${ORACLE_SID}/${ORACLE_SID}/redo10.log','/u02/app/oracle/oradata/fra_${ORACLE_SID}/${ORACLE_SID}/redo10.log') size 500m;
alter database add logfile group 11 ('/u02/app/oracle/oradata/datafiles_${ORACLE_SID}/${ORACLE_SID}/redo11.log','/u02/app/oracle/oradata/fra_${ORACLE_SID}/${ORACLE_SID}/redo11.log') size 500m;
alter database add logfile group 12 ('/u02/app/oracle/oradata/datafiles_${ORACLE_SID}/${ORACLE_SID}/redo12.log','/u02/app/oracle/oradata/fra_${ORACLE_SID}/${ORACLE_SID}/redo12.log') size 500m;
alter database add logfile group 13 ('/u02/app/oracle/oradata/datafiles_${ORACLE_SID}/${ORACLE_SID}/redo13.log','/u02/app/oracle/oradata/fra_${ORACLE_SID}/${ORACLE_SID}/redo13.log') size 500m;



EOF

