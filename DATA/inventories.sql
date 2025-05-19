INSERT INTO inventories (
    name, category, subcategory, quantity, unit, minimum_stock_level,
    organization_id, source, source_donation_id, cost, expiry_date, location,
    notes, status, purchase_date, last_stock_check
) VALUES
(
    'Ashleymeow', 'pet_food', '', 6, 'pcs', 10,
    10, 'purchased', NULL, 100, NULL, 'Main Storage',
    '', 'low_stock', FROM_UNIXTIME(1746918391), FROM_UNIXTIME(1746918391)
),
(
    'Hehe', 'shelter_equipment', '', 5, 'pcs', 5,
    9, 'purchased', NULL, 0, NULL, 'Main Storage',
    '', 'low_stock', FROM_UNIXTIME(1746934703), FROM_UNIXTIME(1746934703)
),
(
    'Betadine', 'medication', '', 2, 'pcs', 1,
    8, 'donated', 'CASH-321654-001', 200, NULL, 'Main Storage',
    '', 'in_stock', FROM_UNIXTIME(1746981085), FROM_UNIXTIME(1746981085)
),
(
    'Dry Dog Food', 'pet_food', 'adult', 20, 'kg', 15,
    7, 'donated', 'CASH-741852-002', 0, NULL, 'Pantry Shelf 1',
    'From anonymous donor', 'in_stock', FROM_UNIXTIME(1747000000), FROM_UNIXTIME(1747000000)
),
(
    'Cage Cleaner', 'shelter_equipment', 'cleaning_supplies', 8, 'bottles', 5,
    6, 'donated', 'CASH-963258-003', 0, NULL, 'Supply Closet',
    '', 'in_stock', FROM_UNIXTIME(1747020000), FROM_UNIXTIME(1747020000)
);
