# NBA Stats Analysis
This project demonstrates my SQL skills using the NBA player statistics dataset from the 2023/24 season. 
The aim is to showcase various SQL queries to analyze player performance and team statistics effectively.
## Project Overview
The dataset provides detailed player metrics including:

- **Rk** - Ranking
- **Player** - Player Name
- **Pos** - Position
- **Age** - Age
- **Tm** - Team
- **G** - Games Played
- **GS** - Games Started
- **MP** - Minutes Played
- **FG** - Field Goals Made
- **FGA** - Field Goals Attempted
- **FG%** - Field Goal Percentage
- **3P** - Three-Point Field Goals Made
- **3PA** - Three-Point Field Goals Attempted
- **3P%** - Three-Point Field Goal Percentage
- **2P** - Two-Point Field Goals Made
- **2PA** - Two-Point Field Goals Attempted
- **2P%** - Two-Point Field Goal Percentage
- **eFG%** - Effective Field Goal Percentage
- **FT** - Free Throws Made
- **FTA** - Free Throws Attempted
- **FT%** - Free Throw Percentage
- **ORB** - Offensive Rebounds
- **DRB** - Defensive Rebounds
- **TRB** - Total Rebounds
- **AST** - Assists
- **STL** - Steals
- **BLK** - Blocks
- **TOV** - Turnovers
- **PF** - Personal Fouls
- **PTS** - Points


## Key Dataset Features
**Average Metrics:** All values in the dataset represent averages per game over the entire season, not cumulative totals across all games.

**Combined Stats for Multi-Team Players:** For players who have played for more than one team during the season, there is an entry where Tm = 'TOT'. 
This row aggregates their statistics across all teams, providing an overall performance view.

**Percentage Columns:** All columns with percentages in their names, such as 2P%, 3P%, and FG%, are expressed as decimal values (e.g., 0.52 for 52%, 0.31 for 31%).

## SQL Queries
The project includes the following SQL queries to perform various analyses:
- Players with the Highest Average Points per Game
- Top Scorer and Top Assister in Each Team
- Players Averaging More Points than Their Team Average
- Centers with the Highest Average Rebounds
- Top 10% for Blocks and Bottom 10% for Turnovers with Minimum Minutes Played
- Field Goal Percentage Categorized by Two-Point Field Goal Percentage
- Number of Players with High Two-Point and Three-Point Percentages by Team
- Point Guards Averaging High Assists and Steals
- Players with High Turnovers and Minimum Minutes Played

## How to Use
1. Download the repository to your machine.
2. Import the database file `nba-player-data.csv` into the chosen database.
3. Open the SQL Files `.sql` and check the output of the queries to analyze results.
   
## Data Source
The dataset used for this analysis is sourced from Kaggle. You can find the dataset [here](https://www.kaggle.com/datasets/orkunaktas/nba-players-stats-2324/data).
