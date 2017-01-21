SELECT COALESCE(budget, 0)
FROM movies;

SELECT COALESCE(budget, NULL, 0)
FROM movies;

SELECT COALESCE(budget::varchar, mpaa, NULL, 500::varchar)
FROM movies;
