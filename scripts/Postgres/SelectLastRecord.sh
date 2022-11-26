

. ./PGENV.sh

while true
do

psql ${ConnectString} <<EOF

select * from trx_data where id = (select max(id) from trx_data);
select inet_server_addr(); 

\q
EOF
sleep 1 
done
