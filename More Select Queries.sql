/* ------------- STRING USES --------------- */

/* Tables: players  */

/* Show phone numbers of people having first name as James. */

SELECT phone_no FROM players 
WHERE first_name = ‘James’;

/* List first name and last name of players whose first name starts with 'J'. */

SELECT first_name, last_name FROM players
WHERE first_name LIKE ‘J%’;


/* List first name and last name of players whose last name ends with 'r'.  */

SELECT first_name, last_name FROM players
WHERE last_name LIKE ‘%r’;


/* Lists first name from players whose first name includes the letters 'ch' anywhere. */
SELECT first_name FROM players
WHERE first_name LIKE ‘%ch%’;



/* --------------- OTHER ADVANCED QUERIES --------------------- */

/* Show average rental rate of films less than 3 which have ratings of either R, P or G.  */

SELECT rating, AVG(rental_rate)
FROM film
WHERE rating IN (‘R’, ‘P’, ‘G’)
GROUP BY rating;
HAVING AVG(rental_rate)<3;



/* Show customer ids of customers who have spent at least $110 with the staff member having an id of 2. */

SELECT customer_id, SUM(amount)
FROM payment
WHERE staff_id = 2 
GROUP BY customer_id
HAVING SUM(amount)>=110
ORDER BY customer_id;


