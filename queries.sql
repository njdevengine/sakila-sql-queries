SELECT first_name, last_name, city FROM address
join city on address.city_id = city.city_id
join customer on address.address_id = customer.address_id
where city.city like "Q%";

Select first_name, last_name, count(*)
from actor as a join film_actor as f on a.actor_id = f.actor_id
group by a.first_name, a.last_name order by count(*) desc;

select title, avg(rental_duration) as 'average_rental'
from film
where 'average_rental' < 6
group by title;
