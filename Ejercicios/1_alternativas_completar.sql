-- EJERCICIO 1
/* 
 Autor: Raúl    
 Fecha: 20/02/2020
 Descripcion: Averiguar el valor de a y si es igual a 50 o 75
*/
-- IF

DECLARE
   a number(3) := 75;
   --b number(3) := 21;
BEGIN
     IF ( a = 50 ) THEN
        dbms_output.put_line('El valor exacto de a es: 10' );
     ELSIF ( a = 75 ) THEN
        dbms_output.put_line('El valor exacto de a es: 20' );
     ELSE
        dbms_output.put_line('Ninguno de los valores coincide');
    END IF;
    --- Sacar por pantalla el valor de la variable a
    dbms_output.put_line ('El valor exacto de a es: '|| a ); 
END;

-- EJERCICIO 2
/* 
 Autor: Raul
 Fecha: 20/02/2020
 Descripcion: xxxxx
*/
--CASE
--set SERVEROUTPUT ON;
Declare
    LN$Num pls_integer := 0 ;
    Begin
        Loop
          LN$Num := LN$Num + 1 ;
          CASE LN$Num
            WHEN 1 THEN dbms_output.put_line( '1' ) ;
            WHEN 2 THEN dbms_output.put_line( '2' ) ;
            WHEN 3 THEN dbms_output.put_line( '3' ) ;
           ELSE      
              --EXIT 'Evitar salir de estructuras con el EXIT';
              dbms_output.put_line('No es ni 1 ni 2 ni 3');
         END CASE ;
       End loop ;
   End ;
  
--Otra forma de escribirlo
Declare
     LN$Num pls_integer := 0 ;
Begin
      Loop
          LN$Num := LN$Num + 1 ;
          CASE 
            WHEN LN$Num=1 THEN dbms_output.put_line ( '1' ) ;
            WHEN LN$Num=2 THEN dbms_output.put_line ( '2' ) ;
            WHEN LN$Num=3 THEN dbms_output.put_line ( '3' ) ;
           ELSE      
              EXIT ;
         End case;
       End loop ;
End ;

-- EJERCICIO 3
/* 
 Autor: xxxx
 Fecha: xxxxx
 Descripcion: xxxxx
*/
-- CASE MULTIPLES
Declare
     LN$Num pls_integer := 0 ;
Begin
      Loop
          LN$Num := LN$Num + 1 ;
          CASE
            WHEN LN$Num between (1,3)
                 THEN dbms_output.put_line( To_char( LN$Num ) || ' -> 1-3' ) ;
            WHEN LN$Num < 5 
                 THEN dbms_output.put_line( To_char( LN$Num ) || ' < 5' ) ;
            ELSE 
                 dbms_output.put_line( To_char( LN$Num ) || ' >= 5' ) ;
          END CASE ;
         -- Condición de salida LN$Num = 5
         EXIT WHEN LN$Num = 5;
       End loop ;
End ;
