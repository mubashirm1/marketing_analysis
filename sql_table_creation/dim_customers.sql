select * from dbo.customers;
select * from dbo.geography;

select 
	a.CustomerID,
	a.CustomerName,
	a.Email,
	a.Gender,
	a.Age,
	b.Country,
	b.City
from dbo.customers a
--left join
--right join
--full join
inner join
dbo.geography b
on a.GeographyID = b.GeographyID;
