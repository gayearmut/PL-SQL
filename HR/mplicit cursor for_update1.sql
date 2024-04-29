--implicit cursor for update 



DECLARE
    v_department_id departments.department_id%TYPE := 500; -- Zam yapılacak departmanın id'si
    v_salary_increase NUMBER := 500; -- Zam miktarı
BEGIN
    -- Belirli bir departmanın tüm çalışanlarının maaşına zam yapmak için UPDATE sorgusu
    UPDATE employees2
    SET salary = salary + v_salary_increase
    WHERE department_id = v_department_id;

    -- UPDATE sorgusundan etkilenen satır sayısına göre kontrol yapılır
    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Belirtilen departmanın tüm çalışanlarının maaşına zam yapıldı.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Belirtilen departmanda çalışan mevcut değil veya departman bulunamadı.');
    END IF;
END;
