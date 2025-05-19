-- Query to Get Adopter Info
SELECT 
  u.user_id,
  u.email,
  u.contact_number,
  u.location,
  u.user_type,
  u.status,
  u.verification_status,
  u.is_verified,
  a.first_name,
  a.last_name
FROM users u
JOIN adopters a ON u.user_id = a.user_id
WHERE u.user_type = 'adopter';


-- Query to Get Organization Info
SELECT 
  u.user_id,
  u.email,
  u.contact_number,
  u.location,
  u.user_type,
  u.status,
  u.verification_status,
  u.is_verified,
  o.organization_name,
  o.verification_document
FROM users u
JOIN organizations o ON u.user_id = o.user_id
WHERE u.user_type = 'organization';



