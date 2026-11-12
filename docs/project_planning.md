# NBA Moneyball – Project Planning

## 1. Project Overview

The NBA Moneyball Player Valuation & Roster Optimization Engine is a relational database project designed to evaluate NBA players based on their individual performance compared to their salaries.

The purpose of this project is to help an NBA front office make better decisions when building a competitive roster under a limited salary cap. The database will organize player statistics, salary information, team information, and player valuation metrics to identify players who provide the most value relative to their cost.

## 2. Problem Statement

NBA teams operate under salary cap restrictions, which means front offices must carefully manage how much money they spend on players. A player with a high salary does not necessarily provide the best performance, while some lower-paid players may produce significant value.

Without an organized database to compare individual player performance against salary costs, identifying undervalued players and making efficient roster decisions can become difficult.

This project aims to address that problem by creating a relational database that connects NBA player statistics with salary information and provides a foundation for evaluating player value.

## 3. Project Objectives

The main objectives of this project are:

- Build a relational database to store NBA player information.
- Track player salaries across different NBA seasons.
- Store individual player performance statistics.
- Compare player production against salary costs.
- Identify undervalued and cost-efficient players.
- Develop player valuation metrics based on statistical performance.
- Support roster planning while considering NBA salary cap limitations.
- Use SQL queries to analyze and compare player performance and value.

## 4. Data Requirements

The database will initially require the following information:

### Player Information
- Player ID
- First name
- Last name
- Position
- Height
- Date of birth

### Team Information
- Team ID
- Team name
- Team abbreviation
- Conference

### Season Information
- Season ID
- Season name
- Salary cap

### Player Salary Information
- Salary ID
- Player ID
- Team ID
- Season ID
- Annual salary

### Player Statistics
- Player ID
- Team ID
- Season ID
- Games played
- Points per game
- Rebounds per game
- Assists per game
- Steals per game
- Blocks per game

### Player Valuation
- Valuation ID
- Player ID
- Season ID
- Estimated player value
- Value per dollar
- Valuation date

## 5. Planned Technologies

- PostgreSQL: Relational database management system.
- SQL: Database creation, management, and analysis.
- Visual Studio Code: Development environment.
- Git: Version control.
- GitHub: Project hosting and weekly progress tracking.
- Python (future development): Data cleaning and statistical analysis.

## 6. Expected Project Outcome

The expected outcome is a functioning relational database that organizes NBA player performance and salary information. The database will support SQL queries that compare player production against salary costs, identify potentially undervalued players, and help evaluate roster decisions under a salary cap.

## 7. Project Development Timeline

| Week | Planned Work |
|---|---|
| Week 5 | Project planning, research, GitHub setup, and requirements |
| Week 6 | Database entities, relational schema, and initial SQL tables |
| Week 7 | Entity Relationship Diagram and schema refinement |
| Week 8 | Database implementation, constraints, and testing |
| Week 9 | NBA player and salary data collection |
| Week 10 | Data cleaning, importing, and SQL analysis |
| Week 11 | Player valuation queries, roster analysis, and final testing |