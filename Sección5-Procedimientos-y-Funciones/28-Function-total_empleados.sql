create or replace NONEDITIONABLE FUNCTION total_empleados
RETURN NUMBER
IS
    total NUMBER:=0;
BEGIN
   SELECT COUNT(*) INTO total FROM empleados; 
    RETURN total;
END;
