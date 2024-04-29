--first 


DECLARE
    TYPE IntList IS TABLE OF INTEGER;
    v_numbers IntList := IntList(1, 2, 3, 4, 5);
    v_first INTEGER;

BEGIN
    -- İlk elemanı al
    v_first := v_numbers.FIRST;

    -- İlk elemanı ekrana yazdır
    DBMS_OUTPUT.PUT_LINE('İlk eleman: ' || v_first);
END;
