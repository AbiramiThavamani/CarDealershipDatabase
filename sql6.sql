USE cardealership;

SELECT *
FROM  sales_contracts
WHERE sales_contractsID IN (SELECT dealership.sales_contractsID
                                 FROM dealership
					              WHERE dealership.dealership_id = sales_contracts.dealearship_id
                                  AND dealership.name = 'Smithpatt');