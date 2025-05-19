-- Users (5 adopters, 5 organizations)
INSERT INTO users (user_id, email, password, contact_number, location, user_type, status, is_verified, verification_status)
VALUES 
  (1, 'adopter1@mail.com', 'hashed_pw', '09090000001', 'City A', 'adopter', 'active', TRUE, 'verified'),
  (2, 'adopter2@mail.com', 'hashed_pw', '09090000002', 'City B', 'adopter', 'active', FALSE, 'pending'),
  (3, 'adopter3@mail.com', 'hashed_pw', '09090000003', 'City C', 'adopter', 'inactive', FALSE, 'rejected'),
  (4, 'adopter4@mail.com', 'hashed_pw', '09090000004', 'City D', 'adopter', 'active', TRUE, 'verified'),
  (5, 'adopter5@mail.com', 'hashed_pw', '09090000005', 'City E', 'adopter', 'active', FALSE, 'pending'),
  (6, 'org1@mail.com',     'hashed_pw', '09110000001', 'City X', 'organization', 'active', TRUE, 'verified'),
  (7, 'org2@mail.com',     'hashed_pw', '09110000002', 'City Y', 'organization', 'active', FALSE, 'pending'),
  (8, 'org3@mail.com',     'hashed_pw', '09110000003', 'City Z', 'organization', 'inactive', FALSE, 'rejected'),
  (9, 'org4@mail.com',     'hashed_pw', '09110000004', 'City W', 'organization', 'active', TRUE, 'verified'),
  (10,'org5@mail.com',     'hashed_pw', '09110000005', 'City V', 'organization', 'active', FALSE, 'pending');


INSERT INTO adopters (user_id, first_name, last_name)
VALUES
  (1, 'John', 'Doe'),
  (2, 'Jane', 'Smith'),
  (3, 'Mark', 'Lee'),
  (4, 'Emma', 'Watson'),
  (5, 'Noah', 'Miller');


INSERT INTO organizations (user_id, organization_name, verification_document)
VALUES
  (6, 'Paw Rescue Org', 'https://example.com/docs/paw.pdf'),
  (7, 'Save Strays Org', 'https://example.com/docs/save.pdf'),
  (8, 'Hope Shelter', 'https://example.com/docs/hope.pdf'),
  (9, 'FurEver Homes', 'https://example.com/docs/furever.pdf'),
  (10,'Animal Aid Group', 'https://example.com/docs/aid.pdf');
