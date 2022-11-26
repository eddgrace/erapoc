. $HOME/.bash_profile

while true
do
sqlplus -s  testman/nutanix<<EOF >>/tmp/Last5Minus.log
alter session set nls_date_format='YYYY-MM-DD HH24:MI:SS';
select sysdate as now ,sysdate - (5/24/60) as "5 mins ago",count(1) as "Total Count" from testins where eventdate between sysdate-(5/24/60) and sysdate; 
select sysdate as now ,sysdate - (10/24/60) as "10 mins ago",count(1) as "Total Count" from testins where eventdate between sysdate-(10/24/60) and sysdate; 
exit
EOF
tail /tmp/Last5Minus.log
sleep 1
done 
