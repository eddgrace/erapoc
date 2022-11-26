. ./PGENV.sh 


while true
do


psql ${ConnectString} <<EOF
insert into trx_data (id,tx_time) values (nextval('trx_serial'),current_timestamp);
\q
EOF

sleep 1
done
