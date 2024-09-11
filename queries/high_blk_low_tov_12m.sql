/* Display players who are in the top 10% for average number of blocks 
and in the bottom 10% for average number of turnovers, with an average of at least 12 minutes per game. */

-- CTE to find needed stats
with 
stats_per_player as 
	(
	select 
		Player
		,AVG(BLK) 									as avg_blk
		,AVG(TOV) 									as avg_tov
	from 
		nba_stats_cleaned nso 
	where MP > 12
	group by 1
	order by 2 desc, 3 desc
	),
ranked_player as 
	(
	select 
		Player
		,avg_blk
		,avg_tov
		,PERCENT_RANK() over(order by avg_blk DESC)					as rn_blk  -- to define top 10% 
		,PERCENT_RANK() over(order by avg_tov ASC) 					as rn_tov  -- to define bottom 10%
	from stats_per_player
	)
select 
	Player
	,avg_blk
	,avg_tov
from 
	ranked_player
where rn_blk <= 0.10 and rn_tov <= 0.10
order by avg_blk desc, avg_tov;