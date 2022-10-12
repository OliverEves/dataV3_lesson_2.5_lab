-- Instructions
-- Select all the actors with the first name ‘Scarlett’.
USE sakila;
SELECT first_name, last_name FROM sakila.actor
WHERE first_name = 'Scarlett';

-- How many films (movies) are available for rent and how many films have been rented?
SELECT rantal_date FROM film;


-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT max(length) as 'Longest Movie', min(length) as 'Shortest Movie' FROM film;

-- What's the average movie duration expressed in format (hours, minutes)?

SELECT AVG(length) AS 'Avg. Run Time' FROM film;

-- How many distinct (different) actors' last names are there?

SELECT count(distinct(last_name)) FROM actor; 

-- Since how many days has the company been operating (check DATEDIFF() function)?

SELECT DATEDIFF(max(rental_date), min(rental_date)) AS 'Tenure' FROM rental;

-- Show rental info with additional columns month and weekday. Get 20 results.

SELECT rental_date AS 'Rental Date',month(rental_date) AS Month, weekday(rental_date) AS 'Weekday' FROM rental
LIMIT 20;

-- Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.

-- SELECT weekend(rental_date) AS 'Weekend', workday(rental_date) AS 'Workday' FROM rental;

SELECT *,
    CASE
        WHEN weekday(rental_date) < 6 then 'workday'
        ELSE 'weekend'
        END AS 'day_type'
    FROM rental;
    
-- Get release years.

SELECT title, release_year FROM film;

-- Get all films with ARMAGEDDON in the title.

SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON%';

-- Get all films which title ends with APOLLO.

SELECT * FROM film
WHERE title LIKE '%APOLLO';

-- Get 10 the longest films.

SELECT title, length FROM film
ORDER BY length DESC
LIMIT 10;

-- How many films include Behind the Scenes content?

SELECT count(special_features) FROM film
WHERE special_features LIKE '%Behind the Scenes%';

    
    





