CREATE TABLE IF NOT EXISTS Genre (
 genre_id SERIAL PRIMARY KEY,
 name VARCHAR(60) NOT NULL
); 
 
 CREATE TABLE IF NOT EXISTS Singer (
 singer_id SERIAL PRIMARY KEY,
 name VARCHAR(60) NOT NULL
 );
 
CREATE TABLE IF NOT EXISTS GenreSinger (
 genre_id INTEGER REFERENCES Genre(genre_id),
 singer_id INTEGER REFERENCES Singer(singer_id),
 CONSTRAINT GenreSinger_pk PRIMARY KEY(genre_id,singer_id) 
 );
 
 CREATE TABLE IF NOT EXISTS Album (
 album_id SERIAL PRIMARY KEY,
 name VARCHAR(60) NOT NULL,
 release_year SMALLINT NOT NULL
 );
 
CREATE TABLE IF NOT EXISTS AlbumSinger (
 album_id INTEGER REFERENCES Album (album_id),
 singer_id INTEGER REFERENCES Singer(singer_id),
 CONSTRAINT AlbumSinger_pk PRIMARY KEY(album_id,singer_id) 
 );

 CREATE TABLE IF NOT EXISTS Track (
 track_id SERIAL PRIMARY KEY,
 name VARCHAR(60) NOT NULL,
 length TIME NOT NULL,
 album_id INTEGER NOT NULL REFERENCES Album (album_id)
 );
 
CREATE TABLE IF NOT EXISTS Collection (
 collection_id SERIAL PRIMARY KEY,
 name VARCHAR(60) NOT NULL,
 release_year SMALLINT NOT NULL
 );
 
CREATE TABLE IF NOT EXISTS TrackCollection (
 track_id INTEGER REFERENCES Track(track_id),
 collection_id INTEGER REFERENCES Collection(collection_id),
 CONSTRAINT TrackCollection_pk PRIMARY KEY(track_id,collection_id) 
 );