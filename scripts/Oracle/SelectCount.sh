. $HOME/.bash_profile

while true
do
sqlplus -s testman/nutanix<<EOF
alter session set nls_date_format='YYYY-MM-DD HH24:MI:SS';
 select max(eventdate) from testman.TestIns;
select count(1) from testins;
exit
EOF
sleep 1
done

