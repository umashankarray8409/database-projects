What is the total number of rows in each of the 3 tables in the database?
Select count(*) from customers
Select count(*) from transactions
Select count(*) from prod_cat_info

What is the total number of transactions that have a return?
Select * from transactions where rate>0

Which channel is most frequently used for transactions?
select count(transaction_id) as total,transaction_id from transactions
group by transaction_id
order by total desc
limit 1;

What is the count of Male and Female customers in the database?
Select count(*),gender from customers 
group by gender

From which city do we have the maximum number of customers and how many?
Select count(*),city_code from customers
group by city_code
order by count(*) desc
limit 1;

How many sub-categories are there under the Books category?
Select count(prod_sub_cat_code),prod_cat_code
from prod_cat_info
group by prod_cat_code
order by prod_cat_code
asc;

What is the maximum quantity of products ever ordered?
Select count(prod_sub_cat_code) as ct,prod_cat_code
from prod_cat_info
group by prod_cat_code
order by ct desc
limit 1;

What is the net total revenue generated in categories Electronics and Books?
Select total_amt from transactions as t inner join prod_cat_info