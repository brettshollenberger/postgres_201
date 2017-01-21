-- Popular, well-rated kids movies

SELECT title,
mpaa,
votes,
rating
FROM movies
WHERE votes > 9000
AND mpaa NOT IN (
   SELECT UNNEST(ARRAY['NC-17', 'R', 'PG-13', ''])
)
AND rating > 6;
