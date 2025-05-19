--  View all actions made by a specific admin
SELECT * FROM admin_actions
WHERE admin_id = 1
ORDER BY timestamp DESC;


-- Count how many suspensions each user has
SELECT user_id, COUNT(*) AS suspension_count
FROM admin_actions
WHERE action LIKE 'Suspended%'
GROUP BY user_id;


-- Get all actions taken on a specific user
SELECT * FROM admin_actions
WHERE user_id = 2;
