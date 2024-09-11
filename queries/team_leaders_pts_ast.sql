/* Who averages the most points and who has the most assists in each team? */

-- CTE to rank players by points in each team
with
ranked_pts as 
	(
	select 
		Player
		,Tm
		,PTS
		,ROW_NUMBER() OVER(partition by tm order by PTS desc) as rn_pts
	from nba_stats_cleaned
	),
-- CTE to rank players by assists in each team
ranked_ast as 
	(
	select 
		Player
		,Tm
		,AST
		,ROW_NUMBER() OVER(partition by tm order by AST desc) as rn_ast
	from nba_stats_cleaned
	)
select 
	Player
	,Tm
	,PTS 
	,'PTS Leader' as category
from 
	ranked_pts
where rn_pts = 1
union all 
select 
	Player
	,Tm
	,AST
	,'AST Leader' as category
from 
	ranked_ast
where rn_ast = 1
order by Tm, category;