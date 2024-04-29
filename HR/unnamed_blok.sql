---içinde bulunduğumuz günün ismini yazan program (unnamed - anonymyous block)

SET SERVEROUTPUT ON;
DECLARE
	WGUN VARCHAR2 ( 50 );
BEGIN
		WGUN := TO_CHAR( SYSDATE, 'Day' );
DBMS_OUTPUT.PUT_LINE ( 'BUGÜN ' || WGUN );
END;


DECLARE
	WGUN VARCHAR2 ( 50 );
BEGIN
		WGUN := get_day_name(SYSDATE);
DBMS_OUTPUT.PUT_LINE ( 'BUGÜN ' || WGUN );
END;