CREATE TABLE games (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_date INTEGER NOT NULL,
    last_played_at TIMESTAMP
);

CREATE TABLE authors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE items (
    id SERIAL PRIMARY KEY,
    game_id INTEGER REFERENCES games(id),
    author_id INTEGER REFERENCES authors(id)
);
