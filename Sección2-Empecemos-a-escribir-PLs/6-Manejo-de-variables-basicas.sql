set serveroutput on;

DECLARE
    --Definicion de funciones y variables
    salario number:= 1500;
    nombreEmpleado nvarchar2(100);
    activo boolean;
    fecha date;
    
BEGIN
    nombreEmpleado:= 'Hernan Moreno';
    activo:= true;
    fecha:= '02-nov-2022'; -- OK
    --fecha:= '02-11-2022'; -- NOK
    
    dbms_output.put_line('Nombre: ' || nombreEmpleado);
    dbms_output.put_line('Salario: ' || salario);
    dbms_output.put_line('Activo: ' || CASE WHEN activo THEN 'SI' ELSE 'NO' END );
    dbms_output.put_line('Fecha: ' || fecha);
END;
/