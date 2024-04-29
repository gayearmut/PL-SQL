---EXCEPTION block
SELECT
	* 
FROM
	DEPARTMENTS;
DECLARE
	wadi VARCHAR2 ( 30 );
BEGIN
		wadi := bolum_adi ( 2 );
dbms_output.put_line ( wadi );
END;