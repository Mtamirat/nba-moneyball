
# NBA Moneyball – Database Design

## Database Overview

The NBA Moneyball database is designed to organize NBA player information, team information, season statistics, salaries, and player valuation metrics.

The goal is to evaluate player performance relative to salary and identify players who provide strong value for their cost.

## Database Entities

1. Players – Stores individual player information.
2. Teams – Stores NBA team information.
3. Seasons – Stores NBA season and salary cap information.
4. Player Salaries – Stores player salary records.
5. Player Stats – Stores individual player performance statistics.
6. Player Valuations – Stores calculated player valuation results.

## Primary Keys

Each table uses a unique primary key to identify individual records.

## Foreign Keys

- Player Salaries references Players, Teams, and Seasons.
- Player Stats references Players, Teams, and Seasons.
- Player Valuations references Players and Seasons.

## Relationships

- One player can have multiple salary records across seasons.
- One player can have multiple statistical records across seasons.
- One team can have multiple players.
- One season can have multiple salary and statistical records.
- One player can have one valuation record per season.

## Database Design Goals

- Reduce duplicate data.
- Maintain data integrity.
- Establish relationships using primary and foreign keys.
- Support historical player and salary comparisons.
- Prepare the database for player valuation and roster analysis.
