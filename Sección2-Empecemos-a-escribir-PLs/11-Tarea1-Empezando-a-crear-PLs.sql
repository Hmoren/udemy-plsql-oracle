set serveroutput on;

DECLARE
    --Definicion los arreglos
    mumeroCamisetasVender number:=5;
    montoDeCamisetas number:=19.99;
    
    subTotal number;
    impuesto number;
    totalPagar number;
    
BEGIN

    --Calcula Sub total
    subTotal:= (mumeroCamisetasVender * montoDeCamisetas);
    
    --Calcula Impuesto
    impuesto:= (subTotal * 15)/100;
    
    --Calcula Total pagar
    totalPagar:= (subTotal + impuesto);
    
    dbms_output.put_line('Lleva: ' || mumeroCamisetasVender ||' camisetas');
    dbms_output.put_line('Costo unitario $' || montoDeCamisetas );
    dbms_output.put_line('************************************************');
    dbms_output.put_line('Sub total $' || subTotal );
    dbms_output.put_line('Impuesto 15% $' || impuesto );
    dbms_output.put_line('Total pagar $' || totalPagar );
END;
/