![c988c8cf9f9dddc468f32d82943c3b36](https://github.com/NiKSaN11/Cinema_home/assets/126002033/c55c69ff-2d3d-40b7-890e-14900dbaa5ca)
___
# **CINEMAHOME**

База данных, содержащая информацию о фильмах, актёрах, режиссёрах, отзывах по фильмам. Так же, база содержит информацию о пользователях и их рецензиях на фильмы. База позволяет производить выборку по фильму, актёру, режиссёру и\или жанру. Показывает оценку фильма, выводя среднюю оценку, а также, в случае изменения информации по отзывам - актуализирует среднюю оценку с помощью триггера.
___

## **База данных**
+ [VirtualBox](https://www.virtualbox.org/) - виртуальная машина, позволяет работать в эмуляции других операционных систем (ОС).
+ [Ubuntu](https://ubuntu.com/download) - оболочка для установки PgAdmin.
+ [PgAdmin](https://www.pgadmin.org/download/) - программа для создания базы данных, позволяеет создавать и управлять базами данных, таблицами, индексами, представлениями и другими объектами базы данных.
+ [Tables](https://github.com/NiKSaN11/Cinema_home/blob/main/MD/CREATE_tables_sql.md) - создание табличной части базы данных.
+ [Delete tables](https://github.com/NiKSaN11/Cinema_home/blob/main/MD/DELETE_tables_sql.md) - удаляет таблицы, если они существуют в базе (может понадобиться для перезаливки базы).
+ [Inside](https://github.com/NiKSaN11/Cinema_home/blob/main/MD/INSIDE_sql.md) - заполнение таблиц базы данных информацией.
+ [Index](https://github.com/NiKSaN11/Cinema_home/blob/main/MD/INDEX_sql.md) - создание индексов для более быстрого поиска по названиям фильмов и жанров.
+ [Trigger](https://github.com/NiKSaN11/Cinema_home/blob/main/MD/TRIGGER_sql.md) - создание триггера, для обновления и актуализации информации по среднему рейтингу фильмов.
+ [Requests](https://github.com/NiKSaN11/Cinema_home/blob/main/MD/REQUESTS_sql.md) - 20 рабочих примеров запросов к базе данных.
___
### **ERD схема базы данных**
![2024-01-06_18-40-24](https://github.com/NiKSaN11/Cinema_home/assets/126002033/10904bab-8ba6-4f64-878e-aba8a5decb9f)
___
## **Рекомендации по работе с базой данных:**
:white_check_mark: Для работы с БД первым шагом - необходимо установить Ubuntu на "чистый" ПК или на VirtualBox.

:white_check_mark: Для работы с БД вторым шагом - необходимо установить программу для работы с БД из разряда СУБД, например, PgAdmin.

:white_check_mark: При поиске информации - продуктивнее всего осуществлять поиск по названию фильма или жанру.
