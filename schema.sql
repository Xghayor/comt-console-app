--Item
CREATE TABLE item (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    published_date DATE,
    archived BOOLEAN,
    genre_id INT,
    author_id INT,
    label_id INT,
    FOREIGN KEY (genre_id) REFERENCES genre(id) ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (author_id) REFERENCES author(id) ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (label_id) REFERENCES label(id) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE game(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  multiplayer BOOLEAN,
  last_played_at DATE,
  published_date DATE,
  genre_id INT,
  author_id INT,
  label_id INT,
  FOREIGN KEY (genre_id) REFERENCES genre(id) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY (author_id) REFERENCES author(id) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY (label_id) REFERENCES label(id) ON DELETE SET NULL ON UPDATE CASCADE
);

--Author
CREATE TABLE author(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  first_name VARCHAR(100),
  last_name VARCHAR(100)
);

CREATE TABLE items (
    id SERIAL PRIMARY KEY,
    game_id INTEGER REFERENCES games(id),
    author_id INTEGER REFERENCES authors(id)
);
