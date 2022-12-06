CREATE OR REPLACE FUNCTION edad_actual(fechanaci IN DATE)
RETURN NUMBER IS
    edad NUMBER(3):=0;
    
BEGIN
    
    edad:= trunc((to_number(to_char(sysdate, 'yyyymmdd')) -to_number(to_char(fechanaci, 'yyyymmdd')))/10000);
    RETURN edad;
    
    EXCEPTION
    WHEN OTHERS THEN
        edad:= 0;
    RETURN edad;
END;