COPY runners TO '/Users/brettcassette/egghead/postgres_201/example.csv' DELIMITER ',' CSV HEADER NULL '-';

COPY (SELECT * FROM runners LIMIT 10) TO '/Users/brettcassette/egghead/postgres_201/example.csv' DELIMITER ',' CSV HEADER NULL '-';

COPY (SELECT * FROM runners LIMIT 10) TO '/Users/brettcassette/egghead/postgres_201/example.csv' DELIMITER ',' CSV HEADER NULL '-' FORCE QUOTE city;
