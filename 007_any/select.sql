SELECT title,
mpaa
FROM movies
WHERE mpaa = ANY (
   SELECT UNNEST(ARRAY['G','PG', 'PG-13'])
);

SELECT title,
mpaa
FROM movies
WHERE title = ANY (
   SELECT title
   FROM movies
   WHERE mpaa='PG-13'
)
AND mpaa<>''
AND mpaa<>'PG-13';
