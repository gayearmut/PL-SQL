-----/*conditional searched case */


DECLARE
    dogum_tarihi DATE := TO_DATE('2000-01-01', 'YYYY-MM-DD'); -- Örnek bir doğum tarihi
    yas NUMBER;
    cikti VARCHAR2(2000);
BEGIN
    -- Doğum tarihine göre yaş hesapla
    yas := EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM dogum_tarihi);
    
    -- Yaşa göre durumları kontrol et ve ekrana yazdır
    CASE
        WHEN yas < 18 THEN
            cikti := 'Çocuksunuz.';
        WHEN yas < 25 THEN
            cikti := 'Gençsiniz.';
        WHEN yas < 65 THEN
            CASE
                WHEN yas < 40 THEN
                    cikti := 'Genç yetişkinsiniz.';
                ELSE
                    cikti := 'Orta yaşlısınız.';
            END CASE;
        ELSE
            cikti := 'Emeklisiniz.';
    END CASE;
    
    DBMS_OUTPUT.PUT_LINE(cikti);
END;