/* --------------------------- SELECT QUERIES -------------------------- */


/* Show all the details from Movies. */

SELECT * FROM Movies;


/* Show unique values from Director column. */

SELECT DISTINCT(Director) FROM Movies;


/* Give count of movies from year 2000 to 2010 excluding years 2000 and 2010. */

SELECT COUNT(Title) FROM Movies
WHERE Year>2000 AND Year<2010;


/* Show records of movies falling between years 2010 and 2015 (including 2010 and 2015). */

SELECT * FROM Movies
WHERE Year BETWEEN 2010 AND 2015;



/* Find the longest time that an employee has been at the studio. */

SELECT Name, Role, MAX(Years_employed) AS Longest_Time_at_studio
FROM employees;


/* For each role, find the average number of years employed by employees in that role

SELECT role, AVG(year_employed) AS Average_years_employed
FROM employees
GROUP BY role;


/* Find the total number of employee years worked in each building. */

SELECT Building, SUM(Years_employed) AS Total_number_of_employee_years
FROM Employees
GROUP BY Building;


/* Find the number of artists in the studio. */

SELECT COUNT(Role) AS Number_of_artists
FROM employees
WHERE Role = "Artist";


/* Find the number of Employees for each role in the studio. */

SELECT Role, COUNT(Role), AS No_of_employees
FROM Employees
GROUP BY Role;


/* Find the total number of years employed by an Engineer. */

SELECT Role, SUM(Years_employed) AS Total_number_of_employed
FROM Employees
WHERE Role="Engineer";


/* Find the number of movies each director has directed. */

SELECT DISTINCT(Director), COUNT(Title), AS Number_of_movies_directed
FROM Movies
GROUP BY Director;


/* List all movies that were released on even numbered years. */

SELECT title FROM movies
WHERE Year%2=0;


/* List first 5 movies after the year 2010. */

SELECT Title FROM Movies 
WHERE Year > 2010
ORDER BY Title ASC
LIMIT 5;



