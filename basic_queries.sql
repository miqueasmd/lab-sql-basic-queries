-- Before we start working, we make sure to use the right database

USE sakila;

-- 1. Display all available tables in the Sakila database.

SHOW TABLES;

-- 2. Retrieve all the data from the tables actor, film and customer.
-- Retrieve all data from the actor table
SELECT * FROM actor;

-- Retrieve all data from the film table
SELECT * FROM film;

-- Retrieve all data from the customer table
SELECT * FROM customer;

-- 3. Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
SELECT title FROM film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name AS language FROM language;

-- 3.3 List of first names of all employees from the staff table
SELECT first_name FROM staff;

-- 4. Retrieve unique release years.
SELECT DISTINCT release_year FROM film;

-- 5. Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
SELECT COUNT(*) AS number_of_stores
FROM store;

-- 5.2 Determine the number of employees that the company has.
SELECT COUNT(*) AS number_of_employees
FROM staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(*) AS films_available
FROM inventory;

SELECT COUNT(DISTINCT inventory_id) AS films_rented
FROM rental;

-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) AS distinct_last_names
FROM actor;

-- 6. Retrieve the 10 longest films.
SELECT title, length 
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7. Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;

/*The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
There are two wildcards often used in conjunction with the LIKE operator:
 The percent sign % represents zero, one, or multiple characters
 The underscore sign _ represents one, single character*/

-- 7.3 Determine the number of films that include Behind the Scenes content
SELECT COUNT(*) AS films_with_bts
FROM film
WHERE special_features LIKE '%Behind the Scenes%';









