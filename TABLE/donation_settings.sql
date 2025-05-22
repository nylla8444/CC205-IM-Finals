CREATE TABLE donation_settings (
    donation_setting_id INT PRIMARY KEY AUTO_INCREMENT,
    organization_id INT NOT NULL,
    donationQR TEXT,
    
    bank_account_name VARCHAR(100),
    bank_account_number VARCHAR(50),
    bank_name VARCHAR(100),
    bank_instructions TEXT,
    
    enable_donations BOOLEAN DEFAULT TRUE,
    acceptable_donation_methods TEXT, -- comma-separated list (e.g., 'bank_transfer,qr_code')
    minimum_donation INT DEFAULT 0,
    
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    FOREIGN KEY (organization_id) REFERENCES organizations(user_id) ON DELETE CASCADE
);
