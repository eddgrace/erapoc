

. $HOME/.bash_profile

sqlplus / as sysdba<<EOF
@CreateTestEnv.sql
@VipMemberData.sql
exit
EOF
