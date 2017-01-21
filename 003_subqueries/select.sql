-- Select from a subquery

SELECT *
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
WHERE rank <= 10;
