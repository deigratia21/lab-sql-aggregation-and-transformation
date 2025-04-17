SELECT 
  MAX(length) AS max_duration,
  MIN(length) AS min_duration
FROM film;
SELECT DATEDIFF(MAX(rental_date), MIN(rental_date)) AS days_operating
FROM rental;
SELECT 
  rental_id,
  rental_date,
  MONTHNAME(rental_date) AS rental_month,
  DAYNAME(rental_date) AS rental_weekday
FROM rental
LIMIT 20;
SELECT COUNT(*) AS total_films
FROM film;
SELECT rating, COUNT(*) AS number_of_films
FROM film
GROUP BY rating;
SELECT rating, COUNT(*) AS number_of_films
FROM film
GROUP BY rating
ORDER BY number_of_films DESC;
SELECT 
  rating, 
  ROUND(AVG(length), 2) AS avg_duration
FROM film
GROUP BY rating
ORDER BY avg_duration DESC;
SELECT 
  rating, 
  ROUND(AVG(length), 2) AS avg_duration
FROM film
GROUP BY rating
HAVING avg_duration > 120
ORDER BY avg_duration DESC;
SELECT 
  last_name
FROM actor
GROUP BY last_name
HAVING COUNT(*) = 1;

