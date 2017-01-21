SELECT *
FROM projects
CROSS JOIN backers;

-- Duplicate detection

SELECT *
FROM projects p1
CROSS JOIN projects p2
WHERE p1.id<>p2.id
AND p1.name=p2.name;
