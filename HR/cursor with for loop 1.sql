--cursor with for loop 


/*DECLARE
cursor c_emp is SELECT * from EMPLOYEES ORDER BY EMPLOYEE_ID;

BEGIN

	FOR r_oku IN c_emp LOOP
	 DBMS_OUTPUT.PUT_LINE('Sıra No :' || c_emp%rowcount || 'Sicil No :' || r_oku.EMPLOYEE_ID || 'Soyisim :' || r_oku.employee.LAST_NAME|| 'Adi: '|| r_oku.FIRST_NAME);
	 
END LOOP;


END;*/

DECLARE
    CURSOR c_emp IS SELECT * FROM EMPLOYEES ORDER BY EMPLOYEE_ID;
    -- c_emp adlı cursor'ü tanımlıyoruz ve sorgumuzu içine yazıyoruz

    v_row_count NUMBER := 0; -- Satır sayısını tutmak için değişken
BEGIN
    FOR r_oku IN c_emp LOOP
        v_row_count := v_row_count + 1; -- Her döngüde satır sayısını arttır

        -- Her bir çalışanın bilgilerini ekrana yazdır
        DBMS_OUTPUT.PUT_LINE('Sıra No: ' || v_row_count || ', Sicil No: ' || r_oku.EMPLOYEE_ID || ', Soyisim: ' || r_oku.LAST_NAME || ', Adı: ' || r_oku.FIRST_NAME);
    END LOOP;
END;

---yukarıdaki kodun cursor olmadan yapılmış hali
DECLARE
    v_row_count NUMBER := 0; -- Satır sayısını tutmak için değişken
BEGIN
    FOR r_oku IN (SELECT * FROM EMPLOYEES ORDER BY EMPLOYEE_ID) LOOP
        v_row_count := v_row_count + 1; -- Her döngüde satır sayısını arttır

        -- Her bir çalışanın bilgilerini ekrana yazdır
        DBMS_OUTPUT.PUT_LINE('Sıra No: ' || v_row_count || ', Sicil No: ' || r_oku.EMPLOYEE_ID || ', Soyisim: ' || r_oku.LAST_NAME || ', Adı: ' || r_oku.FIRST_NAME);
    END LOOP;
END;