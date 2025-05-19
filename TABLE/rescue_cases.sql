CREATE TABLE rescue_cases (
    case_id VARCHAR(50) PRIMARY KEY,              -- Custom case ID like 'RC-420311-822'
    title VARCHAR(255) NOT NULL,
    description TEXT,
    location VARCHAR(255),
    rescue_date DATE,
    status ENUM('ongoing', 'completed') DEFAULT 'ongoing',
    animal_type VARCHAR(50),                      -- e.g., 'dog', 'cat', 'other'
    outcome TEXT,
    medical_details TEXT,
    organization_id INT,                          -- Foreign key to organizations.user_id
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (organization_id) REFERENCES organizations(user_id) ON DELETE CASCADE
);
