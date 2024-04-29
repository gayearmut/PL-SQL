--pls_integer, binary_integer,NUMBER
-- pls_integer, binary_integer overlow (aşırı yüklenme)
DECLARE
	p1 BINARY_INTEGER := 2147483647;
p2 PLS_INTEGER := 1;
n NUMBER;
BEGIN
		n := p1 + p2;
	DBMS_OUTPUT.PUT_LINE ( n );
	DBMS_OUTPUT.PUT_LINE ( TO_CHAR( n, '999,999,999,999.99' ) );
	
END;
--n := p1 + p2; burada doğrudan toplanıp atama  yapılmaz
-- önce toplanır ve değişkenlerden hangisi uygunsa toplam değer o değişkene atanıp daha sonra sonuç değişkenine atama yapılır.