. $HOME/.bash_profile


sqlplus testman/nutanix<<EOF

insert into vip_member ( id , First_name, Last_name ,gender , phone_m ,  phone_h , city ) values ( 'A123456789', 'Tommy', 'Chang', 'M', 918807614 , 227482699, 'Taipei');

EOF

