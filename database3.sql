SELECT * FROM mahmod.database3;
-- worst year of activities
select `Accident Year`, sum(`All Costs`) as Total_cost from database3
group by `Accident Year`
limit 1;

-- were there any tank inginitions in 2012 and 2013? if so linst operator details and location
select `Pipeline Type`, `Liquid Ignition`, `Accident City`, `Accident Year`, `Operator ID`, `Operator Name` from database3 
where `Pipeline Type`= "TANK" and `liquid Ignition`="YES" and `accident year`in (2012, 2013);

-- which year had the most operational downtime
select `accident year`, count(`pipeline shutdown`) as no_of_pipeline_shutdown_per_year from database3
where `Pipeline Shutdown`= "yes"
group by `accident year`
order by no_of_pipeline_shutdown_per_year
desc limit 1;

-- which cause led to the most shutdowns
select `Cause Category`, count(`pipeline shutdown`) as no_of_pipeline_shutdown from database3
where `Pipeline Shutdown`= "yes"
group by `Cause Category`
order by no_of_pipeline_shutdown
desc limit 1;

-- how much did emergency response cost TX
select `Accident State`, sum(`Emergency Response Costs`) as sum_of_emergency_response_cost from database3
where `Accident State` = "TX";

-- which state was the most harmfull to the environment
select `Accident State`, sum(`Environmental Remediation Costs`) as sum_of_environmental_remediation_costs from database3
group by `accident state`
order by  sum_of_environmental_remediation_costs desc 
limit 1;

-- best cities to live in
select `Accident city`, sum(`Environmental Remediation Costs`) as sum_of_environmental_remediation_costs from database3
group by `accident city`
order by  sum_of_environmental_remediation_costs
asc limit 1;

-- total number of unrecovered barrels
select sum(`Net Loss (Barrels)`) as total_no_of_unrecovered_barrels from database3;

-- how much property damage was suffered
select sum(`Property Damage Costs`) as total_property_damage_costs from database3;

-- worst liquid types
select `Liquid Type`,count(`Liquid Explosion`) as no_of_liquid_explosions from database3
where `Liquid Explosion`= "yes"
group by `liquid type`
order by no_of_liquid_explosions desc
limit 1;

-- worst operators
select `Operator Name`, count(`Cause Category`) as no_of_incorrect_operators from database3
where `Cause Category` = "INCORRECT OPERATION"
group by `operator name`
order by no_of_incorrect_operators
desc limit 1;

-- best pipelines
select `Pipeline Type`, sum(`All Costs`) as sum_of_all_costs from database3
group by `Pipeline Type`
order by sum_of_all_costs asc
limit 50;

-- Note that where clause is used to filter values
