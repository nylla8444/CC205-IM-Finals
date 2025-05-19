-- Get Total Donations by Organization
SELECT organization_id, SUM(amount) AS total_donated
FROM cash_donations
GROUP BY organization_id
ORDER BY total_donated DESC;

-- Get Donations Within a Date Range
SELECT donation_id, organization_id, amount, donation_date
FROM cash_donations
WHERE donation_date BETWEEN '2025-06-10' AND '2025-06-12';

--  View All Donations for a Specific Organization
SELECT donation_id, amount, is_anonymous, reference_number, message, purpose, donation_date
FROM cash_donations
WHERE organization_id = 5
ORDER BY donation_date DESC;
