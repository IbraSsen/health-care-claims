SELECT DISTINCT EXTRACT(year FROM START_TIME) AS START_year,
encounterclass, 
round(count(encounterclass)*100/sum(count(encounterclass)) OVER(PARTITION BY EXTRACT(year FROM START_TIME)),2) AS percentage_total
FROM encounters
GROUP BY start_year ,encounterclass
ORdER BY start_year, percentage_total desc