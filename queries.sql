--customers from cities beginning with Q

SELECT first_name, last_name, city FROM address
JOIN city ON address.city_id = city.city_id
JOIN customer ON address.address_id = customer.address_id
WHERE city.city LIKE "Q%";

--actors by how many films they appear in

SELECT first_name, last_name, COUNT(*)
FROM actor AS a JOIN film_actor AS f ON a.actor_id = f.actor_id
GROUP BY a.first_name, a.last_name ORDER BY COUNT(*) DESC;

--movies by avg rental duration

SELECT title, avg(rental_duration) AS 'average_rental'
FROM film
WHERE 'average_rental' < 6
GROUP BY title;

--create a view of actors their films and ratings

CREATE view act_film AS (
SELECT a.first_name, a.last_name, f.title, f.rating
FROM actor a JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON fa.film_id = f.film_id
);
