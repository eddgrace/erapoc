. ./PGENV.sh 


psql ${ConnectString} <<EOF 
do  \$\$
begin
for r in 1..999999999 loop
	insert into trx_data (id,tx_time) values (nextval('trx_serial'),current_timestamp);
end loop;
end;
\$\$;
\q
EOF
