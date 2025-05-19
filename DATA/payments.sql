INSERT INTO payments (
    payment_id, transaction_id, adoption_application_id, pet_id, adopter_id, organization_id,
    amount, qr_image, proof_of_transaction, status, payment_instructions, organization_notes,
    date_created, date_submitted, date_verified, updated_at
) VALUES 

(1, 'TXN-10001', 1, 2, 3, 6, 150.00,
 'https://res.cloudinary.com/demo/image/upload/sample1.png',
 'https://res.cloudinary.com/demo/image/upload/proof1.jpg',
 'submitted', 'Send to 09123456789', '', 
 FROM_UNIXTIME(1746740000), FROM_UNIXTIME(1746740300), NULL, FROM_UNIXTIME(1746740300)),

(2, 'TXN-10002', 2, 4, 2, 7, 200.00,
 'https://res.cloudinary.com/demo/image/upload/sample2.png',
 'https://res.cloudinary.com/demo/image/upload/proof2.jpg',
 'submitted', 'GCash: 09991234567', 'Urgent', 
 FROM_UNIXTIME(1746740500), FROM_UNIXTIME(1746740800), NULL, FROM_UNIXTIME(1746740800)),

(3, 'TXN-10003', 3, 1, 1, 8, 175.50,
 'https://res.cloudinary.com/demo/image/upload/sample3.png',
 'https://res.cloudinary.com/demo/image/upload/proof3.jpg',
 'submitted', 'PayMaya 0987654321', '', 
 FROM_UNIXTIME(1746740900), FROM_UNIXTIME(1746741200), NULL, FROM_UNIXTIME(1746741200)),

(4, 'TXN-10004', 4, 5, 4, 9, 250.00,
 'https://res.cloudinary.com/demo/image/upload/sample4.png',
 'https://res.cloudinary.com/demo/image/upload/proof4.jpg',
 'submitted', 'Bank Transfer: BDO ****3456', '', 
 FROM_UNIXTIME(1746741300), FROM_UNIXTIME(1746741600), NULL, FROM_UNIXTIME(1746741600)),

(5, 'TXN-10005', 5, 3, 5, 10, 300.00,
 'https://res.cloudinary.com/demo/image/upload/sample5.png',
 'https://res.cloudinary.com/demo/image/upload/proof5.jpg',
 'submitted', 'Send via Coins.ph to 09129876543', '', 
 FROM_UNIXTIME(1746741700), FROM_UNIXTIME(1746742000), NULL, FROM_UNIXTIME(1746742000));
