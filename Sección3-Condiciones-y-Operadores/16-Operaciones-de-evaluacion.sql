set serveroutput on;

DECLARE
    
    A number := 5;
    B number := 10;
    
    nombre1 nvarchar2(100) := 'Hernan';
    nombre2 nvarchar2(100);
   
BEGIN
    
    IF(A > B) THEN
        dbms_output.put_line('A es mayor a B');
    END IF;
    
    IF(A < B) THEN
        dbms_output.put_line('B es mayor a A');
    END IF;
    
    IF(A = B) THEN
        dbms_output.put_line('A es igual a B');
    END IF;
    
    IF(A <> B) THEN
        dbms_output.put_line('A es diferente a B');
    END IF;

    IF(nombre1 LIKE 'H%') THEN
        dbms_output.put_line('El nombre1 comienza con H');
    END IF;
    
    IF(nombre1 LIKE '%rn%') THEN
        dbms_output.put_line('El nombre1 contiene rn');
    END IF;
    
    IF(nombre1 LIKE '%an%') THEN
        dbms_output.put_line('El nombre1 termina en an');
    END IF;
    
    IF( A BETWEEN 0 AND 10) THEN
        dbms_output.put_line('A, esta entre 0 y 10');
    END IF;
    
    IF( B in (5,10,15,20)) THEN
        dbms_output.put_line('B, esta en el grupo de elementos (5,10,15,20)');
    END IF;
    
    IF( nombre2 IS NULL) THEN
        dbms_output.put_line('El nombre2 es nulo');
    END IF;
    
END;
/