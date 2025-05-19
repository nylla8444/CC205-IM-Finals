INSERT INTO rescue_cases (
    case_id, title, description, location, rescue_date, status, animal_type,
    outcome, medical_details, organization_id, created_at, updated_at
) VALUES

('RC-100001-001', 'Kitten Found in Drainage', 
 'A stray kitten was found stuck in a drainage pipe near a residential area. Appeared weak and undernourished.', 
 'Brgy. Rizal, Iloilo City', FROM_UNIXTIME(1746800000), 'ongoing', 'cat',
 '', 'Severely dehydrated, minor wounds, deworming done', 6, NOW(), NOW()),


('RC-100002-002', 'Hit-and-Run Victim - Dog', 
 'A medium-sized brown dog was hit by a vehicle near the highway and left limping. Immediate rescue was performed.', 
 'Diversion Road, Mandurriao, Iloilo', FROM_UNIXTIME(1746900000), 'ongoing', 'dog',
 '', 'Suspected fracture on hind leg, awaiting X-ray', 7, NOW(), NOW()),


('RC-100003-003', 'Pregnant Stray Cat Rescued', 
 'Locals reported a pregnant cat nesting in an abandoned house. She was safely captured and brought to the shelter.', 
 'Brgy. Calumpang, Molo, Iloilo City', FROM_UNIXTIME(1747000000), 'completed', 'cat',
 'Gave birth to 4 healthy kittens. All in stable condition.', 
 'Routine prenatal checkups done. Given vitamins and safe space.', 8, NOW(), NOW()),


('RC-100004-004', 'Abandoned Dog Tied to Post', 
 'An emaciated dog was found tied to a street post without food or water. Neighbors claim the owner left the area.', 
 'Brgy. Tanza Bonifacio, Iloilo City', FROM_UNIXTIME(1747050000), 'completed', 'dog',
 'Successfully rehabilitated and ready for adoption.', 
 'Underwent vaccination, deworming, and weight gain plan.', 9, NOW(), NOW()),


('RC-100005-005', 'Monitor Lizard in Warehouse', 
 'A large monitor lizard was spotted inside a warehouse. Team was called for safe capture and release.', 
 'Warehouse 7, Lapaz District, Iloilo City', FROM_UNIXTIME(1747100000), 'completed', 'other',
 'Released safely to natural habitat with DENR coordination.', 
 'No injuries noted. Species confirmed non-aggressive.', 10, NOW(), NOW());
