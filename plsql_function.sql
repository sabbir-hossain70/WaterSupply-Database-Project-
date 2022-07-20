CREATE OR REPLACE FUNCTION max_val RETURN NUMBER IS
mx orders.order_id%type;
BEGIN
SELECT MAX(order_id) INTO mx
FROM orders;
RETURN mx;
END;
/

SET SERVEROUTPUT ON
BEGIN
dbms_output.put_line('max value: ' || max_val);
END;
/