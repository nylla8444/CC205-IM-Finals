-- Get all donation settings with bank details and organization info
SELECT 
    ds.donation_setting_id,
    ds.organization_id,
    ds.bank_account_name,
    ds.bank_account_number,
    ds.bank_name,
    ds.enable_donations,
    ds.acceptable_donation_methods,
    o.organization_name
FROM 
    donation_settings ds
JOIN 
    organizations o ON ds.organization_id = o.user_id;


-- Get all organizations that accept QR code donations
SELECT 
    donation_setting_id,
    organization_id,
    acceptable_donation_methods
FROM 
    donation_settings
WHERE 
    acceptable_donation_methods LIKE '%qr_code%';


-- Get all donation settings where donations are disabled
SELECT 
    donation_setting_id,
    organization_id,
    enable_donations,
    updated_at
FROM 
    donation_settings
WHERE 
    enable_donations = FALSE;
