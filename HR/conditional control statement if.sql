-- conditional control statement if


DECLARE
    dogum_tarihi DATE := TO_DATE('2010-01-01', 'YYYY-MM-DD'); -- Örnek bir doğum tarihi
    yas NUMBER;
BEGIN
    -- Doğum tarihine göre yaş hesapla
    yas := EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM dogum_tarihi);
    
    -- Yaşa göre durumları kontrol et ve ekrana yazdır
    IF yas < 18 THEN
        DBMS_OUTPUT.PUT_LINE('Çocuksunuz.');
    ELSIF yas < 25 THEN
        DBMS_OUTPUT.PUT_LINE('Gençsiniz.');
    ELSIF yas < 65 THEN
        DBMS_OUTPUT.PUT_LINE('Yetişkinsiniz.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Emeklisiniz.');
    END IF;
END;