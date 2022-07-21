CREATE OR REPLACE TRIGGER delivery_status_validity
BEFORE INSERT OR UPDATE ON products
FOR EACH ROW
DECLARE
   option1 varchar(30) := "delivered";
   option2 varchar(30) := "not delivered";
BEGIN
  IF :new.order_status=option1 THEN ;
  ELSE IF: new.order_status=option2 THEN;
  ELSE:
  RAISE_APPLICATION_ERROR(-20000,'the value is not valid...it should be delivered/not delivered');
  END IF;
END;
/
