/* VISUALIZAR DATOS */
-- Para activar buffer de salida, SÓLO hay que hacerlo una vez al comienzo de la sesión
-- NO TIENE QUE FORMAR PARTE DEL CODIGO DEL BLOQUE
set serveroutput on

-- EJERCICIO 1
/* 
 Autor: Raúl
 Fecha: 20/02/2020
 Descripcion:
 mostar hola mundo en sql developer
*/
begin
  dbms_output.put_line('HOLA MUNDO');
end;

-- EJERCICIO 2
/* 
 Autor: Raúl
 Fecha: 20/02/2020
 Descripcion:
 DECLARAMOS 2 VARIABLES Y MOSTRAMOS EN PANATALLA EL VALOR DE CADA UNA (TEXTO)
*/
DECLARE
  MENSAJE1 VARCHAR2(4):='HOLA';
  MENSAJE2 VARCHAR2(8):='MUNDO';
BEGIN
  DBMS_OUTPUT.PUT_LINE(MENSAJE1 || MENSAJE2);
END;

-- EJERCICIO 3
/* 
 Autor: Raúl
 Fecha: 20/02/2020
 Descripcion:
  sacar por pantalla la fecha del sistema en distintos formatos, así como el momentos de tiempo
*/

BEGIN
  dbms_output.put_line(to_char(sysdate, 'MM/YY') );
  dbms_output.put_line(to_char(sysdate,'day,dd "de" Month "de" YYYY') );
  dbms_output.put_line(to_char(sysdate) );
  dbms_output.put_line(to_char(systimestamp) );
END;

-- EJERCICIO 4
/* 
 Autor: Raúl
 Fecha: 20/02/2020
 Descripcion:
 calcular un numero aleatorio y sacarlo por pantalla
*/

DECLARE
    --v_rownum NUMBER;
    --v_numeroRandom NUMBER;
BEGIN
  --select rownum, trunc(dbms_random.value(1,99999)) into v_rownum, v_numeroRandom from dual;
  dbms_output.put_line(to_char(trunc(dbms_random.value(1,99999))) );
END;


