/* Players who average more points (PTS) than the average for their team */

select 
	Player
	,Tm
	,PTS 
from 
	nba_stats_cleaned nso 
where PTS > (select avg(pts) 				-- determine overall average points
			from nba_stats_cleaned nso2 
			where nso2.tm = nso.tm)
order by tm, pts desc;