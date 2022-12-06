set serveroutput on;

DECLARE
    nombre nvarchar2(100):= 'Hernan';
    apellido nvarchar2(100):= 'Moreno';
    nombreCompleto nvarchar2(200);
    hoy date:= sysdate;
    nombre2 nvarchar2(100);
BEGIN
    -- Funciones con Textos
    nombreCompleto:= nombre||' '||apellido;
    dbms_output.put_line('Nombre Completo : ' || nombreCompleto); --Nombre Completo : Hernan Moreno
    dbms_output.put_line('Largo: ' || LENGTH(nombre)); --Largo: 6
    
    dbms_output.put_line('Trim: ' || trim(nombre) ||';'); --Trim: Hernan;
    
    dbms_output.put_line('Minuscula: ' || LOWER(nombre)); --Minuscula: hernan
    
    dbms_output.put_line('Mayuscula: ' || UPPER(nombre)); --Mayuscula: HERNAN
    
    nombre:= trim(nombre);
    
    dbms_output.put_line('Cortar: ' || substr(nombre,1,3)); --Cortar: Her
    
    dbms_output.put_line('Reemplazo: ' || replace(nombre,'H','F')); --Reemplazo: Fernan
    
    dbms_output.put_line('NVL: ' || NVL(nombre2, 'Es nulo')); 
    
    --Funcion de fecha      
    dbms_output.put_line('Hoy: ' || hoy); --Hoy: 02-NOV-22
    dbms_output.put_line('Agregar mes: ' || add_months(hoy,1)); --Agregar mes: 02-DIC-22
    dbms_output.put_line('Agregar dia: ' || (hoy + 1)); --Agregar dia: 03-NOV-22
    dbms_output.put_line('Día: ' || to_char(hoy, 'dd')); --Día: 02
    dbms_output.put_line('Día Mes: ' || to_char(hoy, 'dd-MM')); --Día Mes: 02-11
    dbms_output.put_line('Anio: ' || to_char(hoy, 'yyyy')); --Anio: 2022
   
END;
/