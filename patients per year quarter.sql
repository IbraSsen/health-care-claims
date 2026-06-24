SELECT DISTINCT extract(year FROM start_time) AS start_year,
extract(quarter FROM start_time) AS start_quarter,
count(extract(year FROM start_time)) AS total_cases_per_quarter
FROM encounters
GROUP BY start_year,start_quarter
ORDER BY start_year,total_cases_per_quarter desc