SELECT
  film.title 
  FROM 
      (SELECT 
          film_id, 
          COUNT(film_id) AS cnt 
        FROM film_actor 
        WHERE actor_id in (105, 122)
          GROUP BY film_id
        ) temp
    INNER JOIN film
      ON temp.film_id = film.film_id
WHERE cnt = 2
ORDER BY title ASC;