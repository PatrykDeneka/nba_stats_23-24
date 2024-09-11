/* players with the highest average points per game in the 2023/24 season */

select 
	Player
	,AVG(PTS)									 	as avg_PTS -- including multi-team players
from 
	nba_stats_cleaned
group by 1
order by avg_PTS desc
limit 10;
