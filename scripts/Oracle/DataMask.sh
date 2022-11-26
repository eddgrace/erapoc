HHOST=`hostname`

if [ ${HHOST} == 'pocvm05' ] || [ ${HHOST} == 'pocvm07' ];then
echo "This is Prod Env"
else
echo "This is not Prod Evn, Data will be masked"
. $HOME/.bash_profile
sqlplus testman/nutanix <<EOF >> /tmp/DataMask.log
alter session set nls_date_formate='YYYY-MM-DD HH24:MI:SS';
@/home/oracle/scripts/Oracle/DataMask.sql
exit
EOF
fi

