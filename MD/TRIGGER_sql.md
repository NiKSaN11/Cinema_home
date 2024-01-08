### Триггер на reviews
```sql
CREATE OR REPLACE FUNCTION update_avg_rating()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE films
    SET avg_rating = (SELECT ROUND(AVG(rating), 2)
    FROM reviews
    WHERE reviews.film_id = NEW.film_id
    );
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_avg_rating_trigger
AFTER INSERT OR UPDATE OR DELETE ON reviews
FOR EACH ROW
EXECUTE FUNCTION update_avg_rating();
```