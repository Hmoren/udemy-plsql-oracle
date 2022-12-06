/* CREA EL PROCEDIMIENTO "menor_entre" */

CREATE OR REPLACE PROCEDURE menor_entre(x IN NUMBER, y IN number,z OUT number)
IS
BEGIN

    IF(x>y) THEN
        z:= y;
    ELSE
        z:= x;
    END IF;
    
END;
/

/* LLAMA EL PROCEDIMIENTO "menor_entre" */
set SERVEROUTPUT ON;

DECLARE
    a NUMBER := 25;
    b NUMBER := 10;
    c NUMBER;

BEGIN

    menor_entre(a, b, c);
    dbms_output.put_line('El menor es: ' || c);
END;



