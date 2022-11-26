. $HOME/.bash_profile

sqlplus testman/nutanix<<EOF
set linesize 200
select * from vip_member;
exit
EOF

