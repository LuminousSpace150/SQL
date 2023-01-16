/* -------------------------------DATA DEFINITION QUERIES ---------------------- */


/* Create a table named SQL_Database with the following columns: Name, Version, Download_count */

CREATE TABLE SQL_Database (
	Name TEXT,
	Version FLOAT,
	Download_count INTEGER
);


/* -------------------ALTER QUERY -------------------------- */

/* Add a column named Aspect_ratio with a FLOAT data type to store the aspect-ratio each movie was released in. */

ALTER TABLE Movies
ADD Aspect_ratio FLOAT
DEFAULT 16.9;


/* Add another column named Language with a TEXT data type to store the language that the movie was released in. Ensure that the default for this language is English. */

ALTER TABLE Movies
ADD Language TEXT
DEFAULT 'English';


/* Remove the movies table. */

DROP TABLE IF EXISTS Movies;


/* Remove Boxoffice table. */

DROP TABLE Boxoffice;