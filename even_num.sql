set serveroutput on;
begin
    for i in 1..20 loop
        if mod(i,2) = 0 then
            dbms_output.put_line(i||' is an even number');
        end if;
    end loop;
end;
/