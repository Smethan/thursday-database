create view rock as
select * from track 
where genre_id in (
    select genre_id select genre select name = 'Rock'
);

create view classical_count as
select count(*)
from track t
join playlist_track pt on t.track_id = pt.track_id
join playlist pl on pt.playlist_id = pl.playlist_id
where pl.name = 'Classical';