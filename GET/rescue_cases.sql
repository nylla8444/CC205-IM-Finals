-- Get All Ongoing Rescue Cases
SELECT 
    case_id, title, location, animal_type, rescue_date 
FROM 
    rescue_cases 
WHERE 
    status = 'ongoing';


-- Find Completed Cases with Medical Treatment Given
SELECT 
    case_id, title, outcome, medical_details 
FROM 
    rescue_cases 
WHERE 
    status = 'completed' 
    AND medical_details IS NOT NULL 
    AND medical_details <> '';


-- Find all ongoing rescue cases for a specific organization (organization_id = 7), ordered by rescue date descending:
SELECT
    case_id,
    title,
    animal_type,
    status,
    rescue_date,
    location
FROM
    rescue_cases
WHERE
    organization_id = 7
    AND status = 'ongoing'
ORDER BY
    rescue_date DESC;

