set serveroutput on;
declare
    cursor emp_dup is select * from emp1 where salary <55000;
    v_name emp1%rowtype;
begin
    open emp_dup;
    loop
        fetch emp_dup into v_name;
        exit when emp_dup%NOTFOUND;
        dbms_output.put_line(v_name.emp_name);
    end loop;
    close emp_dup;
end;
/