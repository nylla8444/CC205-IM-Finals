CREATE TABLE cash_donations (
    donation_id VARCHAR(50) PRIMARY KEY,            -- Primary Key (custom ID like 'CASH-xxx')
    organization_id INT,                            -- Foreign Key to users.user_id
    amount DECIMAL(10,2) NOT NULL,
    is_anonymous BOOLEAN DEFAULT FALSE,
    reference_number VARCHAR(50),
    message TEXT,
    purpose VARCHAR(100),                           -- e.g., 'general', 'medical'
    donation_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (organization_id) REFERENCES users(user_id) ON DELETE CASCADE
);
