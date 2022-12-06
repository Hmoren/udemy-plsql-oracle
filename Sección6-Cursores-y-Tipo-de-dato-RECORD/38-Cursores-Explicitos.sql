SET serveroutput ON;

DECLARE
   
   nombre nvarchar2(200);
   salario number;
   
   CURSOR c_empleado IS
      SELECT nombre, salario FROM empleados ORDER BY nombre ASC;
   
BEGIN
    
   OPEN c_empleado;
       LOOP
          FETCH c_empleado INTO nombre, salario;
          EXIT WHEN c_empleado%notfound;
             dbms_output.put_line(nombre || ' '|| salario);
       END LOOP;
   CLOSE c_empleado;
    
END;