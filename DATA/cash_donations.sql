INSERT INTO cash_donations (
    donation_id, organization_id, amount, is_anonymous, reference_number,
    message, purpose, donation_date, created_at, updated_at
) VALUES
('CASH-586929-183', 5, 200.00, TRUE, '11111111111', 'adfasdfasdfadfafdad', 'general', '2025-06-10', NOW(), NOW()),
('CASH-988101-474', 4, 100.00, TRUE, '090909090', 'thanks uwu', 'general', '2025-06-10', NOW(), NOW()),
('CASH-321654-001', 3, 150.50, FALSE, 'REF123456', 'Keep saving animals!', 'medical', '2025-06-11', NOW(), NOW()),
('CASH-741852-002', 2, 500.00, TRUE, 'ANON9999', 'For shelter upgrades.', 'infrastructure', '2025-06-12', NOW(), NOW()),
('CASH-963258-003', 1, 75.00, FALSE, 'DONATE2025', 'Support for food.', 'general', '2025-06-13', NOW(), NOW());
