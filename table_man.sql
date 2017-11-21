create table emp1 (id number,emp_name varchar(10),salary number);
insert into emp1(id,emp_name,salary)values(1,'Aman',50000);
insert into emp1(id,emp_name,salary)values(2,'Rahul',26000);
insert into emp1(id,emp_name,salary)values(3,'Ahana',59300);
set serveroutput on;
declare
    v_id number := &id;
    v_sal number;
begin
    select salary into v_sal from emp1 where id =v_id;
    if v_sal > 50000 then
        v_sal := v_sal + 2500;
    end if;
    dbms_output.put_line(v_sal);
end;
/