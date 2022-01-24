-- This is my answer for question 3
SELECT COUNT(*)
FROM yellow_taxi_data
WHERE tpep_dropoff_datetime::date = '2021-01-15'::date OR tpep_pickup_datetime::date = '2021-01-15'::date;

-- This is my answer for question 4
SELECT tpep_dropoff_datetime::date, MAX(tip_amount)
FROM yellow_taxi_data
GROUP BY tpep_dropoff_datetime::date
ORDER BY MAX(tip_amount) DESC
LIMIT 1;

-- This is my answer for question 5
SELECT "DOLocationID", COUNT(*) Trips
FROM yellow_taxi_data
WHERE "PULocationID" = 43 AND tpep_pickup_datetime::date = '2021-01-14'::date
GROUP BY "DOLocationID"
ORDER BY Trips DESC
LIMIT 1;

-- This is my answer for question 6
SELECT "PULocationID", "DOLocationID", AVG(total_amount) Charges
FROM yellow_taxi_data
GROUP BY "PULocationID", "DOLocationID"
ORDER BY Charges DESC
LIMIT 1;