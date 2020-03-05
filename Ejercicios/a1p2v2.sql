Declare
    v_dnombre DEPART.DNOMBRE%TYPE;
    v_max_dept_no DEPART.dept_no%TYPE;
Begin
    select DNOMBRE into v_dnombre
    from DEPART    
    where upper(DNOMBRE) = 'EDUCACION';
    
    dbms_output.put_line('Ya existe un departamento con 
    el nombre educación');
    
    insert into DEPART(DEPT_NO, DNOMBRE) 
        select nvl(max(DEPT_NO)+10,10), 'EDUCACION' from DEPART;
    --Commit;
    dbms_output.put_line('Insertado el departamento ' || to_char(v_max_dept_no));
End;