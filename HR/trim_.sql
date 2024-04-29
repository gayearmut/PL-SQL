 -- trim 

DECLARE
    TYPE IntList IS TABLE OF INTEGER;
    v_numbers IntList := IntList(1, 2, 3, 4, 5);

BEGIN
    -- Son 2 elemanı kaldır
    v_numbers.TRIM(2);

    -- Kırpılmış koleksiyonu ekrana yazdır
    FOR i IN 1..v_numbers.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE(v_numbers(i));
    END LOOP;
END;


