set serveroutput on;
declare
    v_marks number := &marks;
    v_grade varchar(1);
begin
    if v_marks >= 90 then
        v_grade := 'A';
    elsif v_marks >= 80 then
        v_grade := 'B';
    else
        v_grade := 'C';
    end if;
    dbms_output.put_line(v_grade);
end;
/