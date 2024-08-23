CREATE TABLE appleStore_description_combined AS 
    SELECT * FROM applestore_description1
    UNION ALL
    SELECT * FROM appleStore_description2
    UNION ALL
    SELECT * FROM appleStore_description3
    UNION ALL
    SELECT * FROM appleStore_description4 ;
    
-- 1.Exploratory Data Analysis

-- check the number of unique apps in both tableAppleStoreAppleStore
    
SELECT COUNT(DISTINCT id) AS UniqueAppsIDs 
FROM appleStore_description_combined ;
    
SELECT COUNT(DISTINCT id) AS UniqueAppsIDs 
FROM AppleStore ;


-- check for any missing values in key fields

SELECT COUNT(*) AS MissingValues
FROM AppleStore
WHERE track_name IS NULL OR user_rating IS NULL OR prime_genre IS NULL ;

SELECT COUNT(*) AS MissingValues
FROM appleStore_description_combined
WHERE app_desc IS NULL ;


-- find out the number of apps per genre
SELECT prime_genre , COUNT(*) AS Number_of_apps
FROM AppleStore
GROUP BY prime_genre 
ORDER BY Number_of_apps DESC ;


-- get an overview of apps ratings
SELECT MIN(user_rating) AS Min_Rating ,
       MAX(user_rating) AS Max_Rating ,
       AVG(user_rating) AS Average_Rating
FROM AppleStore ;


-- 2.Finding the insights

-- determine whether paid apps have rankings than free apps
SELECT CASE 
           WHEN price > 0 THEN 'Paid'
           ELSE 'Free'
        END AS App_type ,
        AVG(user_rating) AS average_rating
FROM AppleStore 
GROUP BY App_type ;


-- check if apps with more supported languages have higher ranking
SELECT CASE
          WHEN lang_num < 10 THEN '<10 languages'
          WHEN lang_num BETWEEN 10 AND 30 THEN '10-30 languages'
          ELSE '>30 languages'
END AS language_bucket,
avg(user_rating) AS Avg_Rating ;


-- check genres with low rating
SELECT prime_genre ,
       AVG(user_rating) AS Average_Rating
FROM AppleStore 
GROUP BY prime_genre 
ORDER BY Average_Rating
LIMIT 10
FROM AppleStore
GROUP BY language_bucket ;


-- check if there is a correlation between the lenght of the app description and the user rating
SELECT CASE
          WHEN length(b.app_desc) <500 THEN 'Short'
          WHEN length(b.app_desc) BETWEEN 500 AND 1000 THEN "Medium" 
          ELSE 'Long'
          END as description_length_bucket,
          avg(a.user_rating) AS average_rating
FROM 
    AppleStore AS A
JOIN
    appleStore_description_combined AS b
ON
A.id = B.id
GROUP BY description_length_bucket 
ORDER BY average_rating DESC ;


-- check top-rated apps for each genre
SELECT 
    prime_genre ,
    track_name ,
    user_rating
FROM (
    SELECT 
    prime_genre ,
    track_name ,
    user_rating ,
    RANK() OVER (PARTITION BY prime_genre ORDER BY user_rating DESC, rating_count_tot DESC) AS rank
    FROM
    AppleStore
   ) AS a
   WHERE
   a.rank = 1