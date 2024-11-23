
select 
	a.ReviewID,
	a.CustomerID,
	a.ProductID,
	a.ReviewDate,
	a.Rating,
	replace(a.ReviewText,'  ',' ') as ReviewText
from dbo.customer_reviews a;