WITH ordered_encounters AS (
		SELECT patient,
		start_time::DATE AS encounter_start_time,
		stop_time::DATE,
		lag(start_time::DATE) over(PARTITION BY patient ORDER BY start_time::DATE)::date AS previous_encounter_Date
		--age(stop_time,start_time) AS duration_per_encounter,
		--date_trunc('month',stop_time) AS first_month_Day,
		--date_trunc('month',stop_time) + INTERVAL '1 month' - INTERVAL '1 day' AS last_month_day
		FROM encounters),
readmissions AS (SELECT patient,encounter_start_time, previous_encounter_date,
		encounter_start_time - previous_encounter_date AS days_since_previous,
		CASE WHEN encounter_start_time - previous_encounter_date BETWEEN 1 AND 30 THEN 'Re-Admitted' ELSE 'Not Re-Admitted' END AS is_30_day_admission
		FROM 
		 ordered_encounters)
SELECT DISTINCT is_30_day_admission,
count(*) AS count,
sum(count(*))over() AS totals,
round(count(*) * 100 /sum(count(*))over(), 1) AS pct_
FROM readmissions
GROUP BY is_30_day_admission
ORDER BY pct_ desc
