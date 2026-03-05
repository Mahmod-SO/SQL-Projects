SELECT * FROM mahmod.players;
-- find the name of the players than are above 35
select FirstName, LastName, Age from players
where Age > 35;

-- find the names of players that earn less than 200,000
select firstname, lastname, WeeklyWage from players
where WeeklyWage < 200000;
-- players that their contract is not ending in 2025
select * from players
where ContractEndYear <> 2025;

-- players that are 30
select * from players where age = 30;

-- find players whose position is to play forward & contract end year is 2023
select * from players where position = "Forward" and ContractEndYear = 2023;

-- find players that are either goalkeepers or eaarn above 200,000
select * from players where position = "Goalkeeper" or WeeklyWage > 200000;

-- find players that are not spanish and dutch
select * from players where not Nationality = "spanish" and not Nationality = "dutch";

-- find players that their contract year end is between 2023 and 2025
select * from players where ContractEndYear between 2023 and 2025;

-- find players that their nationality is spanish and dutch
select * from players where Nationality in ("spanish", "dutch");

-- find the first name of players that start with k
select * from players
where FirstName like "k%";

-- get the names, ages, and nationalitites of players that are gks
select FirstName, LastName, Nationality from players where Position = "Goalkeeper";

-- find all players that are retired
select * from players where Retired in ("yes");

-- list players whose first names start with m
select FirstName from players
where FirstName like "m%";


-- name and team of players older than 30
select firstname, lastname, team, age from players where age > 30;

-- name and weekly wages above 300,000
select firstname, lastname, weeklywage from players where weeklywage > 300000;

-- name and contract end of players whose contract ends in 2023
select firstname, lastname, contractendyear from players where ContractEndYear in ("2023");

-- name and ages of brazillian players
select firstname, lastname, nationality from players where nationality in ("Brazilian");

-- name and pos of players whose age is <= 30
select firstname, lastname, age from players where age <= 30;

-- name and team of players where weekly wage < 400k
select firstname, lastname, team, weeklywage from players where weeklywage < 400000;

-- name and nationality of players that play for liv and bayern
select firstname, lastname, nationality, team from players where team in ("Liverpool" , "Bayern Munich");
