SET serveroutput ON;

DECLARE
   
   reg_empleado empleados%rowtype;
   
   CURSOR c_empleado IS
      SELECT * FROM empleados ORDER BY nombre ASC;
      
   --Procedimiento de impresion
   PROCEDURE imprimir_empleado(empl empleados%rowtype) IS
   BEGIN
      dbms_output.put_line('========================');
      dbms_output.put_line('Empleado: '|| empl.nombre);
      dbms_output.put_line('Salario diario: '|| ROUND(empl.salario/30,2));
      dbms_output.put_line('DiasTrabajados: '|| empl.diastrabajados);
      dbms_output.put_line('Salario a pagar: '|| ROUND((empl.salario/30)*empl.diastrabajados,2));
   END;
   --Fin procedimiento de impresion
   
BEGIN
    
   OPEN c_empleado;
       LOOP
          FETCH c_empleado INTO reg_empleado;
          EXIT WHEN c_empleado%notfound;
          
             imprimir_empleado(reg_empleado);
             
       END LOOP;
   CLOSE c_empleado;
    
END;