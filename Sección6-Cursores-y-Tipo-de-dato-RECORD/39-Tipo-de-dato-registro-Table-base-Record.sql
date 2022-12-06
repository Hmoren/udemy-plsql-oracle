SET serveroutput ON;

DECLARE
   
   reg_empleado empleados%rowtype;
   
BEGIN
    
  SELECT * into reg_empleado FROM empleados WHERE id=5;
  
  dbms_output.put_line(reg_empleado.nombre);
  dbms_output.put_line(reg_empleado.id);
  dbms_output.put_line(reg_empleado.salario);
  dbms_output.put_line(reg_empleado.actualizado);
    
END;