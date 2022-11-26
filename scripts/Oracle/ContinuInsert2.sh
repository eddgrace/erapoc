. $HOME/.bash_profile

sqlplus   testman/nutanix<<EOF
set timing on
BEGIN 
    FOR x IN 1 .. 100000000 LOOP
	for y in 2 .. 100 LOOP
	insert into testins values ( TestSeqIns.nextval,sysdate);
	commit;
	END LOOP;
    END LOOP;
END;
/
	select count(1) from testins;
exit
EOF
