select 
	*
from dbo.engagement_data;
--- Queryto clean and normalize the engagement_data Table
select 
	EngagementID,
	ContentID,
	Upper(Replace(ContentType,'Socialmedia','Social Media')) as ContentType,
	Likes,
	format(EngagementDate,'dd.MM.yyyy') as EngagementDate, 
	CampaignID,
	ProductID,
	left(ViewsClicksCombined,CHARINDEX('-',ViewsClicksCombined)-1) as Views,
	right(ViewsClicksCombined,CHARINDEX('-',ViewsClicksCombined)+1) as Clicks
from dbo.engagement_data
where ContentType != 'NEWSLETTER'; --- not relevent for our analysis