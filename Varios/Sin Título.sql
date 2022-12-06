set serveroutput on;

DECLARE
    --Definicion de funciones y variables
    salario number := 2000000;
    nombreEmpleado nvarchar2(100);
    activo boolean;
    fecha date;
BEGIN
    nombreEmpleado := 'Hernan Moreno';
    activo:= true;
    --fecha:= '28-10-2022';
    --fecha:= '2022-10-28';
    --fecha:= '2022-28-10';
    
    
    
    dbms_output.put_line('Nombre: ' || nombreEmpleado );
    dbms_output.put_line('salario: ' || salario );
    dbms_output.put_line('Fecha: ' || fecha );
    --dbms_output.put_line('Activo: ' || activo );    
    
END;
/