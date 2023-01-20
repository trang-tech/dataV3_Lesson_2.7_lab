USE sakila;

SELECT c.name, count(f.film_id) as Numner_of_films 
FROM category c
JOIN film_category f 
ON c.category_id = f.category_id
GROUP BY c.name;

SELECT s.first_name, s.last_name, sum(amount) as 'Total Amount'
FROM payment p
JOIN staff s
on p.staff_id =s.staff_id
WHERE payment_date Like "2005-08%"
GROUP by s.first_name, s.last_name;

SELECT s.first_name, s.last_name, SUM(p.amount) as 'Total Amount'
FROM staff s
JOIN payment p ON s.staff_id = p.staff_id
WHERE MONTH(p.payment_date) = 8 AND YEAR(p.payment_date) = 2005
GROUP BY s.first_name, s.last_name;

SELECT a.first_name, a.last_name, count(f.film_id) as film_appeared
FROM actor a
JOIN film_actor f
ON a.actor_id = f.actor_id
GROUP BY a.first_name, a.last_name
ORDER BY film_appeared DESC
Limit 1;

SELECT c.first_name, c.last_name, count(c.active) as customer_active
FROM customer c
JOIN rental r
ON c.customer_id = r.customer_id
GROUP BY c.first_name, c.last_name
ORDER BY customer_active DESC
Limit 1;

SELECT s.first_name, s.last_name, a.address 
FROM staff s
JOIN address a
ON s.address_id = a.address_id;


SELECT f.title, count(fa.actor_id) as number_actors
FROM film f
JOIN film_actor fa
ON f.film_id = fa.film_id
GROUP BY f.title;


SELECT c.first_name, c.last_name, sum(p.amount) as total_payment
FROM payment p
JOIN customer c
ON c.customer_id = p.customer_id
GROUP BY c.first_name, c.last_name
ORDER BY c.last_name;


SELECT c.name, count(f.film_id) as number_of_film
FROM category c
JOIN film_category f
on c.category_id = f.category_id
GROUP BY c.name;

