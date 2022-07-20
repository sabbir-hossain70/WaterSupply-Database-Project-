--cursor in plsql
set serveroutput on

declare
	cursor selectedrow is select distributor_id,d_name from distributor;
    records selectedrow%rowtype;

begin
open selectedrow;
	loop 
		fetch selectedrow into records;
		exit when selectedrow%notfound;
	dbms_output.put_line('distributor_id=' ||records.distributor_id);
	dbms_output.put_line('distributor name=' ||records.d_name);
	end loop;
close selectedrow;
end;
/