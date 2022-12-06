set serveroutput on;

DECLARE
    --Definicion los arreglos
    ran NUMBER:= round( dbms_random.value(0,5));
   
BEGIN

    dbms_output.put_line(ran );
    
    CASE
        WHEN RAN = 0 THEN
            dbms_output.put_line('Cero');
        WHEN RAN = 1 THEN
            dbms_output.put_line('Uno');
        WHEN RAN = 2 THEN
            dbms_output.put_line('Dos');
        WHEN RAN = 3 THEN
            dbms_output.put_line('Tres');
        WHEN RAN = 4 THEN
            dbms_output.put_line('Cuatro');
        --WHEN RAN = 5 THEN
            --dbms_output.put_line('Cinco');
        ELSE
            dbms_output.put_line('Cinco');
    END CASE;
END;
/