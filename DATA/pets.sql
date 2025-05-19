INSERT INTO pets (
  pet_id, name, specie, gender, breed, status, tags, img_arr, info,
  adoption_fee, organization_id, created_at, updated_at
) VALUES
-- Pet 1
(1, 'Justin', 'dog', 'male', 'Bulldog', 'available',
 'vaccinated,neutered,house-trained',
 'https://res.cloudinary.com/dfvotimva/image/upload/v1745934798/strayspot/pets/acmhg2zqw4j5pgumdkko.jpg',
 'Justin the Bulldog is a lovable, stocky pup... affectionate—especially fond of belly rubs.',
 10, 6, '2025-05-17 10:13:19', '2025-05-17 10:13:19'),

(2, 'Luna', 'cat', 'female', 'Siamese', 'available',
 'spayed,vaccinated,litter-trained',
 'https://res.cloudinary.com/dfvotimva/image/upload/v1745934801/strayspot/pets/luna.jpg',
 'Luna is an elegant Siamese cat who loves attention and sunbathing on windowsills.',
 5, 6, '2025-05-15 09:45:00', '2025-05-15 09:45:00'),

(3, 'Rocky', 'dog', 'male', 'Labrador Retriever', 'adopted',
 'trained,friendly,energetic',
 'https://res.cloudinary.com/dfvotimva/image/upload/v1745934803/strayspot/pets/rocky.jpg',
 'Rocky is a joyful Labrador who loves playing fetch and being around people.',
 15, 6, '2025-05-16 14:10:30', '2025-05-16 14:10:30'),

(4, 'Mochi', 'rabbit', 'female', 'Netherland Dwarf', 'available',
 'small,quiet,gentle',
 'https://res.cloudinary.com/dfvotimva/image/upload/v1745934805/strayspot/pets/mochi.jpg',
 'Mochi is a quiet rabbit who enjoys nibbling carrots and sitting in cozy corners.',
 7, 6, '2025-05-14 11:22:00', '2025-05-14 11:22:00'),

(5, 'Tiger', 'cat', 'male', 'Tabby', 'pending',
 'curious,playful,vaccinated',
 'https://res.cloudinary.com/dfvotimva/image/upload/v1745934807/strayspot/pets/tiger.jpg',
 'Tiger is a curious tabby kitten who loves exploring and chasing feather toys.',
 8, 6, '2025-05-13 16:00:00', '2025-05-13 16:00:00');
