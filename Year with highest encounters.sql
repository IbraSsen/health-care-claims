SELECT DISTINCT EXTRACT(year FROM START_TIME) AS START_year,
count(encounterclass)
FROM encounters
GROUP BY start_year
ORdER BY count desc