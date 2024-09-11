/* Display field goal percentage (FG%) for players, categorized based on whether their two-point field goal percentage (2P%) is greater or less than 50%. */

-- CTE to define needed stats 
with 
avg_fg_2p as 
	(
	select 
		Player
		,AVG(`FG%`)									as avg_fg
		,AVG(`2P%`)									as avg_2p
	from nba_stats_cleaned
	group by 1
	)
select 
	Player
	,CONCAT(ROUND(IFNULL(avg_fg, 0) * 100, 2), '%')	as fg		-- excluding null 
	,case
		when avg_2p > 0.5 then 'Above 50%'
		else 'Below or equal 50%' 
	end												as two_point_efficiency -- division into two groups 
from avg_fg_2p
order by fg desc;