Q.List all the customers in the music store
Select * from customer

Q.Find all albums available in the store.
select * from album

Q.Show all songs (tracks) and their durations.
select name,milliseconds from track 

Q.Get a list of all artists in the store.
select name,artist_id from artist

Q.Find all tracks that are longer than 5 minutes.
select * from track where milliseconds>3000

Q.List the top 10 most expensive tracks
select * from track order by unit_price desc
limit 10;

Q. Get a list of all tracks with their album names.
select track.name, track.album_id from track inner join album on track.album_id=album.album_id

Q.Find all albums by a specific artist (e.g., 'The Beatles').
select art.name from album as alb inner join artist as art on alb.artist_id = art.artist_id 
where art.name = 'The Beatles'

Q.Show all customers and their company history
SELECT concat(cst.first_name,cst.last_name), inv.total, inv.invoice_id FROM customer as cst 
JOIN invoice as inv ON cst.customer_id = inv.customer_id;

Q.Find the total number of tracks in the store.
Select count(*) as total from track 

Q.Find the most popular genre based on the number of tracks.
SELECT gr.name, COUNT(tr.track_id) AS track_count FROM genre
JOIN track ON gr.genre_id = tr.track_id
GROUP BY gr.name ORDER BY track_count DESC
LIMIT 1;

Q.Find the total sales revenue from all invoices.
select sum(total) as total_sale from invoice

Q.Find the artist with the most albums.
select art.name, count(al.album_id) as most_album 
from artist as art join album as al 
on art.artist_id = al.artist_id
group by art.name
order by most_album desc
limit 1

Q: Find the top 5 highest spending customers.
select concat(cus.first_name,cus.last_name),total
from customer as cus join invoice as inv
on cus.customer_id =inv.customer_id
order by total desc
limit 5

















