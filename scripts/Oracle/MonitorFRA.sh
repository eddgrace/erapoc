

. $HOME/.bash_profile
sqlplus -s / as sysdba <<EOF

set linesize 200
select * from v\$recovery_area_usage;
exit
EOF

