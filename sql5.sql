USE cardealership;

SELECT dealership.*
FROM dealership
JOIN vehicles ON dealership.dealership_id = vehicles.vin_id
WHERE vehicles.make = 'Ford'
AND vehicles.model = 'Explorer'
AND vehicles.color = 'Red';