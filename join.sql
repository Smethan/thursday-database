select * from invoice i join invoice_line il on i.invoice_id=il.invoice_id where unit_price > 0.99;
select c.first_name, c.last_name, i.invoice_date, i.total from customer c join invoice i on c.customer_id=i.customer_id;
select c.first_name as customer_first_name, c.last_name as customer_last_name, e.first_name, e.last_name from employee e join customer c on e.employee_id = c.support_rep_id;
select * from album al join artist a on al.artist_id=a.artist_id;
select pl.track_id from playlist p join playlist_track pl on p.playlist_id=pl.playlist_id where p.name = 'Music';
select tr.name from track tr join playlist_track pl on tr.track_id = pl.track_id;
select tr.name, pl.name from ((playlist_track pt join track tr on tr.track_id=pt.track_id) join playlist pl on pl.playlist_id=pt.playlist_id);
select tr.name, al.title from ((track tr join genre g on tr.genre_id=g.genre_id) join album al on al.album_id=tr.album_id) where g.name = 'Alternative & Punk';