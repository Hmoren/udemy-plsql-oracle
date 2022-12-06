SET SERVEROUTPUT ON;

DECLARE
   nombre NVARCHAR2(100); 
BEGIN

   SELECT nombre INTO nombre FROM empleados WHERE id = 21;
   
   dbms_output.put_line(nombre);

EXCEPTION
   
   WHEN no_data_found THEN
      dbms_output.put_line('No encontro empleado con ese codigo');
   WHEN others THEN
      dbms_output.put_line('Existe un error, no identificado');

END;