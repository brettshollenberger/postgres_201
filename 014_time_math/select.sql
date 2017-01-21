SELECT current_date::timestamp AT TIME ZONE 'PST' AS beginning_of_day,
(current_date::timestamp AT TIME ZONE 'PST' + INTERVAL '1 day' - INTERVAL '1 second') AS end_of_day;

SELECT current_date::timestamp AT TIME ZONE 'PST' + INTERVAL '1 minute';

