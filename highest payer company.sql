SELECT DISTINCT payers."NAME",
round(avg(total_claim_cost)) AS avg_cost
FROM encounters
LEFT JOIN payers ON payers.id = encounters.payer
GROUP BY payers."NAME"
ORDER BY avg_cost desc