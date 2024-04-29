/*parametreli nested cursor*/


DECLARE
    -- Outer cursor için tanımlar
    CURSOR c_locations IS
        SELECT location_id, city
        FROM locations;
    
    -- Inner cursor için tanımlar (departmanlar için)
    CURSOR c_departments (p_location_id locations.location_id%TYPE) IS
        SELECT department_id, department_name
        FROM departments
        WHERE location_id = p_location_id;

    -- İç içe cursor için tanımlar (çalışanlar için)
    CURSOR c_employees (p_department_id departments.department_id%TYPE) IS
        SELECT employee_id, first_name, last_name
        FROM employees
        WHERE department_id = p_department_id;

BEGIN
    -- Outer cursor ile lokasyonları döngüye al
    FOR loc_rec IN c_locations LOOP
        DBMS_OUTPUT.PUT_LINE('--- ' || loc_rec.city || ' ---');

        -- Inner cursor ile lokasyondaki her bir departmanı döngüye al
        FOR dept_rec IN c_departments(loc_rec.location_id) LOOP
            DBMS_OUTPUT.PUT_LINE('Departman: ' || dept_rec.department_name);

            -- Çalışanlar için iç içe döngü (her bir departman için)
            FOR emp_rec IN c_employees(dept_rec.department_id) LOOP
                DBMS_OUTPUT.PUT_LINE('  ' || emp_rec.first_name || ' ' || emp_rec.last_name);
            END LOOP;

            DBMS_OUTPUT.NEW_LINE; -- Her departmanın altına bir boş satır ekleyelim
        END LOOP;

        DBMS_OUTPUT.NEW_LINE; -- Her lokasyonun altına bir boş satır ekleyelim
    END LOOP;
END;