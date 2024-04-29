--for_loop_1

DECLARE
    total NUMBER := 0;
BEGIN
    FOR i IN 1..5 LOOP
        total := total + i;
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('Toplam: ' || total);
END;


DECLARE
    n NUMBER := 5; -- Faktöriyeli hesaplanacak sayı
    faktoriyel NUMBER := 1;
BEGIN
    FOR i IN 1..n LOOP
        faktoriyel := faktoriyel * i;
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('5! = ' || faktoriyel);
END;