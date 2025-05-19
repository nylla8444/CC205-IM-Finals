-- Get all payments submitted by a specific adopter
SELECT * 
FROM payments 
WHERE adopter_id = 3 
ORDER BY date_submitted DESC;


-- Find all pending (unverified) payments
SELECT payment_id, transaction_id, status 
FROM payments 
WHERE date_verified IS NULL;

-- Total donation amount received by each organization
SELECT organization_id, SUM(amount) AS total_received 
FROM payments 
GROUP BY organization_id;

