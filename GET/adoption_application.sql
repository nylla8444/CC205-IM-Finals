--  Count of applications per status
SELECT status, COUNT(*) AS total_applications
FROM adoption_applications
GROUP BY status;

--  List all pending applications with adopter info
SELECT aa.application_id, a.first_name, a.last_name, p.name AS pet_name, aa.status
FROM adoption_applications aa
JOIN adopters a ON aa.adopter_id = a.user_id
JOIN pets p ON aa.pet_id = p.pet_id
WHERE aa.status = 'pending';

