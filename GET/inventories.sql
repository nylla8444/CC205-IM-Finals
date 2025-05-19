-- Get all inventory items that are low in stock
SELECT * 
FROM inventories 
WHERE quantity <= minimum_stock_level;


--  List all donated items with source details
SELECT name, category, quantity, source_donation_id, cost 
FROM inventories 
WHERE source = 'donated';


-- Count items by category
SELECT category, COUNT(*) AS total_items 
FROM inventories 
GROUP BY category;
