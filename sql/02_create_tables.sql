
-- NBA Moneyball Project
-- Week 6: Create Relational Database Tables

-- 1. Teams Table
CREATE TABLE teams (
    team_id SERIAL PRIMARY KEY,
    team_name VARCHAR(100) NOT NULL,
    abbreviation VARCHAR(5) UNIQUE NOT NULL,
    conference VARCHAR(10)
);

-- 2. Seasons Table
CREATE TABLE seasons (
    season_id SERIAL PRIMARY KEY,
    season_name VARCHAR(20) UNIQUE NOT NULL,
    salary_cap DECIMAL(12,2) NOT NULL
);

-- 3. Players Table
CREATE TABLE players (
    player_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    position VARCHAR(10),
    height_inches INTEGER,
    birth_date DATE
);

-- 4. Player Salaries Table
CREATE TABLE player_salaries (
    salary_id SERIAL PRIMARY KEY,
    player_id INTEGER NOT NULL REFERENCES players(player_id),
    team_id INTEGER NOT NULL REFERENCES teams(team_id),
    season_id INTEGER NOT NULL REFERENCES seasons(season_id),
    salary DECIMAL(12,2) NOT NULL CHECK (salary >= 0),

    UNIQUE (player_id, team_id, season_id)
);

-- 5. Player Statistics Table
CREATE TABLE player_stats (
    stat_id SERIAL PRIMARY KEY,
    player_id INTEGER NOT NULL REFERENCES players(player_id),
    team_id INTEGER NOT NULL REFERENCES teams(team_id),
    season_id INTEGER NOT NULL REFERENCES seasons(season_id),
    games_played INTEGER DEFAULT 0 CHECK (games_played >= 0),
    points_per_game DECIMAL(5,2),
    rebounds_per_game DECIMAL(5,2),
    assists_per_game DECIMAL(5,2),
    steals_per_game DECIMAL(5,2),
    blocks_per_game DECIMAL(5,2),

    UNIQUE (player_id, team_id, season_id)
);

-- 6. Player Valuations Table
CREATE TABLE player_valuations (
    valuation_id SERIAL PRIMARY KEY,
    player_id INTEGER NOT NULL REFERENCES players(player_id),
    season_id INTEGER NOT NULL REFERENCES seasons(season_id),
    estimated_value DECIMAL(12,2),
    value_per_dollar DECIMAL(10,4),
    valuation_date DATE DEFAULT CURRENT_DATE,

    UNIQUE (player_id, season_id)
);
