CREATE TABLE verification_history (
    verification_id INT AUTO_INCREMENT PRIMARY KEY,
    organization_id INT NOT NULL,
    admin_id INT NOT NULL,
    previous_status VARCHAR(50) NOT NULL,
    new_status VARCHAR(50) NOT NULL,
    notes TEXT,
    resubmission BOOLEAN DEFAULT FALSE,
    timestamp TIMESTAMP NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (organization_id) REFERENCES organizations(user_id) ON DELETE CASCADE,
    FOREIGN KEY (admin_id) REFERENCES ADMIN(_id) ON DELETE CASCADE
);
