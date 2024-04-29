--cursor_based_record


DECLARE
    CURSOR c_oku IS
        SELECT employee_id, first_name, last_name, salary FROM employees
        WHERE salary < (SELECT AVG(salary) FROM employees); 

    calisan c_oku%ROWTYPE; -- Cursor tablosundan bir satırı temsil eden kayıt türü
    vg_salary NUMBER; -- Ortalama maaş için değişken tanımlandı

BEGIN
    -- Ortalama maaşı hesapla ve değişkene ata
    SELECT AVG(salary) INTO vg_salary FROM employees;

    -- Cursor'ı aç
    OPEN c_oku;

    -- Cursor üzerinde döngüye başla
    LOOP
        -- Cursor'dan bir satırı al
        FETCH c_oku INTO calisan;

        -- Cursor'dan veri kalmadığında döngüyü sonlandır
        EXIT WHEN c_oku%NOTFOUND;

        -- Ortalama maaştan daha düşük maaş alanları ekrana yazdır
        IF calisan.salary < vg_salary THEN
            DBMS_OUTPUT.PUT_LINE('İd: ' || calisan.employee_id || ', İsim: ' || calisan.first_name || ', Soyisim: ' || calisan.last_name || ', Maaş: ' || calisan.salary);
        END IF;
    END LOOP;

    -- Cursor'ı kapat
    CLOSE c_oku;
END;


