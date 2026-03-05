select * from players;
-- AGGREGATE FUNCTIONS
-- Find the no of players we have
select count(PlayerID) from players;
select count(playerid) as No_of_players from players;
-- find the number of players that play forward
select count(position) as forwards from players
where position = "forward";
-- find the total weekly wage of retired players
select sum(weeklywage) as sum_of_weekly_wages_of_retired_players from players 
where retired = "yes";
-- average age of players
select round(avg(age),3) as average_age from players; -- the "3" represents the number of decimal places to round the value up to
-- min age of forwards
select min(age) from players where position = "forward";
-- max age of players
select max(age) from players;

-- STRINNG FUNCTIONS
select concat( firstname," ",lastname) as full_name from players;
-- lower
select lower(firstname) from players;
-- upper
select upper(lastname) from players;
-- right trim
select rtrim(firstname) from players;
-- left trim
select ltrim(lastname) from players;

-- GROUP BY CLAUSE
select position from players
group by position;

-- how many players play in different positions
select position, count(playerid) as players from players
group by position;
-- find the total weekly wages of players from diff nationalities
select sum(weeklywage) as sum_of_weekly_wage, Nationality from players
group by Nationality;

-- ORDER BY CLAUSE
-- dinf the nationaluty with the highest weekly wage
select sum(weeklywage) as sum_of_weekly_wage, Nationality from players
group by Nationality
order by sum_of_weekly_wage desc
limit 1; -- this limit clause bring out the top n (where n is the number) for your query

