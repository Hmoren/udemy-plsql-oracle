set serveroutput on;

DECLARE
    --Definicion los arreglos
    nota NUMBER :=90;
   
BEGIN

    dbms_output.put_line('SU NOTA ES $' || nota );
    
    IF(nota >= 90) THEN
        dbms_output.put_line('Excelente ' || nota );
    ELSIF(nota >= 80) THEN
        dbms_output.put_line('Muy bien ' || nota );
    ELSIF(nota >= 70) THEN
        dbms_output.put_line('Bien ' || nota );
    ELSE 
        dbms_output.put_line('Neceista mejorar ' || nota );
    END IF;    
        
END;
/