-- Show All Favorited Pets of All Users
SELECT 
    u.user_id,
    u.email,
    p.pet_id,
    p.name AS pet_name,
    p.breed,
    f.favorite_id,
    f.created_at AS favorited_on
FROM 
    users u
JOIN 
    favorites f ON u.user_id = f.user_id
JOIN 
    favorite_pets fp ON f.favorite_id = fp.favorite_id
JOIN 
    pets p ON fp.pet_id = p.pet_id
ORDER BY 
    u.user_id, f.created_at;



-- Get all pets favorited by a specific user (e.g., user_id = 1)
SELECT 
    f.favorite_id,
    f.user_id,
    p.pet_id,
    p.name AS pet_name
FROM 
    favorites f
JOIN 
    favorite_pets fp ON f.favorite_id = fp.favorite_id
JOIN 
    pets p ON fp.pet_id = p.pet_id
WHERE 
    f.user_id = 1;


-- Count how many pets each user has favorited
SELECT 
    f.user_id,
    COUNT(fp.pet_id) AS total_favorites
FROM 
    favorites f
LEFT JOIN 
    favorite_pets fp ON f.favorite_id = fp.favorite_id
GROUP BY 
    f.user_id;


-- Find users who have favorited a specific pet (e.g., pet_id = 2)
SELECT 
    f.user_id,
    u.email
FROM 
    favorite_pets fp
JOIN 
    favorites f ON fp.favorite_id = f.favorite_id
JOIN 
    users u ON f.user_id = u.user_id
WHERE 
    fp.pet_id = 2;
