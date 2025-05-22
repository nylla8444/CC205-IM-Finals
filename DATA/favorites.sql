-- Insert into favorites FIRST (main table)
INSERT INTO favorites (favorite_id, user_id, created_at, updated_at) VALUES
(1, 2, FROM_UNIXTIME(1747150240376 / 1000), FROM_UNIXTIME(1747657582134 / 1000)),
(2, 4, FROM_UNIXTIME(1747567198783 / 1000), FROM_UNIXTIME(1747567198787 / 1000)),
(3, 1, NOW(), NOW()),
(4, 3, NOW(), NOW()),
(5, 5, NOW(), NOW());



-- Insert into favorite_pets (junction table)

INSERT INTO favorite_pets (favorite_id, pet_id) VALUES
(1, 1),
(1, 2),

(3, 2),
(3, 3),
(3, 5),

(4, 3),
(4, 4),

(5, 1),
(5, 2),
(5, 5);


