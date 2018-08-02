USE sakila;

#1a.
SELECT first_name, last_name FROM actor;

#1b.
SELECT CONCAT(first_name, ' ', last_name) 
AS Actor_Name FROM actor;

#2a.
SELECT actor_id, first_name, last_name
FROM actor 
WHERE first_name LIKE "Joe";

#2b.
SELECT *
FROM actor 
WHERE last_name LIKE "%GEN%";

#2c.
SELECT *
FROM actor 
WHERE last_name LIKE "%LI%"
ORDER BY last_name, first_name;

#2d.
SELECT country_id, country
FROM country
WHERE country IN ("Afghanistan", "Bangladesh", "China");

#3a.
ALTER TABLE actor
ADD description BLOB;

#3b.
ALTER TABLE actor
DROP column description;

#4a.
SELECT last_name, COUNT(last_name)
FROM actor
GROUP BY last_name;

#4b.
SELECT last_name, COUNT(last_name) AS last_name_total_use
FROM actor
GROUP BY last_name
HAVING last_name_total_use >=2;

#4c.
UPDATE actor
SET first_name = 'HARPO'
WHERE last_name= 'WILLIAMS';

#4d.
UPDATE actor
SET first_name = 'GROUCHO'
WHERE last_name= 'WILLIAMS';

#5a.
SHOW CREATE TABLE actor;

#6a.
SELECT first_name, last_name, address
FROM staff, address;


#6b.
#(incomplete)
SELECT first_name, last_name
FROM staff
JOIN payment 
ON staff.id = payment.staff_id

#6c.

