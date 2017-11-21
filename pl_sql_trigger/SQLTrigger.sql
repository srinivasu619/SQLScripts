create or replace Trigger dup
before insert or update or delete on emp1
for each row
begin
    if inserting then
        insert into dup_emp1(id,emp_name,salary) values(:new.id,:new.emp_name,:new.salary);
    elsif updating then
        insert into dup_emp1(id,emp_name,salary) values(:new.id,:new.emp_name,:new.salary);
    elsif deleting then
        insert into dup_emp1(id,emp_name,salary) values(:old.id,:old.emp_name,:old.salary);
    end if;
end;
/

-- insert into emp1(id,emp_name,salary)values(5,'Gastro',79000);
-- insert into emp1(id,emp_name,salary)values(2,'Rahul',26000);
-- insert into emp1(id,emp_name,salary)values(3,'Ahana',59300);