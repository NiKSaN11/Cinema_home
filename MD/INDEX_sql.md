#### Создание индексов для названия и жанров
```sql
CREATE INDEX name ON films(title);
CREATE INDEX genre ON genres(genre);
```