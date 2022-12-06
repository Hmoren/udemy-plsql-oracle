set serveroutput on;

DECLARE
    empleados NUMBER:=0;
   
BEGIN
    --Opcion1: llamar ejecucion y guardar en variable
    --empleados := total_empleados();
    
    --Opcion2: llamar ejecucion y guardar en variable
    SELECT total_empleados INTO empleados FROM dual;
    dbms_output.put_line('El total de empleados en la tabla empleados es: ' ||empleados);
END;
/