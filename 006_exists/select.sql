SELECT title,
year
FROM movies m1
WHERE EXISTS (
   SELECT title
   FROM movies
   WHERE title=m1.title
   AND year<>m1.year
)
AND year=1995;

WITH exists_q AS (
 SELECT title,
 year
 FROM movies m1
 WHERE EXISTS (
  SELECT title
  FROM movies
  WHERE title=m1.title
  AND year<>m1.year
 )
 AND year=1995
), inner_join_q AS (
 SELECT m1.title,
 m1.year
 FROM movies m1
 INNER JOIN movies m2
 ON m2.title=m1.title
 AND m2.year<>m1.year
 AND m1.year=1995
 GROUP BY 1,2
 ORDER BY 1,2
)
SELECT *
FROM inner_join_q q1
INNER JOIN exists_q q2
ON q1.title=q2.title
AND q1.year=q2.year;
