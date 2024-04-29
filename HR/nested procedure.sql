-- nested procedure
DECLARE
	PROCEDURE show_name IS 
	wname EMPLOYEES.LAST_NAME%TYPE;
	
	BEGIN
		SELECT LAST_NAME INTO wname FROM EMPLOYEES WHERE
		EMPLOYEE_ID =101;
		   DBMS_OUTPUT.PUT_LINE('İsim: ' || wname);
	END;
	
BEGIN
show_name;
	END;