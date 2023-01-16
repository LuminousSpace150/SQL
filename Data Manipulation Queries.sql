/* ------------ INSERT, UPDATE, DELETE ---------------------- */

/* Add the studio's new production, Toy Story 4 to the list of movies (you can use any director) */

INSERT INTO Movies
(Id, Title, Director, Year, Length_minutes)
VALUES (15, 'Toy Story 4', 'Josh Cooley', 2019, 100);


/* Toy Story 4 was released and had a rating of 8.7, and made 340 million domestically and 270 million internationally.
Add the record to the Boxoffice table. */

INSERT INTO Boxoffice
VALUES (15, 8.7, 3400000000, 2700000000)



/* The director for a Bug's Life is incorrect, it was actually directed by John Lasseter. */

UPDATE Movies
SET Director = 'John Lasseter'
WHERE Title = "A Bug's Life";


/* The year that Toy Story 2 was released is incorrect, it was actually released in 1999. */

UPDATE Movies
SET Year = 1999
WHERE Title = "Toy Story 2";


/* Both the title and director for Toy Story 8 is incorrect! The title should be 'Toy Story 3" and it was directed by Lee Unkrich. */

UPDATE Movies
SET Title = "Toy Story 3", Director = "Lee Unkrich"
WHERE Title = "Toy Story 8";




/* Remove all movies that were released before 2005. */

DELETE FROM Movies
WHERE Year<2005;


/* Andrew Stanton has also left the studio, so please remove all movies directed by him. */

DELETE FROM Movies
WHERE Director LIKE 'Andrew%';

OR

DELETE FROM Movies
WHERE Director = "Andrew Stanton";

