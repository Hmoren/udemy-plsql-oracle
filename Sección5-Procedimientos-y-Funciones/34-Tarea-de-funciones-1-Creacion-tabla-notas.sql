/* Creacion de tabla NOTAS*/

CREATE TABLE NOTAS ("NOMBRE" VARCHAR2(100), "NOTA1" NUMBER(3,0), "NOTA2" NUMBER, "NOTA3" NUMBER, "NOTA4" NUMBER);
SET DEFINE OFF;


/* inserta datos en tabla NOTAS*/

Insert into NOTAS (NOMBRE,NOTA1,NOTA2,NOTA3,NOTA4) values ('Tonya Vazquez','100','80','99','77');
Insert into NOTAS (NOMBRE,NOTA1,NOTA2,NOTA3,NOTA4) values ('Mathews Robbins','88','56','100','89');
Insert into NOTAS (NOMBRE,NOTA1,NOTA2,NOTA3,NOTA4) values ('Walton Vincent','77','38','50','100');
Insert into NOTAS (NOMBRE,NOTA1,NOTA2,NOTA3,NOTA4) values ('Audra Wade','92','93','93','80');
Insert into NOTAS (NOMBRE,NOTA1,NOTA2,NOTA3,NOTA4) values ('Susanne Moody','70','67','78','83');
Insert into NOTAS (NOMBRE,NOTA1,NOTA2,NOTA3,NOTA4) values ('Stevenson Dickson','45','90','70','89');
Insert into NOTAS (NOMBRE,NOTA1,NOTA2,NOTA3,NOTA4) values ('Hinton Cooper','76','80','60','78');
Insert into NOTAS (NOMBRE,NOTA1,NOTA2,NOTA3,NOTA4) values ('Hahn Brown','70','88','73','93');
Insert into NOTAS (NOMBRE,NOTA1,NOTA2,NOTA3,NOTA4) values ('Bennett Brady','90','95','100','99');
Insert into NOTAS (NOMBRE,NOTA1,NOTA2,NOTA3,NOTA4) values ('Mueller Jimenez','65','70','85','96');



/* ver datos insertados en NOTAS*/
SELECT * FROM notas;

/* CREA LA FUNCTION */
CREATE OR REPLACE FUNCTION promedio_notas(n1 in number, n2 in number, n3 in number, n4 in number)
RETURN NUMBER
IS    
    promedio  NUMBER:=0;
BEGIN    
    promedio:= (n1+n2+n3+n4)/4;
    RETURN promedio;
END;
/


select a.*, promedio_notas( nota1,nota2,nota3,nota4) as promedio from notas a