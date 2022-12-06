set serveroutput on;

DECLARE
    --Constantes
    PI CONSTANT number:= 3.141559;
    
    --Variables
    area number;
    radio number;
BEGIN
    radio:= 7;
    area:= PI*(radio * radio);
    dbms_output.put_line('Area: ' || round( area,2) ||'cm2'); -- Area: 153.94cm2
    dbms_output.put_line('Area: ' || round( area ) ||'cm2'); -- Area: 154cm2
    dbms_output.put_line('Area: ' || round( area,4) ||'cm2'); -- Area: 153.9364cm2
END;
/