DROP VIEW vw_avg_total_claim
--CREATE VIEW vw_avg_total_claim AS 
SELECT DISTINCT p."NAME"
--round(avg(total_claim_cost)) AS avg_cost
FROM procedures
LEFT JOIN encounters ON encounters.patient = procedures.patient,
payers p 
--GROUP BY p."NAME"
--ORDER BY avg_cost