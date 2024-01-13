#Rquired Database 
use mavenmovies;

-- 1) List all actors in the actor table, including their first names and last names.

SELECT 
    first_name, last_name
FROM
    actor;  

-- 2) List the cities and their last update timestamps from the "city" table.

SELECT 
    city, last_update
FROM
    city;

-- 3) Find films with titles containing the word 'Action'.

SELECT 
    title
FROM
    film
WHERE
    title LIKE '%Action%';

-- 4) Retrieve customers whose email addresses do not include 'hotmail.com'.
select * from customer;

SELECT 
    email
FROM
    customer
WHERE
    email NOT LIKE '%hotmail.com%';

-- 5) List the film titles and their rental durations from the "film" table, along with the corresponding category names.
select * from film;
select * from  category;

SELECT 
    f.title, f.rental_duration, c.name AS category_names
FROM
    film f
        INNER JOIN
    film_category fc ON f.film_id = fc.film_id
        INNER JOIN
    category c ON fc.category_id = c.category_id;

-- 6) Retrieve customer names and their payments  from the "customer" and "payment" tables.   
select * from customer;
select * from payment;

SELECT 
    c.first_name, c.last_name, p.amount
FROM
    customer c
        LEFT JOIN
    payment p ON c.customer_id = p.customer_id
ORDER BY amount ASC;