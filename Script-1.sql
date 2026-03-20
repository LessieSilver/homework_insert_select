insert into artists (name)
values ('Queen'), ('Madonna'), ('Miles Davis'), ('Sting');

insert into genres (name)
values ('Рок'), ('Поп'), ('Джаз');

insert into albums (title, release_year)
values ('Rock Hits', 2019), ('Pop Star', 2020), ('Jazz Life', 2019), ('Solo Best', 2018);

insert into tracks (title, duration, album_id)
values ('Bohemian Rhapsody', 355, 1), ('My Life', 240, 2), ('So What', 562, 3), ('Englishman in New York', 270, 4), ('Мой мир', 200, 1), ('Like a Prayer', 340, 2), ('My Way', 280, 3);

insert into compilations (title, release_year)
values ('Best 2018', 2018), ('Hits 2019', 2019), ('Top 2020', 2020), ('Golden', 2019);

insert into artist_genres (artist_id, genre_id)
values (1, 1), (2, 2), (3, 3), (4, 2), (4, 1);

insert into album_artists (album_id, artist_id)
values (1, 1), (2, 2), (3, 3), (4, 4);

insert into compilation_tracks (compilation_id, track_id)
values (1, 4), (2, 1), (3, 2), (4, 5);