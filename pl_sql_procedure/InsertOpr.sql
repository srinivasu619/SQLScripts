set serveroutput on;
create or replace procedure "INSERTEMP"
(v_id in number,v_name in varchar2,v_sal in number)
is 
begin
    insert into emp1(id,emp_name,salary)values(v_id,v_name,v_sal);
    -- dbms_output.put_line("RECORD SUCCESSFULLY INSERTED");
end;
/
-- D:\sql\pl_sql_procedure\InsertOpr.sql