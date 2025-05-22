INSERT INTO donation_settings (
    organization_id, donationQR,
    bank_account_name, bank_account_number, bank_name, bank_instructions,
    enable_donations, acceptable_donation_methods, minimum_donation,
    created_at, updated_at
) VALUES 

(6, 'https://res.cloudinary.com/dfvotimva/image/upload/v1746910151/strayspot/donations/orrqtx6cy5fu7ah5lefl.png',
 'Nylla Ralf Amsedel', '12121212121', 'TestBank', '',
 TRUE, 'bank_transfer,qr_code', 0,
 FROM_UNIXTIME(1746910150843 / 1000), FROM_UNIXTIME(1746924075297 / 1000)),


(7, 'https://res.cloudinary.com/dfvotimva/image/upload/v1746910000/strayspot/donations/sample1.png',
 'Luna Mae Santos', '98765432100', 'MetroBank', 'Please include your name in the note.',
 TRUE, 'bank_transfer', 50,
 FROM_UNIXTIME(1746900000000 / 1000), FROM_UNIXTIME(1746920000000 / 1000)),


(8, 'https://res.cloudinary.com/dfvotimva/image/upload/v1746910100/strayspot/donations/sample2.png',
 'Carlos Reyes', '12345678901', 'BDO', '',
 FALSE, 'qr_code', 100,
 FROM_UNIXTIME(1746910100000 / 1000), FROM_UNIXTIME(1746920100000 / 1000)),


(9, 'https://res.cloudinary.com/dfvotimva/image/upload/v1746910200/strayspot/donations/sample3.png',
 'Mika Dela Cruz', '10293847566', 'LandBank', 'Send screenshot via email.',
 TRUE, 'bank_transfer,qr_code', 25,
 FROM_UNIXTIME(1746910200000 / 1000), FROM_UNIXTIME(1746920200000 / 1000)),


(10, 'https://res.cloudinary.com/dfvotimva/image/upload/v1746910300/strayspot/donations/sample4.png',
 'James Tan', '66778899001', 'PNB', 'Donations are non-refundable.',
 TRUE, 'qr_code', 10,
 FROM_UNIXTIME(1746910300000 / 1000), FROM_UNIXTIME(1746920300000 / 1000));
