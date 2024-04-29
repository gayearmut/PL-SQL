---nested table 



DECLARE
    -- Nested table tipi tanımlanır
    TYPE IntList IS TABLE OF INTEGER;
    
    -- Nested table değişkeni tanımlanır
    v_numbers IntList := IntList(1, 2, 3, 4, 5); -- Başlangıç değerleri ile initialize edilir
BEGIN
    -- Nested table'daki değerler ekrana yazdırılır
    FOR i IN 1..v_numbers.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE('Index ' || i || ': ' || v_numbers(i));
    END LOOP;
END;
