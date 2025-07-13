sudo systemctl stop postgresql-12
sudo -u postgres pgbackrest --stanza=demo --log-level-console=detail --type=standby --force --delta restore
sudo systemctl start postgresql-12
