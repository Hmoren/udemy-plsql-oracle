SET SERVEROUTPUT ON;

DECLARE

   ran NUMBER := ROUND(dbms_random.value(1,3));
   
   error_1 exception;
   error_2 exception;
   error_3 exception;
   
BEGIN

   CASE
      WHEN ran = 1 THEN
         RAISE error_1;
      WHEN ran = 2 THEN
         RAISE error_2;
      WHEN ran = 3 THEN
         RAISE error_3;
    END CASE;
    
    dbms_output.put_line('Yo numca me ejecutare');

EXCEPTION
   WHEN error_1 THEN
      dbms_output.put_line('No manejamos el error 1');
   WHEN error_2 THEN
      dbms_output.put_line('No manejamos el error 2');
   WHEN error_3 THEN
      dbms_output.put_line('No manejamos el error 3');

END;