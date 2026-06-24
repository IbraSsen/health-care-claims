WITH time AS ( 
SELECT
	encounterclass,
	--age(stop_time,start_time) AS encounter_duration,
	CASE WHEN age(stop_time,start_time) < interval'24 hours' THEN 'under 24 hours'
	 ELSE 'over 24 hours' END AS day_bucket
FROM encounters)

SELECT DISTINCT  encounterclass,day_bucket,
count(day_bucket) AS count_per_encounter,
sum(count(day_bucket)) OVER () AS overall_total,
round(count(day_bucket)* 100 / sum(count(day_bucket)) OVER(),2) AS percentage
FROM time
GROUP BY encounterclass, day_bucket
ORDER BY percentage DESC
LIMIT 7