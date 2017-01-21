CREATE OR REPLACE VIEW rare_movies AS (
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
	ORDER BY rating
);

SELECT *
FROM rare_movies;

CREATE OR REPLACE VIEW todays_order_totals AS (
   SELECT order_id,
   SUM(cost),
   COUNT(*) AS num_items
   FROM order_items
   INNER JOIN orders
   ON orders.id=order_items.order_id
   WHERE orders.created_at > current_date::timestamp AT TIME ZONE 'PST'
   GROUP BY order_id
   ORDER BY 1
);

SELECT *
FROM todays_order_totals;
