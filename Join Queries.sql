/* ---------------- JOINS ------------------------------- */

/* TABLES: movies, Boxoffice, film, city */

/* List all movies and their combined sales */

SELECT Title, (Domestic_Sales+International_sales) AS Total_Sales FROM Movies
INNER JOIN Boxoffice
ON Id = Movie_id;


/* List all movies and their ratings in percent */

SELECT title, rating * 10 AS rating_percent
FROM movies
JOIN boxoffice
ON movies.id = boxoffice.movie_id;



/* Find the total domestic and international sales that can be attributed to each director. */

SELECT DISTINCT(Director), SUM(Domestic_sales+International_sales) AS Total_Sales
FROM Movies
INNER JOIN Boxoffice
ON Movie_id = Boxoffice.movie_id
GROUP BY Director
ORDER BY Total_Sales DESC;


/* Show records of films with inventory id where inventory_id is NULL. */

SELECT film.film_id, film.title ,
inventory.inventory_id
FROM film
LEFT OUTER JOIN inventory 
ON inventory.film_id = 	film.film_id
WHERE inventory_id IS NULL; 


/* Give the city, city's last update, country and country's last update details. */

SELECT  city, city.last_update AS city_update,
country, country.last_update AS country_update 
FROM city
FULL OUTER JOIN country
ON city.country_id = 	country.country_id
ORDER BY country.country_id;

