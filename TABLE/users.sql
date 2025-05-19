CREATE TABLE users (
    user_id INT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    contact_number VARCHAR(20),
    location VARCHAR(255),
    user_type ENUM('organization', 'adopter') NOT NULL,
    profile_image TEXT,
    status ENUM('active', 'inactive') DEFAULT 'active',
    is_verified BOOLEAN DEFAULT FALSE,
    verification_status ENUM('pending', 'verified', 'rejected'),
    verification_notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


-- ADOPTERS table (linked to USERS)
CREATE TABLE adopters (
    user_id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);


-- ORGANIZATIONS table (linked to USERS)
CREATE TABLE organizations (
    user_id INT PRIMARY KEY,
    organization_name VARCHAR(255),
    verification_document TEXT,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);


/*
    ON DELETE CASCADE is used in adopters and organizations so when a user is deleted,
    their adopter/org profile is too.
*/