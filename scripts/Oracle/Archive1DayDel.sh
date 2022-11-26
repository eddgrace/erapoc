. $HOME/.bash_profile
rman target / <<EOF
delete noprompt archivelog until time 'sysdate-1';
exit
EOF
