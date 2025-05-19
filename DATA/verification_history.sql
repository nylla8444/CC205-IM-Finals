INSERT INTO verification_history 
(organization_id, admin_id, previous_status, new_status, notes, resubmission, timestamp) VALUES
(6, 1, 'pending', 'verified', 'Initial verification approved.', FALSE, '2025-05-01 10:00:00'),
(7, 1, 'pending', 'rejected', 'Missing documents.', FALSE, '2025-05-02 11:30:00'),
(8, 1, 'rejected', 'pending', 'Resubmission requested.', TRUE, '2025-05-03 09:45:00'),
(9, 1, 'pending', 'verified', 'Verification complete.', FALSE, '2025-05-04 14:15:00'),
(10, 1, 'verified', 'verified', 'Reverification confirmed.', FALSE, '2025-05-05 16:20:00');
