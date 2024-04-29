/*-- while loop 1*/

DECLARE
    baslangic_tarihi DATE := TO_DATE('26/08/1071', 'DD/MM/YYYY'); -- Başlangıç tarihi
    son_tarih DATE; -- O ayın son tarihi
BEGIN
    son_tarih := LAST_DAY(baslangic_tarihi); -- Başlangıç tarihinden itibaren o ayın son gününü bul
    
    WHILE baslangic_tarihi <= son_tarih LOOP
        DBMS_OUTPUT.PUT_LINE('Tarih: ' || TO_CHAR(baslangic_tarihi, 'DD/MM/YYYY') || ', Gün: ' || TO_CHAR(baslangic_tarihi, 'DAY'));
        baslangic_tarihi := baslangic_tarihi + 1; -- Bir sonraki güne geç
    END LOOP;
END;