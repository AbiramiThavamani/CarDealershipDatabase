USE cardealership;

SELECT d.*
FROM dealership d
JOIN inventory i ON d.dealership_id = i.dealership_id
JOIN vehicles v ON i.vin_id = v.vin_id
WHERE v.make = 'Ford'
AND v.model = 'Explorer'
AND v.color = 'Red';