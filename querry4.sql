USE cardealership;

SELECT v.*,d.*
FROM dealership d
INNER JOIN inventory i ON i.dealership_id = d.dealership_id
INNER JOIN vehicles v ON v.vin_id = i.vin_id
WHERE v.vin_id = '101';