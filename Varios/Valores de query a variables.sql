set serveroutput on;

DECLARE
    cantidad number;
    usuario nvarchar(200);
    
BEGIN
    
    SELECT USER INTO USUARIO FROM DUAL;
    DBMS_OUTPUT.PUT_LINE('Usuario : ' || USUARIO);

END;
/