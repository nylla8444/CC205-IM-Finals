CREATE TABLE payments (
    payment_id INT PRIMARY KEY,                                -- paymentId from MongoDB
    transaction_id VARCHAR(50),                                -- transactionId
    adoption_application_id INT,                               -- FK to adoption_applications (converted _id)
    pet_id INT,                                                -- FK to pets (converted _id)
    adopter_id INT,                                            -- FK to users (adopter)
    organization_id INT,                                       -- FK to organizations
    amount DECIMAL(10,2),
    qr_image TEXT,
    proof_of_transaction TEXT,
    status ENUM('submitted', 'approved', 'rejected') DEFAULT 'submitted',
    payment_instructions TEXT,
    organization_notes TEXT,
    date_created DATETIME,
    date_submitted DATETIME,
    date_verified DATETIME NULL,
    updated_at DATETIME,

    FOREIGN KEY (adoption_application_id) REFERENCES adoption_applications(application_id) ON DELETE CASCADE,
    FOREIGN KEY (pet_id) REFERENCES pets(pet_id) ON DELETE CASCADE,
    FOREIGN KEY (adopter_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (organization_id) REFERENCES organizations(user_id) ON DELETE CASCADE
);
