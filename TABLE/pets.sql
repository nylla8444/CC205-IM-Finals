-- PETS table (organization_id refers to USERS but should only be of type 'organization')
CREATE TABLE pets (
    pet_id INT PRIMARY KEY,
    name VARCHAR(100),
    specie VARCHAR(50),
    gender VARCHAR(10),
    breed VARCHAR(100),
    status VARCHAR(50),
    tags TEXT,              -- comma-separated or JSON string
    img_arr TEXT,           -- comma-separated or JSON string
    info TEXT,
    adoption_fee INT,
    organization_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (organization_id) REFERENCES users(user_id) ON DELETE SET NULL
);