. $HOME/.bash_profile

while true
do
sqlplus -s  testman/nutanix<<EOF
alter session set nls_date_format='YYYY-MM-DD HH24:MI:SS';
col segment_name for a15
set feedback off
select count(eventid),max(eventdate) from testins;
select segment_name,bytes/1048576 "Size MB" from user_segments;
exit
EOF
sleep 2
done 
