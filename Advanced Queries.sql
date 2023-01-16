/* Calculate total transaction volume for each merchant where transaction was done by ApplePay and show 0 for transactions done without ApplePay. */

SELECT merchant_id,
SUM(CASE WHEN LOWER(payment_method) = 'apple pay' THEN transaction_amount
    ELSE 0 END) AS Total_Transactions
FROM transactions
GROUP BY merchant_id
ORDER BY Total_Transactions DESC;


/* Get the number of companies that have posted duplicate job postings.*/

WITH jobs_grouped AS (
SELECT company_id, title, description, COUNT(job_id) AS job_count
FROM job_listings
GROUP BY company_id, title, description)
SELECT COUNT(DISTINCT company_id) AS co_w_duplicate_jobs
FROM jobs_grouped
WHERE job_count > 1;


/* Get the historgram of tweets posted per user in 2022. Output the tweet count per users as the bucket, and then number of Twitter users who fall into that bucket. */

SELECT tweets_num AS tweet_bucket, COUNT(user_id) AS users_num
FROM (SELECT user_id, COUNT(tweet_id) AS tweets_num
FROM tweets WHERE tweet_date BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY user_id) AS total_tweets
GROUP BY tweets_num;


/* Show sender and the number of messages sent by a user 
sent in the month of August, 2022. */

SELECT sender_id, COUNT(message_id) AS total_messages
FROM messages
WHERE EXTRACT(MONTH FROM sent_date) = '08' AND EXTRACT(YEAR FROM sent_date) = '2022'
GROUP BY sender_id
ORDER BY total_messages DESC
LIMIT 2;


/* Get the click-through rate (CTR %) in 2022, rounding the values in percentages upto 2 decimals.  */

SELECT app_id,
ROUND(100.0 * 
	COUNT(CASE WHEN event_type = 'click' THEN 1 ELSE NULL END) /
	COUNT(CASE WHEN event_type = 'impression' THEN 1 ELSE NULL END), 2
	) AS ctr_rate
FROM events,
WHERE timestamp >= '2022-01-01' AND timestamp < '2023-01-01'
GROUP BY app_id;


