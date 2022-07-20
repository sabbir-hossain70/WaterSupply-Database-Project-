SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE showmax IS
mx_order_id orders.order_id%rowtype;

BEGIN
SELECT MAX(order_id) into mx_order_idFROM orders;
DBMS_OUTPUT.PUT_LINE('max order id= '||mx_order_id);
END;
/
SHOW ERRORS;

BEGIN
getemp;
END;
/