

update vip_member set First_Name='AAA', Last_Name='BBB', id=concat(SUBSTRING (id,1,4),'XX' ,SUBSTRING (id,LEN(id)-3,LEN(id)));


