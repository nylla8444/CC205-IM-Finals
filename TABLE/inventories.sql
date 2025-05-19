CREATE TABLE inventories (
    inventory_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    category ENUM('pet_food', 'shelter_equipment', 'medication', 'others') NOT NULL,
    subcategory VARCHAR(100),
    quantity INT DEFAULT 0,
    unit VARCHAR(50),
    minimum_stock_level INT DEFAULT 0,
    organization_id INT NOT NULL,
    source ENUM('donated', 'purchased') NOT NULL,
    source_donation_id VARCHAR(50), -- Optional reference to cash_donations
    cost DECIMAL(10,2) DEFAULT 0.00,
    expiry_date DATE,
    location VARCHAR(255),
    notes TEXT,
    status ENUM('in_stock', 'low_stock', 'out_of_stock') DEFAULT 'in_stock',
    purchase_date TIMESTAMP,
    last_stock_check TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (organization_id) REFERENCES organizations(user_id) ON DELETE CASCADE,
    FOREIGN KEY (source_donation_id) REFERENCES cash_donations(donation_id) ON DELETE SET NULL
);
