USE cardealership;

SELECT dealership.*
FROM dealership
JOIN vehicles ON dealership.dealership_id = vehicles.vin_id
WHERE vehicles.vin_id = '101';
