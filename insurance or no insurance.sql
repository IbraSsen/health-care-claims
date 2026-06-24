WITH payer_coverage AS (
SELECT DISTINCT encounterclass,
count(payer_coverage = 0) AS total_occurence_per_class,
CASE WHEN payer_coverage = 0 THEN 'zero_coverage'
		ELSE 'covered' END AS coverage,
sum(count(CASE WHEN payer_coverage = 0 THEN 'zero_coverage'
		ELSE 'covered'END)) over() AS running_totals
FROM encounters
GROUP BY encounterclass,payer_coverage 
ORDER BY total_occurence_per_class DESC)

SELECT coverage,
count(coverage) AS segment_totals,
sum(count(coverage)) over() AS runnings_total,
round(count(coverage) * 100 / sum(count(coverage)) over(),2) AS pct_zero_coverage
FROM payer_coverage
LEFT JOIN encounters ON encounters.encounterclass = payer_coverage.encounterclass
GROUP BY coverage