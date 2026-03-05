SELECT * FROM mahmod.customer_profile_dataset;
SELECT * FROM mahmod.products_dataset;
SELECT * FROM mahmod.purchase_history_dataset;
-- list the customer name, product name and quantity of all customers that bought grain
select customer_profile_dataset.first_name, customer_profile_dataset.last_name, products_dataset.product_name, purchase_history_dataset.quantity, products_dataset.category
from products_dataset join purchase_history_dataset
on products_dataset.product_id = purchase_history_dataset.product_id
right join customer_profile_dataset
on customer_profile_dataset.customer_id = purchase_history_dataset.customer_id
where products_dataset.category = "Grains";

-- we realised that all our meat was tainted, please provide the necessary customer and order details so that we can retrieve all the products
select customer_profile_dataset.customer_id, customer_profile_dataset.first_name,
customer_profile_dataset.last_name, customer_profile_dataset.email, customer_profile_dataset.phone_number,
customer_profile_dataset.address, customer_profile_dataset.city, customer_profile_dataset.state,
products_dataset.category,
purchase_history_dataset.product_id
from purchase_history_dataset join products_dataset
on purchase_history_dataset.product_id = products_dataset.product_id
right join customer_profile_dataset
on customer_profile_dataset.customer_id = purchase_history_dataset.customer_id
where products_dataset.category = "Meats";

select concat(cpd.first_name, " ", cpd.last_name) as FullName , cpd.email, cpd.phone_number, cpd.address, 
cpd.city, cpd.state, pd.category
from purchase_history_dataset as phd 
join products_dataset as pd on phd.product_id = pd.product_id
join customer_profile_dataset as cpd on cpd.customer_id = phd.customer_id
where pd.category = "meats"
group by fullnAME, email, phone_number,address,city,state,category;

-- which year has the highest purchase from arizona
alter table purchase_history_dataset
add column year int;
update purchase_history_dataset
set year = year(purchase_date);

select purchase_history_dataset.year, sum(purchase_history_dataset.quantity) as sum_of_purchase,
customer_profile_dataset.state
from purchase_history_dataset join customer_profile_dataset
on purchase_history_dataset.customer_id = customer_profile_dataset.customer_id
where customer_profile_dataset.state = "AZ"
group by year
order by sum_of_purchase desc
limit 1;

-- list 5 most profitable states
select sum(purchase_history_dataset.total_amount) as revenue, customer_profile_dataset.state
from purchase_history_dataset join customer_profile_dataset
on purchase_history_dataset.customer_id = customer_profile_dataset.customer_id
group by state
order by revenue desc limit 5;

-- find the email and phone number of males that bought rice
select cpd.email, cpd.phone_number, cpd.gender, pd.product_name
from purchase_history_dataset as phd
join products_dataset as pd on phd.product_id = pd.product_id
join customer_profile_dataset as cpd on cpd.customer_id = phd.customer_id
where pd.product_name = "Rice" and cpd.gender = "male"
group by email, phone_number;



-- which year had the highest purchase from Arizona
select year(phd.purchase_date) as date, cpd.state, round(sum(phd.total_amount)) as TA
from purchase_history_dataset as phd join customer_profile_dataset as cpd on phd.customer_id =
cpd.customer_id where cpd.state = "AZ"
group by date
order by ta desc
limit 1;

-- list phone numbers of those that bought over 3 items at one go
select cpd.phone_number, phd.quantity
from customer_profile_dataset as cpd join purchase_history_dataset as phd
on cpd.customer_id = phd.customer_id
where quantity >3;

