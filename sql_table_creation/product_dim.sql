select
	ProductID,
	ProductName,
	--Category, --redutent feature
	Price,
	case
		when price<50 then 'Low'
		when price between 50 and 200 then 'Medium'
		else 'High'
	end as price_category
from dbo.products
order by Price desc;