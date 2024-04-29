--basic loop 

DECLARE
    sayac binary_integer; -- Sayaç başlangıç değeri
    
BEGIN
    LOOP
				sayac := nvl(sayac,0) +1;
				
				if mod(sayac,2) =0 THEN
					continue;
				end if;
				--continue when mod(sayac,2) =0;
				
				
        -- Sayaç değerini ekrana yazdır
        DBMS_OUTPUT.PUT_LINE('Sayac: ' || sayac);
        
        -- Sayaç 5 olduğunda döngüden çık
        EXIT WHEN sayac = 5;
				/*if sayac =5 
				THEN exit;
				end if;
				*/
        
    END LOOP;
END;