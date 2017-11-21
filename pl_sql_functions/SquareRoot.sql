set serveroutput on;
create or replace function sqrt_num(v_num number)
return float
is v_sqrt_num float;
begin
    v_sqrt_num := sqrt(v_num);
    return (v_sqrt_num);
end;
/
-- to execute the function compile it and execute it from dual;