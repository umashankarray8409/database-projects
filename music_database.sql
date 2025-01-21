select * from track


Q1 show from travel grouping with greatest and least?
Select greatest(source,destination), least(source, destination), distance
from track
group by greatest(source, destination), least(source, destination)

who is the senior most employee based on job titile?

Select * from employee 
order by levels desc
limit 1;

which country has the most Invoices?

select count(*), billing_country
from invoice
group by billing_country
order by count(*) 
limit 1

what are top 3 values of total invoices?

select * 
from invoice 
order by total desc
limit 3

which country has the best customers.
We would like to	throw a promotional music festival in the city we made the most money. 
Write a query  that returns that one has the highest sum of invoice totals. 
return both the city name & sum of all invoice totals

Select sum(total) as invoice_total, billing_city
from invoice
group by billing_city
order by invoice_total desc

write a query to return the first_name, last_name, email & genre of all rock music listeners.
Return your list ordered alphabetically by email starting with A

SELECT DISTINCT email, first_name, last_name
FROM customer
JOIN invoice ON customer.customer_id = invoice.customer_id
JOIN invoice_line ON invoice.invoice_id = invoice_line.invoice_id
WHERE track_id IN(
	SELECT track_id FROM track
	JOIN genre ON track.genre_id = genre.genre_id
	WHERE genre.name LIKE 'Rock'
)
ORDER BY email;

write a query to return the email, first name, last name & Genre of all rock music listener. 
Return your list ordered alphabetically by email staring with a.
select first_name, last_name, genre 
from customer
where email like 'a%' group by email order by email desc



