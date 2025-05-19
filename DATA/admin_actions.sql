INSERT INTO admin_actions (
  action_id, admin_id, admin_name, user_id, user_type, action, notes, timestamp
) VALUES
(1, 1, 'Admin User', 2, 'adopter', 'Suspended adopter account', 'Violation of adoption policy.', '2025-05-17 10:38:16'),
(2, 1, 'Admin User', 2, 'adopter', 'Reactivated adopter account', 'Issue resolved, account reactivated.', '2025-05-17 12:30:00'),
(3, 1, 'Admin User', 4, 'organization', 'Requested verification documents', 'Waiting for verification upload.', '2025-05-17 14:45:22'),
(4, 1, 'Admin User', 5, 'adopter', 'Denied account verification', 'Fake ID submitted.', '2025-05-17 16:10:47'),
(5, 1, 'Admin User', 6, 'organization', 'Approved organization profile', 'All documents checked and verified.', '2025-05-17 18:22:33');
