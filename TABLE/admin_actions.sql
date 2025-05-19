CREATE TABLE admin_actions (
  action_id INT PRIMARY KEY,
  admin_id INT NOT NULL,
  admin_name VARCHAR(255) NOT NULL,
  user_id INT NOT NULL,
  user_type ENUM('adopter', 'organization') NOT NULL,
  action VARCHAR(255) NOT NULL,
  notes TEXT,
  timestamp DATETIME NOT NULL
);


