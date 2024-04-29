--exists 



DECLARE
    TYPE IntList IS TABLE OF INTEGER;
    v_numbers IntList := IntList(1, 2, 3, 4, 5);
    v_check BOOLEAN;

BEGIN
    -- 3 elemanının koleksiyonda varlığını kontrol et
    v_check := v_numbers.EXISTS(3);
    IF v_check THEN
        DBMS_OUTPUT.PUT_LINE('3 sayısı koleksiyonda var.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('3 sayısı koleksiyonda yok.');
    END IF;
END;
