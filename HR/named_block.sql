---içinde bulunduğumuz günün ismini yazan program (named block)
-- dışarıdan date tipinde bir parametre alan ve return değeri yie string olan bir değer döndüren fonksiyon oluşturacak
SET serveroutput ON;

CREATE 
	OR REPLACE FUNCTION get_day_name ( p_tarih DATE ) return VARCHAR2 IS BEGIN
	return ( to_char( p_tarih, 'day' ) );
END;

SELECT get_day_name(SYSDATE) FROM DUAL;