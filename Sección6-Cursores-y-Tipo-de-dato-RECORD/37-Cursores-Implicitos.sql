SET serveroutput ON;

DECLARE
   
BEGIN
    
    UPDATE empleados set actualizado = sysdate;
    
    -- Cuantos registros fueron afectados
    dbms_output.put_line('Afectados: ' || sql%rowcount);
    
    IF(sql%found) THEN
        dbms_output.put_line('Encontro registros');
    ELSE
        dbms_output.put_line('No encontro registros');
    END IF;
    
    -- Si colocas el commit antes del sql%rowcount este no mostrará los registros modificados
    -- ya que el commit aplica el cambio y vuelve el contador a cero. En este caso al
    -- estar despues muestra la cantidad y aplica el cambio
    COMMIT;
    
END;