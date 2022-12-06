set serveroutput on;

DECLARE
    
BEGIN
    /*
    FOR I IN  1..10 LOOP
        dbms_output.put_line(I||'*2='|| I*2); -- 1*2=2
    END LOOP;
    */
    
    << CICLO_TABLA_2 >> --1*2=2
    FOR I IN  1..10 LOOP
        
        /*
        --EXIT para salir del ciclo
        IF(I=5) THEN
            EXIT;
        END IF;
        */
        
        --CONTINUE se salta el ciclo y continua con el siguiente, en este caso con el i=6
        IF(I=5) THEN
            CONTINUE;
        END IF;
        
        dbms_output.put(I); 
        dbms_output.put('*2='); 
        dbms_output.put_line(I*2); 
    END LOOP CICLO_TABLA_2;
    
END;
/