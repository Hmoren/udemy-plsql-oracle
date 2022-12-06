create or replace FUNCTION mayor_entre(x in number, y in number)
RETURN NUMBER
IS
    
BEGIN
   IF(x>y) THEN
        RETURN x;
   ELSE
        RETURN y;
   END IF;
END;
