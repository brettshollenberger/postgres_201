SELECT rating,
COUNT(*)
FROM movies
GROUP BY 1
HAVING COUNT(*) > 1000 
ORDER BY 2;

SELECT rating,
COUNT(*)
FROM movies
GROUP BY 1
HAVING COUNT(*) = 1013 
ORDER BY 2;

SELECT division,
SUM(twenty_five_k)/COUNT(*) AS average_time
FROM runners
GROUP BY 1
HAVING SUM(twenty_five_k)/COUNT(*) < 75
ORDER BY 2
