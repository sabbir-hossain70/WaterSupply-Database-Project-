
--loop in plsql
set serveroutput on

declare 
n int;

begin
select count(order_id) into n
from orders;
loop 
    exit when n>-2;
    n:= n-1;
    dbms_output.put_line(n);
end loop;
end;
/

--for loop in plsql
set serveroutput on

declare 
n int;

begin
select count(order_id) into n
from orders;
for i in 1..n
loop 
    dbms_output.put_line(i);
end loop;
end;
/
 

