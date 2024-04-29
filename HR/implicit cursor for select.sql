
--implicit cursor for select


DECLARE
    v_employee_id employees.employee_id%TYPE := 9999; -- Kontrol edilecek employee_id değeri
    v_employee_count NUMBER; -- Çalışan sayısını tutmak için değişken
BEGIN
    -- Belirli bir employee_id değerine sahip çalışanı kontrol etmek için SELECT sorgusu
    BEGIN
        SELECT COUNT(*) INTO v_employee_count
        FROM employees
        WHERE employee_id = v_employee_id;
        
        -- COUNT(*) sonucuna göre kontrol yapılır
        IF SQL%FOUND THEN
            DBMS_OUTPUT.PUT_LINE('Belirtilen employee_id değerine sahip çalışan mevcut.');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Belirtilen employee_id değerine sahip çalışan mevcut değil.');
        END IF;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('Belirtilen employee_id değerine sahip çalışan mevcut değil.');
    END;
END;