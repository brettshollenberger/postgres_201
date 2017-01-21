SELECT COALESCE(NULLIF(state, ''), city),
state,
city
FROM runners;
