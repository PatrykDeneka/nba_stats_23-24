/* Calculate how many players from each team have a two-point field goal percentage above 50% and a three-point field goal percentage above 40%. 
 Display the team and the number of such players */

select 
	Tm
	,COUNT(Player) 								as nr_of_players
from 
	nba_stats_cleaned 
where 
	`2P%` > 0.50 and `3P%` > 0.40
group by 1
order by nr_of_players desc;