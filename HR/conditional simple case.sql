--conditional simple case 

DECLARE
    num NUMBER := 15; -- Kontrol edilecek sayı
    sonuc VARCHAR2(20);
BEGIN
    -- Sayının tek mi çift mi olduğunu kontrol et
    CASE MOD(num, 2)
        WHEN 0 THEN
            sonuc := 'Çift';
        ELSE
            sonuc := 'Tek';
    END CASE;
    
    -- Sonucu ekrana yazdır
    DBMS_OUTPUT.PUT_LINE('Sayı ' || num || ' ' || sonuc || 'tir.');
END;