/* CREA LA FUNCTION */

create or replace FUNCTION mayor_entre(x in number, y in number)
RETURN NUMBER
IS
    
BEGIN
   IF(x>y) THEN
        RETURN x;
   ELSE
        RETURN y;
   END IF;
END;
/

/* LLAMA LA FUNCTION */

set serveroutput on;

DECLARE
    a NUMBER := 33;
    b NUMBER := 25;
    z NUMBER;
   
BEGIN

    z := mayor_entre(a, b);
    
    dbms_output.put_line('El mayor es: ' ||z);
END;
/