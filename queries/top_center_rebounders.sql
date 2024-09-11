/*  players who play the position 'C' (center) with the highest average number of rebounds */

select 
	Player
	,POS 
	,AVG(TRB) 										as avg_trb
from 
	nba_stats_cleaned
where
	POS = 'C'
group by 1,2 
order by avg_trb desc 
limit 10;