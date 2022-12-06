SET serveroutput ON;

DECLARE
    promedio NUMBER;
BEGIN
    FOR fila IN (SELECT NOMBRE, NOTA1, NOTA2, NOTA3, NOTA4 FROM notas ORDER BY NOMBRE ASC) LOOP
        promedio := (fila.NOTA1+ fila.NOTA2+ fila.NOTA3+ fila.NOTA4)/4;
        dbms_output.put_line('Nombre: ' || fila.NOMBRE || ' , promedio: ' || promedio);
    END LOOP;
END;