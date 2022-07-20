-- showing output
set serveroutput on
begin
dbms_output.put_line('Welcome');
end;
/

--showing total no of distributor
set serveroutput on

declare 
noofdistributors int;

begin
select count(distributor_id) into noofdistributors
from distributor;
dbms_output.put_line('Total no of distributors: '||noofdistributors);
end;
/

-- if else statement
set serveroutput on

declare 
noofdistributors int;

begin
select count(distributor_id) into noofdistributors
from distributor;
if(noofdistributors>5) then
dbms_output.put_line('A good number of distributors');
else
dbms_output.put_line('Not a good number of distributors.there need to be more distributors');
end if;
end;
/
