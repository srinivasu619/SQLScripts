set serveroutput on;
declare
    v_rad float := &rad;
    v_area float;
begin
    v_area := 3.14*v_rad*v_rad;
    dbms_output.put_line('AREA : '||v_area);
end;
/