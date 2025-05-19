INSERT INTO adoption_applications (
    application_id, adopter_id, pet_id, organization_id, status,
    housing_status, pets_allowed, pet_location, primary_caregiver, other_pets,
    financially_prepared, emergency_pet_care, reference_name, reference_email,
    reference_phone, terms_accepted, organization_notes, reviewed_by,
    rejection_reason, created_at, updated_at
) VALUES 
(
    1, 1, 1, 6, 'pending',
    'rent', 'yes', 'inside the house', 'myself', 'yes',
    'yes', 'at mom\'s house', 'Ashley', 'ashley@email.com',
    '1234567890', TRUE, '', '', '',
    NOW(), NOW()
),

(
    2, 2, 2, 6, 'approved',
    'own', 'yes', 'in the backyard', 'me', 'no',
    'yes', 'friend\'s vet clinic', 'John Doe', 'john@example.com',
    '0987654321', TRUE, 'Well-prepared and responsible.', 'Admin User', '',
    NOW(), NOW()
),

 (
    3, 3, 3, 6, 'rejected',
    'rent', 'no', 'outside', 'sibling', 'yes',
    'no', 'uncertain', 'Jane Smith', 'jane@email.com',
    '1122334455', TRUE, '', 'Admin User', 'Not financially ready.',
    NOW(), NOW()
),

(
    4, 1, 4, 6, 'pending',
    'own', 'yes', 'indoor', 'partner', 'no',
    'yes', 'neighbor support', 'Paul Tan', 'ptan@email.com',
    '2233445566', TRUE, '', '', '',
    NOW(), NOW()
), (
    5, 2, 5, 6, 'approved',
    'own', 'yes', 'inside', 'both parents', 'yes',
    'yes', 'uncle\'s vet office', 'Maria C', 'maria@email.com',
    '3344556677', TRUE, 'Fast approval due to references.', 'Admin User', '',
    NOW(), NOW()
);
