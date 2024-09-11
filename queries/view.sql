-- creating a view to exclude combined stats for multi-team players 
create view nba_stats_cleaned as 
select
	*
from
	nba_stats
where
	tm != 'Tot';
