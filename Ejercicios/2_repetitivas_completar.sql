-- EJERCICIO 1
/* 
 Autor: Raul
 Fecha: 25/02/2020
 Descripcion: Mostrar el valor de LN$I hasta que sea mayor que 2
*/
-- LOOP
Declare
    LN$I pls_integer := 0 ;
Begin
    Loop
        LN$I := LN$I + 1 ;
        dbms_output.put_line( to_char( LN$I) ) ;
        exit when LN$I > 2 ;
    End loop ;
End ;

-- EJERCICIO 2
/* 
 Autor: Raul
 Fecha: 25/02/2020
 Descripcion: Mostrar en pantalla el valor de LN$I mientras sea menor que 3
*/
-- WHILE
Declare
      LN$I pls_integer := 0 ;
Begin
    While LN$I < 3
      Loop
        LN$I := LN$I + 1 ;
        dbms_output.put_line( to_char( LN$I) ) ;
      End loop ;
End ;

-- EJERCICIO 3
/* 
 Autor: Raul
 Fecha: 25/02/2020
 Descripcion: Mostrar el valor de LN$I 3 veces
*/
--FOR
Declare
    LN$I BINARY_INTEGER := 0 ; 
Begin
    -- FOR de 3 a 1
    For i in reverse 1..3
      Loop
        dbms_output.put_line( to_char( i ) ) ;
      End loop ;
  End ;


-- EJERCICIO 4
/* 
 Autor: Raul
 Fecha: 25/02/2020
 Descripcion: Mostrar el valor de LN$I 3 veces
*/
-- FOR  de 1 a 3 
Declare
    LN$I pls_integer := 0 ; 
    -- FOR  de 1 a 3 
    For i in 1 .. 3
      Loop
        -- Sacar el valor de i
        DBMS_OUTPUT.PUT_LINE(to_char( i ));
      End loop ;
End ;