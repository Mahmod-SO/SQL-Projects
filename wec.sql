SELECT * FROM mahmod.`world economic classifications`;
-- developed conuntris that are advanced
select country_name, un_class_2014, imf_class_2023 from `world economic classifications`
where un_class_2014 = "Developed" and imf_class_2023 = "Advanced";

-- unclassified countries by both the un and imf
select country_name, un_class_2014, imf_class_2023 from `world economic classifications`
where un_class_2014 in ("N/A") and imf_class_2023 in ("N/A");

-- top 5 fueal exporting countries based on wealth rank between 50 and 100
select country_name, fuel_exp_country, wealth_rank from `world economic classifications`
where fuel_exp_country = "yes" and wealth_rank between 50 and 100
order by wealth_rank asc
limit 5;

-- top 5 fuel exp countries based on wealth rank between 5 and 30
select country_name, fuel_exp_country, wealth_rank from `world economic classifications`
where fuel_exp_country = "yes" and wealth_rank between 5 and 30
order by wealth_rank desc
limit 5;

-- how many countries start with the letter l
select count(country_name) as no_of_countries_starting_with_l from `world economic classifications`
where country_name like "l%";

-- which countries start with the letter n
select country_name as countries_starting_with_n from `world economic classifications`
where country_name like "n%";

select country_name, un_class_2014, imf_class_2023 from `world economic classifications`
where un_class_2014 = "N/A" and not imf_class_2023 = "N/A";