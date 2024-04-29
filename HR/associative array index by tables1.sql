--associative array index by tables

DECLARE
    TYPE Num_Square_Assoc_Array IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
    -- Indeks numarası ile erişilen bir sayı dizisi tanımlayalım

    v_num_square_array Num_Square_Assoc_Array;
    -- Yukarıda tanımladığımız tip ile ilişkilendirilmiş bir associative array tanımlayalım

BEGIN
    -- 1'den 10'a kadar olan sayıların karelerini hesaplayarak associative array'e atayalım
    FOR i IN 1..10 LOOP
        v_num_square_array(i) := i * i; -- Sayının karesini hesaplayıp associative array'e atayalım
    END LOOP;

    -- Associative array'deki değerleri ekrana yazdıralım
    FOR j IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE(j || ' sayısının karesi: ' || v_num_square_array(j));
    END LOOP;
END;
