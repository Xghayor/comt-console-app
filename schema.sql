
CREATE TABLE genres (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE albums (
    album_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    artist VARCHAR(255) NOT NULL,
    release_date DATE NOT NULL,
    archived BOOLEAN DEFAULT FALSE,
    genre_id INT,
    
    FOREIGN KEY (genre_id) REFERENCES genres (genre_id)
);

CREATE INDEX idx_genre_id ON albums (genre_id);




