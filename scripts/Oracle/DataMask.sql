
 update vip_member set First_Name=DBMS_RANDOM.string('x',10), Last_Name=DBMS_RANDOM.string('x',10), id=(SUBSTR(id,1,4) || 'XX' || SUBSTR(id,LENGTH(id)-3,LENGTH(id)));
