set serveroutput on;

DECLARE
    X NUMBER:=10;
BEGIN
    LOOP
        dbms_output.put_line(X); 
        X:=X+10;
        IF(X>120)THEN
            EXIT;
        END IF;
    END LOOP;
    
END;
/