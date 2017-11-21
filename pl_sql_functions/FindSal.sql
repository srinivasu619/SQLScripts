-- D:\sql\pl_sql_functions\FindSal.sql
set serveroutput on;
create or replace function find_sal(var_id emp1.id%type)
return number
is v_sal emp1.salary%type;
begin
    select salary into v_sal from emp1 where id = var_id;
    return v_sal;
end;
/