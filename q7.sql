--Q7 lets invite the artist who have writeen the most rock in music in our dataset.
-- write aquery that returns the artist name and total track count of the top 10 rock bands?
select artist.artist_id, artist.name, count(artist.artist_id) as number_of_songs
from track
join album on album.album_id = track.album_id
join artist on artist.artist_id = album.artist_id
join genre on genre.genre_id = track.genre_id
where genre.name like 'Rock'
group by artist.artist_id
order by number_of_songs desc
limit 10;

















