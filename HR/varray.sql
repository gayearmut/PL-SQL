---varray


DECLARE
    -- VARRAY tipi tanımlanır
    TYPE TeamNames IS VARRAY(10) OF VARCHAR2(100);
    
    -- VARRAY değişkeni tanımlanır ve başlangıç değerleri atanır
    v_teams TeamNames := TeamNames('Takım A', 'Takım B', 'Takım C', 'Takım D');
BEGIN
    -- VARRAY içindeki takım isimleri ve sıralamaları ekrana yazdırılır
    FOR i IN 1..v_teams.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE('Sıra ' || i || ': ' || v_teams(i));
    END LOOP;
END;