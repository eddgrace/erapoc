

. $HOME/.bash_profile

sqlplus / as sysdba<<EOF
@DropTestEnv.sql
exit
EOF
