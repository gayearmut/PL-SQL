--extend



DECLARE
    TYPE IntList IS TABLE OF INTEGER;
    v_numbers IntList := IntList(1, 2, 3, 4, 5);

BEGIN
    -- Koleksiyonu 10 elemana genişlet
    v_numbers.EXTEND(10);

    -- 6. indekse 10 ekleyelim
    v_numbers(6) := 10;

    -- Genişletilmiş koleksiyonu ekrana yazdır
    FOR i IN 1..v_numbers.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE(v_numbers(i));
    END LOOP;
END;
