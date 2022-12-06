set serveroutput on;

DECLARE
    --Definicion los arreglos
    nota NUMBER :=67;
   
BEGIN

    dbms_output.put_line('SU NOTA ES $' || nota );
    
    IF(nota = 69 OR nota=68) THEN
        nota := 70;
    END IF;
    
    IF(nota BETWEEN 67 AND 69) THEN
        nota := 70;
    END IF;
    
    IF(nota >= 70) THEN
        dbms_output.put_line('APROBADO ' || nota );
    ELSE
        dbms_output.put_line('RECHAZADO ' || nota );
    END IF;    
        
END;
/