-- Удаляет таблицы, если они уже есть в базе
SET datestyle TO "ISO, DMY";
SET client_encoding='utf-8';
DROP TABLE IF EXISTS director CASCADE;
DROP TABLE IF EXISTS dirs CASCADE;
DROP TABLE IF EXISTS few_genres CASCADE;
DROP TABLE IF EXISTS films CASCADE;
DROP TABLE IF EXISTS genres;
DROP TABLE IF EXISTS reviews CASCADE;
DROP TABLE IF EXISTS starring CASCADE;
DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS actor;

-- Создание таблицы "directors"
CREATE TABLE directors (
  director_id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  surname VARCHAR(255),
  date_of_birth DATE,
  country VARCHAR(255)
);

-- Создание таблицы "genres"
CREATE TABLE genres (
  genre_id SERIAL PRIMARY KEY,
  genre VARCHAR(255)
);

-- Создание таблицы "users"
CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  surname VARCHAR(255),
  post VARCHAR(255),
  login VARCHAR(255),
  password VARCHAR(255)
);

-- Создание таблицы "actors"
CREATE TABLE actors (
  actor_id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  surname VARCHAR(255),
  date_of_birth DATE,
  country VARCHAR(255)
);

-- Создание таблицы "films"
CREATE TABLE films (
  film_id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  year_of_release INTEGER,
  duration INTEGER,
  avg_rating NUMERIC
);

-- Создание таблицы "films_actors"
CREATE TABLE films_actors (
  film_id INTEGER REFERENCES films(film_id),
  actor_id INTEGER REFERENCES actors (actor_id),
  CONSTRAINT films_actors_pk PRIMARY KEY (film_id, actor_id)
  );

-- Создание таблицы "films_directors"
CREATE TABLE films_directors (
  film_id INTEGER REFERENCES films(film_id),
  director_id INTEGER REFERENCES directors(director_id),
  CONSTRAINT films_directors_pk PRIMARY KEY (film_id, director_id)
  );

-- Создание таблицы "films_genres"
CREATE TABLE films_genres (
  film_id INTEGER REFERENCES films(film_id),
  genre_id INTEGER REFERENCES genres(genre_id),
  CONSTRAINT films_genre_pk PRIMARY KEY (film_id, genre_id)
);

-- Создание таблицы "reviews"
CREATE TABLE reviews (
  review_id SERIAL PRIMARY KEY,
  film_id INTEGER REFERENCES films(film_id),
  user_id INTEGER REFERENCES users(user_id),
  rating INTEGER,
  comment TEXT  
);

