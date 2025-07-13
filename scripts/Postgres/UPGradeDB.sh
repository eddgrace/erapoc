sudo systemctl stop postgresql-12
sudo systemctl stop postgresql-17
cp ~/pg_hba_12.conf /var/lib/pgsql/12/data/pg_hba.conf
cp ~/pg_hba_17.conf /var/lib/pgsql/17/data/pg_hba.conf
/usr/pgsql-17/bin/pg_upgrade -d /var/lib/pgsql/12/data -D /var/lib/pgsql/17/data -b /usr/pgsql-12/bin -B /usr/pgsql-17/bin -p 5432 -P 15432
sudo systemctl start postgresql-17
