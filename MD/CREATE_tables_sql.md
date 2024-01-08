#### Создание таблицы "directors"
```sql
CREATE TABLE directors (
  director_id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  surname VARCHAR(255),
  date_of_birth DATE,
  country VARCHAR(255)
);
```
#### Создание таблицы "genres"
```sql
CREATE TABLE genres (
  genre_id SERIAL PRIMARY KEY,
  genre VARCHAR(255)
);
```sql

#### Создание таблицы "users"
```sql
CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  surname VARCHAR(255),
  post VARCHAR(255),
  login VARCHAR(255),
  password VARCHAR(255)
);
```

#### Создание таблицы "users"
```sql
CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  surname VARCHAR(255),
  post VARCHAR(255),
  login VARCHAR(255),
  password VARCHAR(255)
);
```

#### Создание таблицы "actors"
```sql
CREATE TABLE actors (
  actor_id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  surname VARCHAR(255),
  date_of_birth DATE,
  country VARCHAR(255)
);
```

#### Создание таблицы "films"
```sql
CREATE TABLE films (
  film_id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  year_of_release INTEGER,
  duration INTEGER,
  avg_rating NUMERIC
);
```

#### Создание таблицы "films_actors"
```sql
CREATE TABLE films_actors (
  film_id INTEGER REFERENCES films(film_id),
  actor_id INTEGER REFERENCES actors (actor_id),
  CONSTRAINT films_actors_pk PRIMARY KEY (film_id, actor_id)
  );
```

#### Создание таблицы "films_directors"
```sql
CREATE TABLE films_directors (
  film_id INTEGER REFERENCES films(film_id),
  director_id INTEGER REFERENCES directors(director_id),
  CONSTRAINT films_directors_pk PRIMARY KEY (film_id, director_id)
  );
```

#### Создание таблицы "films_genres"
```sql
CREATE TABLE films_genres (
  film_id INTEGER REFERENCES films(film_id),
  genre_id INTEGER REFERENCES genres(genre_id),
  CONSTRAINT films_genre_pk PRIMARY KEY (film_id, genre_id)
);
```

#### Создание таблицы "reviews"
```sql
CREATE TABLE reviews (
  review_id SERIAL PRIMARY KEY,
  film_id INTEGER REFERENCES films(film_id),
  user_id INTEGER REFERENCES users(user_id),
  rating INTEGER,
  comment TEXT  
);
```