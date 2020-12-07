create or replace procedure portfolio.testprocedure()
as $$
begin
select * from portfolio.accounts;
select * from portfolio.assets;
end;
$$ LANGUAGE plpgsql;

   
