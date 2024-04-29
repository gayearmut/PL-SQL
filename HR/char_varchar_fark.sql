DECLARE wadi CHAR ( 15 );
wsoyadi VARCHAR2 ( 15 );
BEGIN
		wadi := 'mehmet';
wsoyadi := 'celebi';
dbms_output.put_line ('*'|| wadi || '*');
dbms_output.put_line ('*'|| wsoyadi||'*' );

END;