#### Удаляет таблицы, если они есть
```sql
SET datestyle TO "ISO, DMY";
SET client_encoding='utf-8';
DROP TABLE IF EXISTS directors CASCADE;
DROP TABLE IF EXISTS films_directors CASCADE;
DROP TABLE IF EXISTS films_genres CASCADE;
DROP TABLE IF EXISTS films CASCADE;
DROP TABLE IF EXISTS genres;
DROP TABLE IF EXISTS reviews CASCADE;
DROP TABLE IF EXISTS films_actors CASCADE;
DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS actors;
```

