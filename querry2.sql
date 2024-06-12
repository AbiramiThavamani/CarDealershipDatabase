USE cardealership;

SELECT v.*
FROM vehicles v
INNER JOIN inventory i ON i.vin_id = v.vin_id
WHERE i.dealership_id = 2;
