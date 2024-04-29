-- record_data_types_table_based_records

DECLARE
    calisanlar employees%ROWTYPE; -- employees tablosundan bir satırı temsil eden kayıt türü

BEGIN
    SELECT * INTO calisanlar
    FROM employees
    WHERE salary = (SELECT MAX(salary) FROM employees);

    DBMS_OUTPUT.PUT_LINE('En yüksek maaş alan kişinin bilgileri:');
    DBMS_OUTPUT.PUT_LINE('İsim: ' || calisanlar.first_name);
    DBMS_OUTPUT.PUT_LINE('Soyisim: ' || calisanlar.last_name);
    DBMS_OUTPUT.PUT_LINE('Maaş: ' || calisanlar.salary);
END;




