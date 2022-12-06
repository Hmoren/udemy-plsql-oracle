set serveroutput on;

DECLARE
    salarioBase NUMBER := round(dbms_random.value(600,2000));
    aumento number;
    salarioFinal NUMBER;
BEGIN
   /*
   TAREA #2
    Aumento de Salario
    Realizar un PL/SQL para determinar el 
    aumento de salario y el nuevo salario 
    neto de un empleado de la siguiente 
    manera:
    1- Se definirá el salario base en Dólares del 
    empleado. Este dato lo ingresaremos en la declaración 
    del PL. (Debe de ser entre un rango de 600 a 2000 
    USDs)
    2- El cálculo del aumento será de la siguiente manera
    * <= $600, le corresponde un 15% de aumento
    * entre 601 y 950, aumento de 13.5%
    * entre 951 y 1400, aumento de 10%
    * >= 1401, aumento del 5%
    3- Imprimir los resultados en consola.
   */
   dbms_output.put_line('Salario base $' || salarioBase);
    
    CASE
        WHEN salarioBase <= 600 THEN
            aumento:= (salarioBase * 15)/100;
            dbms_output.put_line('Aumento 15% $' || aumento);
        WHEN salarioBase BETWEEN 601 AND 950 THEN
            aumento:= (salarioBase * 13.5)/100;
            dbms_output.put_line('Aumento 13.5% $' || aumento);
        WHEN salarioBase BETWEEN 951 AND 1400 THEN
            aumento:= (salarioBase * 10)/100;     
            dbms_output.put_line('Aumento 10% $' || aumento);
        ELSE
            aumento:= (salarioBase * 5)/100; 
            dbms_output.put_line('Aumento 5% $' || aumento);
    END CASE;
    
    salarioFinal:= salarioBase + aumento;    
    dbms_output.put_line('Salario final $' || salarioFinal);
END;
/