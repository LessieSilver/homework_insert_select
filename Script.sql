CREATE TABLE genres (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE artists (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE artist_genres (
    id SERIAL PRIMARY KEY,
    artist_id INTEGER NOT NULL,
    genre_id INTEGER NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artists(id),
    FOREIGN KEY (genre_id) REFERENCES genres(id),
    UNIQUE (artist_id, genre_id)
);

CREATE TABLE albums (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_year INTEGER
);

CREATE TABLE album_artists (
    id SERIAL PRIMARY KEY,
    album_id INTEGER NOT NULL,
    artist_id INTEGER NOT NULL,
    FOREIGN KEY (album_id) REFERENCES albums(id),
    FOREIGN KEY (artist_id) REFERENCES artists(id),
    UNIQUE (album_id, artist_id)
);

CREATE TABLE tracks (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    duration INTEGER NOT NULL,
    album_id INTEGER NOT NULL,
    FOREIGN KEY (album_id) REFERENCES albums(id)
);

CREATE TABLE compilations (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_year INTEGER
);

CREATE TABLE compilation_tracks (
    id SERIAL PRIMARY KEY,
    compilation_id INTEGER NOT NULL,
    track_id INTEGER NOT NULL,
    FOREIGN KEY (compilation_id) REFERENCES compilations(id),
    FOREIGN KEY (track_id) REFERENCES tracks(id),
    UNIQUE (compilation_id, track_id)
);