select title, duration 
from  tracks
where duration = (select max(duration) from tracks); 

select title, duration
from tracks
where duration >= 210;

select title, release_year
from compilations
where release_year between 2018 and 2020;

select name
from artists
where name not like '% %';

select title
from tracks
where title ilike 'my %' or title ilike '% my' or title ilike '% my %' or title ilike 'my';

---------------------

select genres.name, count(artist_genres.artist_id)
from artist_genres
join genres on artist_genres.genre_id = genres.id
group by genres.name;

select count(*)
from tracks
join albums on tracks.album_id = albums.id
where release_year between 2019 and 2020;

select albums.title, avg(tracks.duration) AS avg_duration
from tracks
join albums on tracks.album_id = albums.id
group by albums.id, albums.title;

select name
from artists
where id not in (select artist_id from album_artists
join albums on album_artists.album_id = albums.id
where albums.release_year = 2020);

select distinct compilations.title
from compilations
join compilation_tracks on compilations.id = compilation_tracks.compilation_id
join tracks on compilation_tracks.track_id = tracks.id
join albums on tracks.album_id = albums.id
join album_artists on albums.id = album_artists.album_id
join artists on album_artists.artist_id = artists.id
where artists.name = 'Queen';
