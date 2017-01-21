SELECT movies.title,
ARRAY_AGG(m2.year)
FROM movies
INNER JOIN movies m2
ON m2.title=movies.title
WHERE movies.year = 1995
AND m2.year <> 1995
GROUP BY movies.title;

SELECT *
FROM movies
WHERE year = 1995
AND title IN (
   SELECT title
   FROM movies
   WHERE year <> 1995
);

SELECT title,
year,
rating
FROM movies
WHERE rating IN (
 SELECT rating
 FROM (
  SELECT rating,
  count,
  dense_rank() OVER (PARTITION BY true ORDER BY count ASC) AS rank
  FROM (
   SELECT rating,
   COUNT(*) AS count
   FROM movies
   GROUP BY 1
   ORDER BY 2
  ) rating_counts
 ) rating_ranks
 WHERE rank <= 10
)
ORDER BY rating;
