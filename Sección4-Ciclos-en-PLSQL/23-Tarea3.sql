set serveroutput on;

DECLARE
    Y NUMBER:=20;
BEGIN
    WHILE y<=100 LOOP
        dbms_output.put_line(Y); 
        Y:=Y+20;
       
    END LOOP;
    
END;
/