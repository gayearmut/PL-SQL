CREATE 
	OR REPLACE FUNCTION bolum_adi ( p_bolumno IN NUMBER ) return VARCHAR2 IS wbolum_adi VARCHAR2 ( 30 );
BEGIN
	SELECT
		DEPARTMENT_NAME INTO wbolum_adi 
	FROM
		DEPARTMENTS 
	WHERE
		DEPARTMENT_ID = p_bolumno;
	return ( wbolum_adi );
	EXCEPTION 
		WHEN no_data_found THEN
	return ( p_bolumno || ' nolu bölüm bulunamadı' );
END;