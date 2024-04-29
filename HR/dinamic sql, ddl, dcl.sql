-- pl- sql içerisinde SQL komutlarının kuallınımı (dinamic sql, ddl, dcl)
--SET serveroutput ON;
DECLARE
    ddl_komut VARCHAR2(2000);
BEGIN
    -- Tabloyu oluşturma
    ddl_komut := 'CREATE TABLE temp_table (urun_id NUMBER(10), urun_adi VARCHAR2(30))';
    EXECUTE IMMEDIATE ddl_komut;
    DBMS_OUTPUT.PUT_LINE('Tablo oluşturuldu');

    -- Tabloyu değiştirme
    ddl_komut := 'ALTER TABLE temp_table ADD (urun_aciklama VARCHAR2(100))';
    EXECUTE IMMEDIATE ddl_komut;
    DBMS_OUTPUT.PUT_LINE('Tablo alter edildi');

    -- Tabloyu silme
    ddl_komut := 'DROP TABLE temp_table';
    EXECUTE IMMEDIATE ddl_komut;
    DBMS_OUTPUT.PUT_LINE('Tablo drop edildi');

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Hata: ' || SQLERRM);
END;