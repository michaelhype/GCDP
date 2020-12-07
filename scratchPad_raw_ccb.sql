select * from dbo.individual where family_id is null;

select a.id, a.family_id, b.id, a.last_name, b.last_name from dbo.individual a inner join dbo.family b on a.family_id = b.id;

select distinct a.family_id from dbo.individual a where a.family_id not in (select distinct id from dbo.family);

select count(*) from dbo.family;

select * from dbo.campus;
select * from dbo.church;

select id, family_id, first_name, last_name  from dbo.individual;

select * from dbo.givingtransaction order by id;
select * from dbo.givingtransactionsplit order by givingtransactionid;

