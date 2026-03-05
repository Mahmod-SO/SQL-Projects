SELECT * FROM mahmod.world_suicide_rates;
-- How has the global suicide rate changed over the years
select year, round(avg(`suicide rate`), 2) as Avg_world_suicide_rate from world_suicide_rates
group by Year;

-- in which year was the highest global suicide rate recorded?
select year, round(avg(`suicide rate`), 2) as Average_suicide_rate from world_suicide_rates
group by Year
order by average_suicide_rate desc limit 1;

-- which year had the most countries with increasing suicide rates compared to the previous year
select t1.year, count(*) as countries_with_increase
from world_suicide_rates t1 join world_suicide_rates t2
on t1.`Country Name` = t2.`Country Name`
and t1.`Year` = t2.year + 1
where t1.`suicide rate` > t2.`suicide rate`
group by t1.`year`
order by countries_with_increase desc limit 1;

-- what is the average global suicide rate accross all years
select year, round(avg(`suicide rate`), 2) as overall_avg_suicide_rate from world_suicide_rates
group by Year;

-- how much has the global suicide rate varied accross years?
select year, round(stddev(`suicide rate`), 2) as std_dev_suicide_rate from world_suicide_rates
group by Year order by Year;

-- which countries have the highest average suicide rates overall
select round(avg(`suicide rate`), 2) as Avg_suicide_rate, `Country Name` from world_suicide_rates
group by `Country Name`
order by avg_suicide_rate desc limit 10;

-- which countries have the lowes average suicide rates overall
select round(avg(`suicide rate`), 2) as Avg_suicide_rate, `Country Name` from world_suicide_rates
group by `Country Name`
order by avg_suicide_rate asc limit 10;

-- for each country, which year did it record its highest suicide rate?
select `Country Name`, max(`Suicide Rate`) as highest_suicide_rate, Year from world_suicide_rates
group by `Year`, `Country Name`; 

