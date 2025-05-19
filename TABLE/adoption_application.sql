CREATE TABLE adoption_applications (
    application_id INT PRIMARY KEY,  -- Primary Key

    adopter_id INT,                  -- FK to users.user_id (must be adopter)
    pet_id INT,                      -- FK to pets.pet_id
    organization_id INT,            -- FK to users.user_id (must be organization)

    status VARCHAR(50),             -- e.g., 'pending', 'approved', 'rejected'

    housing_status VARCHAR(50),     -- e.g., 'own', 'rent'
    pets_allowed VARCHAR(10),       -- 'yes' or 'no'
    pet_location VARCHAR(255),      -- e.g., 'inside the house'
    primary_caregiver VARCHAR(100), -- e.g., 'myself'
    other_pets VARCHAR(10),         -- 'yes' or 'no'
    financially_prepared VARCHAR(10), -- 'yes' or 'no'
    emergency_pet_care TEXT,        -- e.g., 'In my mom''s house'

    reference_name VARCHAR(100),
    reference_email VARCHAR(255),
    reference_phone VARCHAR(20),

    terms_accepted BOOLEAN,
    organization_notes TEXT,
    reviewed_by VARCHAR(100),
    rejection_reason TEXT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (adopter_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (organization_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (pet_id) REFERENCES pets(pet_id) ON DELETE CASCADE
) 
