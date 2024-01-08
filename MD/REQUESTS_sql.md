### 1. Вывести всех пользователей:
```sql
SELECT * FROM users;
```

### 2. Вывести фильмы, выпущенные в 1994 году:
```sql
SELECT * FROM films WHERE year_of_release = 1994;
```

### 3. Вывести все фильмы и всех актёров:
```sql
SELECT films.title AS "Название фильма", actors.name AS "Имя", actors.surname AS "Фамилия"
FROM films 
LEFT JOIN films_actors ON films_actors.film_id = films.film_id 
LEFT JOIN actors ON films_actors.actor_id = actors.actor_id
ORDER BY title;
```

### 4.Вывести все фильмы и всех режиссёров:
```sql
SELECT films.title AS "Название фильма", directors.name AS "Имя", directors.surname AS "Фамилия"
FROM films 
LEFT JOIN films_directors ON films_directors.film_id = films.film_id 
LEFT JOIN directors ON films_directors.director_id = directors.director_id
ORDER BY title;
```

### 5.Вывести все обзоры с названием фильмов:
```sql
SELECT reviews.review_id, films.title AS "Название фильма", users.name AS "Имя", 
users.surname AS "Фамилия", reviews.rating AS "Оценка", reviews.comment AS "Комментарий"
FROM films LEFT JOIN reviews ON reviews.film_id = films.film_id 
LEFT JOIN users ON reviews.user_id = users.user_id
ORDER BY title;
```

### 6. Вывести фильмы жанра боевик*:
```sql
SELECT films.film_id, films.title AS "Название фильма", films.year_of_release AS "Год выхода", 
films.duration AS "Продолжительность", films.avg_rating AS "Рейтинг", genres.genre AS "Жанр"
FROM films 
INNER JOIN films_genres ON films.film_id = films_genres.film_id 
INNER JOIN genres ON films_genres.genre_id = genres.genre_id AND genres.genre = 'боевик';
```

### 7. Вывести обзоры с рейтингом выше 9*:
```sql
SELECT  films.film_id, films.title AS "Название фильма", films.year_of_release AS "Год выхода", 
films.duration AS "Продолжительность", reviews.review_id, reviews.user_id, reviews.rating AS "Оценка", 
reviews.comment AS "Комментарий"
FROM films 
INNER JOIN reviews ON films.film_id = reviews.film_id 
WHERE reviews.rating > 9;
```

### 8. Вывести фильмы, в которых снимался Том Хэнкс*:
```sql
SELECT films.film_id, films.title AS "Название фильма", films.year_of_release "Год выхода", 
films.duration "Продолжительность", films.avg_rating AS "Средняя оценка", 
actors.actor_id, actors.name AS "Имя", actors.surname AS "Фамилия"
FROM films 
INNER JOIN films_actors ON films.film_id = films_actors.film_id 
INNER JOIN actors ON films_actors.actor_id = actors.actor_id
WHERE actors.name = 'Том' AND actors.surname =  'Хэнкс';
```

### 9. Вывести фильмы, снятые режиссером с определённым ID*:
```sql
SELECT  films.film_id, films.title AS "Название фильма", films.year_of_release "Год выхода", 
films.duration "Продолжительность", films.avg_rating AS "Средняя оценка", films_directors.director_id
FROM films 
INNER JOIN films_directors ON films.film_id = films_directors.film_id 
WHERE films_directors.director_id = 27977;
```

### 10. Вывести фильмы с длительностью больше и меньше определенного значения, сортировать по продолжительности:
```sql
SELECT  films.film_id, films.title AS "Название фильма", films.year_of_release "Год выхода", 
films.duration "Продолжительность", films.avg_rating AS "Средняя оценка" 
FROM films 
WHERE duration > 120 AND duration <150
ORDER BY duration;
```

### 11. Вывести текущий средний рейтинг для каждого фильма, сортировка по текущему рейтингу:
```sql
SELECT films.title AS "Название фильма", AVG(reviews.rating) AS "Текущая средняя оценка" 
FROM films 
INNER JOIN reviews ON films.film_id = reviews.film_id
GROUP BY films.title
ORDER BY "Текущая средняя оценка";
```

### 12. Вывести фильмы, оцененные пользователем по его ID*:
```sql
SELECT reviews.user_id, reviews.review_id, films.title AS "Название фильма",    
films.film_id, reviews.rating AS "Оценка", reviews.comment AS "Комментарий"
FROM films 
INNER JOIN reviews ON films.film_id = reviews.film_id 
WHERE reviews.user_id = 513;
```

### 13. Вывести количество отзывов для каждого фильма, сортировка по количеству отзывов: 
```sql
SELECT films.title AS "Название фильма", COUNT(*) as "Отзывов" 
FROM films    
INNER JOIN reviews ON films.film_id = reviews.film_id    
GROUP BY films.title
ORDER BY Отзывов;
```

### 14. Вывести фильмы определенного жанра и снятые определенным* режиссером:
```sql
SELECT films.film_id, films.title AS "Название фильма", films.year_of_release AS "Год выхода", 
films.duration AS "Продолжительность", films.avg_rating AS "Рейтинг", films_genres.genre_id,
films_directors.director_id 
FROM films 
INNER JOIN films_genres ON films.film_id = films_genres.film_id 
INNER JOIN films_directors ON films.film_id = films_directors.film_id 
WHERE films_genres.genre_id = 291564 AND films_directors.director_id = 27977;
```

### 15. Вывести фильмы, у которых продолжительность больше средней продолжительности всех фильмов:
```sql
SELECT films.title AS "Название фильма", films.year_of_release AS "Год выхода", 
films.duration AS "Продолжительность", films.avg_rating AS "Рейтинг" 
FROM films 
WHERE duration > (SELECT AVG(duration) FROM films
);
```

### 16. Вывести 3* фильма, с самой низкой оценкой:
```sql
SELECT title AS "Название фильма", avg_rating AS "Рейтинг"
FROM films 
ORDER BY avg_rating
LIMIT 3;
```

### 17. Вывести топ 5* фильмов по средней оценке:
```sql
SELECT title AS "Название фильма", avg_rating AS "Рейтинг"
FROM films 
ORDER BY avg_rating DESC
LIMIT 5;
```

### 18. Вывести фильмы, режиссеры которых родом из России и Украины*:
```sql
SELECT films.film_id, films.title AS "Название фильма", directors.name AS "Имя", directors.surname AS "Фамилия",
directors.date_of_birth AS "Дата рождения", directors.country AS "Страна"
FROM films 
INNER JOIN films_directors ON films.film_id = films_directors.film_id
INNER JOIN directors ON films_directors.director_id = directors.director_id
WHERE directors.country = 'Россия' or directors.country = 'Украина';
```

### 19. Вывести фильмы, актёры которых родом из Канады*:
```sql
SELECT films.film_id, films.title AS "Название фильма", films.year_of_release "Год выхода", 
films.duration "Продолжительность", films.avg_rating AS "Средняя оценка", 
actors.actor_id, actors.name AS "Имя", actors.surname AS "Фамилия",
actors.country AS "Страна рождения"
FROM films 
INNER JOIN films_actors ON films.film_id = films_actors.film_id 
INNER JOIN actors ON films_actors.actor_id = actors.actor_id
WHERE actors.country = 'Канада';
```

### 20. Вывести количество фильмов каждого жанра:
```sql
SELECT genres.genre AS "Жанр", COUNT(*) as "Фильмов" 
FROM genres    
INNER JOIN films_genres ON genres.genre_id = films_genres.genre_id    
GROUP BY Жанр
ORDER BY Фильмов;
```