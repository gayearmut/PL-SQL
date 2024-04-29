--for_loop_2

BEGIN
    -- Departmanları dolaşan döngü
    FOR dept IN (SELECT department_id, department_name FROM departments ORDER BY department_id) LOOP
        -- Departman adını yazdır
        DBMS_OUTPUT.PUT_LINE('Departman: ' || dept.department_name);
        
        -- Departmana ait çalışanları dolaşan iç döngü
        FOR emp IN (SELECT first_name FROM employees WHERE department_id = dept.department_id ORDER BY employee_id) LOOP
            -- Çalışan adını yazdır
            DBMS_OUTPUT.PUT_LINE('  Çalışan: ' || emp.first_name);
        END LOOP;
    END LOOP;
END;