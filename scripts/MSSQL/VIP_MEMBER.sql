drop table vip_member;
go
create table vip_member ( id char(10), First_name char(30), Last_name char(30),gender char(1), phone_m int, phone_h int, city char(20));
go



insert into vip_member ( id , First_name, Last_name ,gender , phone_m ,  phone_h , city ) values ( 'A145275126', 'Eddie', 'Chang', 'M', 931675932 , 223342839, 'Taipei');
insert into vip_member ( id , First_name, Last_name ,gender , phone_m ,  phone_h , city ) values ( 'A189852121', 'Tom', 'Wood', 'M',  931675932 , 220091400, 'Taipei');
insert into vip_member ( id , First_name, Last_name ,gender , phone_m ,  phone_h , city ) values ( 'A179641894', 'Mason', 'Howard', 'M', 978143905 , 228495764, 'Taipei');
insert into vip_member ( id , First_name, Last_name ,gender , phone_m ,  phone_h , city ) values ( 'A138988207', 'Lewis', 'Richards', 'M', 912944153 , 228355610, 'Taipei');
insert into vip_member ( id , First_name, Last_name ,gender , phone_m ,  phone_h , city ) values ( 'A183216416', 'Danny', 'Richards', 'M', 980477891 , 224626352, 'Taipei');
insert into vip_member ( id , First_name, Last_name ,gender , phone_m ,  phone_h , city ) values ( 'A123749074', 'Oakley', 'Henderson', 'M', 922089364 , 227651564, 'Taipei');
insert into vip_member ( id , First_name, Last_name ,gender , phone_m ,  phone_h , city ) values ( 'A138887536', 'Ashton', 'Booth', 'M', 951183299 , 221091614, 'Taipei');
insert into vip_member ( id , First_name, Last_name ,gender , phone_m ,  phone_h , city ) values ( 'A182702986', 'Dante', 'Barker', 'M', 970596679 , 223565347, 'Taipei');

select * from vip_member;
go




update vip_member set First_Name='AAA', Last_Name='BBB', id=concat(SUBSTRING (id,1,4),'XX' ,SUBSTRING (id,LEN(id)-3,LEN(id)));