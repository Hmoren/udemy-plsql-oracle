set SERVEROUTPUT ON;

DECLARE
    -- Constantes
    PI CONSTANT NUMBER:= 3.141559;

    -- Variables
    area NUMBER;
    radio NUMBER;
   
BEGIN
   
   radio:= 7;
   
   area := PI*(radio*radio);
   
   dbms_output.put_line('Area  : ' || round(area,2) || ' cm2');
    
END;
/