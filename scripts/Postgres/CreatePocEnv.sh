. ./PGENV.sh

psql ${ConnectString} <<EOF
Drop table trx_data;
Drop sequence trx_serial;

CREATE SEQUENCE trx_serial START 1;
Create table trx_data ( id int, tx_time timestamp);

ALTER TABLE trx_data
ADD CONSTRAINT trx_data_pkey PRIMARY KEY (id);

select * from trx_data;

EOF
