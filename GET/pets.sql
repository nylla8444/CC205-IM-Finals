--  Get All Available Pets
SELECT * FROM pets
WHERE status = 'available';


-- Get All Pets With a Specific Tag (e.g. 'vaccinated')
SELECT * FROM pets
WHERE FIND_IN_SET('vaccinated', tags);

-- Get All Pets Belonging to a Specific Organization
SELECT * FROM pets
WHERE organization_id = 6;


-- Get All Dogs That Are Available
SELECT * FROM pets
WHERE specie = 'dog' AND status = 'available';


-- Get Pets Added After a Certain Date
SELECT * FROM pets
WHERE created_at > '2025-05-15';


-- Search Pets by Name (e.g. "Tiger")
SELECT * FROM pets
WHERE name LIKE '%Tiger%';
