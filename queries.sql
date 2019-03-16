SELECT first_name, last_name, city FROM address
JOIN city ON address.city_id = city.city_id
JOIN customer ON address.address_id = customer.address_id
WHERE city.city LIKE "Q%";

SELECT first_name, last_name, COUNT(*)
FROM actor AS a JOIN film_actor AS f ON a.actor_id = f.actor_id
GROUP BY a.first_name, a.last_name ORDER BY COUNT(*) DESC;

SELECT title, avg(rental_duration) AS 'average_rental'
FROM film
WHERE 'average_rental' < 6
GROUP BY title;
