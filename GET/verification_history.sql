-- Get all verification history for organization 6:
SELECT * FROM verification_history
WHERE organization_id = 6
ORDER BY timestamp DESC;


-- Count how many verifications were rejected:
SELECT COUNT(*) AS rejected_count
FROM verification_history
WHERE new_status = 'rejected';



--  Get the latest verification status for each organization:
SELECT vh.organization_id, vh.new_status, vh.timestamp
FROM verification_history vh
INNER JOIN (
    SELECT organization_id, MAX(timestamp) AS latest_time
    FROM verification_history
    GROUP BY organization_id
) latest
ON vh.organization_id = latest.organization_id AND vh.timestamp = latest.latest_time
ORDER BY vh.organization_id;



