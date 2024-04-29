-- pl- sql içerisinde SQL komutlarının kuallınımı (static, sq, dml,tcl)

--SET serveroutput ON;
DECLARE
	emp_id EMPLOYEES2.EMPLOYEE_ID % TYPE;
emp_first_name EMPLOYEES2.FIRST_NAME % TYPE := 'Gayea';
emp_last_name EMPLOYEES2.LAST_NAME % TYPE   := 'Armut';
emp_job_id EMPLOYEES2.JOB_ID % TYPE       := 'mühendis';
BEGIN
	SELECT
		nvl( max( employee_id ), 0 ) + 1 INTO emp_id
	FROM
		EMPLOYEES2;
	INSERT INTO employees2 ( employee_id, FIRST_NAME, LAST_NAME, JOB_ID, EMAIL, HIRE_DATE)
	VALUES
		(emp_id, emp_first_name, emp_last_name, emp_job_id, 'abc@xyz', SYSDATE);
		
	UPDATE EMPLOYEES2 
	SET JOB_ID = 'işsiz' 
	WHERE
		EMPLOYEE_ID = emp_id;
	
	
	/*DELETE EMPLOYEES2 
    WHERE EMPLOYEE_ID = emp_id 
    RETURNING EMPLOYEE_ID, FIRST_NAME, LAST_NAME, JOB_ID INTO emp_id, emp_first_name, emp_last_name, emp_job_id;
		*/
		
--rollback;
	commit;
dbms_output.put_line ( emp_id || ' ' || emp_first_name || ' ' || emp_job_id );
END;