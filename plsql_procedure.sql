CREATE OR REPLACE PROCEDURE max_value IS
mx orders.order_id%type;
BEGIN
SELECT MAX(order_id) INTO mx
FROM orders;
dbms_output.put_line('max value: ' || mx);
END;
/

SET SERVEROUTPUT ON
BEGIN
max_value;
END;
/