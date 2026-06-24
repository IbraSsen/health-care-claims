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
		CASE WHEN encounter_start_time - previous_encounter_date BETWEEN 1 AND 30 THEN 're_admitted' ELSE 'NOT_readmitted' END AS is_30_day_admission
		FROM 
		 ordered_encounters)
SELECT DISTINCT patient,
	extract(YEAR FROM encounter_start_time)::int AS YEAR,
	--extract(QUARTER FROM encounter_start_time)::int AS QUARTER
	count(is_30_day_admission) AS readmissions
	--COUNT(DISTINCT patient) AS unique_patient_admitted
FROM READMISSIONS
WHERE is_30_day_admission = 're_admitted'
GROUP BY patient,YEAR
ORDER BY readmissions DESC