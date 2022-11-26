psql -h localhost -U samonitor -d postgres<<EOF
select count(1) from pg_stat_activity;
\q
EOF

