/* Identify which players in the point guard position average more than 7 assists per game and also more than 1 steal per game.
Create a ranking based on the number of assists. */

-- CTE to find average assists more than 7 and steal more than 1
with
ast_stl_per_player as 
	(
	select 
		Player
		,POS
		,Round(AVG(AST), 2) 													as avg_ast   -- aggregations to include multi-team players
		,ROUND(AVG(STL), 2)														as avg_stl
	from nba_stats_cleaned 
	where 
		POS = 'PG'
	group by 1
	having 	avg_ast > 7 
	and 	avg_stl > 1
)
select 
	Player
	,POS
	,avg_ast
	,avg_stl
	,RANK() over(partition by POS order by avg_ast DESC) 						as rn -- make a ranking according to the number of assists
from ast_stl_per_player
order by 3 desc, 4 desc;