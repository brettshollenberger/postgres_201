SELECT title,
CASE
WHEN warehouse=true THEN 'warehouse'
WHEN engineering=true THEN 'engineering'
WHEN sales=true THEN 'marketing'
WHEN marketing=true THEN 'marketing'
WHEN c_team=true THEN 'c_team'
WHEN hr=true THEN 'hr'
ELSE 'other'
END AS owner
FROM jobs;
