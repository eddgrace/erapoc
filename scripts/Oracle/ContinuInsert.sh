. $HOME/.bash_profile

while true
do
sqlplus -s  testman/nutanix<<EOF
set timing on
insert into testins values ( TestSeqIns.nextval,sysdate);
select count(1) from testins;
exit
EOF
sleep 1
done 
