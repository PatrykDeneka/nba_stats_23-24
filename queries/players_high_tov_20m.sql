/*players who average at least 20 minutes per game and have an average number of turnovers higher than the overall average for all players*/

-- CTE to find the overall average turnovers for all players
with
total_avg_tov as 
	(
	select 
		avg(TOV) 									as avg_tov_total
	from nba_stats_cleaned
	), 
-- CTE to find players with at least 20 minutes per game and their average turnovers
avg_tov_player as 
	(
	select 
		Player
		,Round(AVG(TOV), 2) 								as tov_per_player -- to include multi-team players
	from nba_stats_cleaned
	where MP > 20
	group by 1
	)
select 
	Player
	,tov_per_player
	,avg_tov_total
from 
	avg_tov_player
cross join 
	total_avg_tov on tov_per_player > avg_tov_total
order by tov_per_player DESC;