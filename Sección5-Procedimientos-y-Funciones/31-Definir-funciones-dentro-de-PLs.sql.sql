SET SERVEROUTPUT ON;
DECLARE

    salarioPromedio NUMBER :=0;
    
    -- =======================
    -- OBTENER PROMEDIO
    -- =======================
    FUNCTION obtener_promedio
    RETURN NUMBER
    IS
        promedio NUMBER:=0;
    BEGIN
    
        SELECT AVG(salario) INTO promedio FROM empleados;
        RETURN promedio;
    
    END;
        -- ======================= FIN DE LA FUNCION PROMEDIO
    
BEGIN -- Funcion PL Principal

    salarioPromedio := obtener_promedio();
    dbms_output.put_line('El salario promedio es: ' || salarioPromedio);
END;