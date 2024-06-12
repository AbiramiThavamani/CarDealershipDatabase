-- Drop the database if it exists
DROP DATABASE IF EXISTS carDealership;

-- Create the carDealership database
CREATE DATABASE carDealership;

-- switch to the carDealership database
USE carDealership;

-- Drop tables if they exist
DROP TABLE IF EXISTS dealership;
DROP TABLE IF EXISTS vehicles;
DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS sales_contracts;
DROP TABLE IF EXISTS lease_contracts;

-- Create the dealership table
CREATE TABLE dealership(
dealership_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
address VARCHAR(50),
phone VARCHAR(12)
);

-- Create the vehicles table
CREATE TABLE vehicles(
vin_id INT PRIMARY KEY,
year INT,
make CHAR(50),
model CHAR(50),
vehicleType CHAR(50),
color CHAR(50),
odometer INT,
price DECIMAL,
sold BOOLEAN
);

-- Create the inventory table
CREATE TABLE inventory(
dealership_id INT,
vin_id INT
);

-- Create the sales_contracts table
CREATE TABLE sales_contracts(
vin_id INT AUTO_INCREMENT PRIMARY KEY,
salesTaxAmount DECIMAL,
date VARCHAR(50),
recordingFee DECIMAL,
processingFee DECIMAL,
financeOption BOOLEAN,
FOREIGN KEY (vin_id) REFERENCES vehicles (vin_id)
);

-- Create the lease_contracts table
CREATE TABLE lease_contracts(
vin_id INT AUTO_INCREMENT PRIMARY KEY,
expectedEndingValue DECIMAL,
leaseFee DECIMAL,
FOREIGN KEY (vin_id) REFERENCES vehicles (vin_id)
);

-- Insert sample data into dealership table
INSERT INTO dealership (dealership_id, name, address, phone)
VALUES
(1, 'DanaWyatt', '248B, pittsburgh', '08-466-9799'),
(2, 'Smithpatt', '342A, pittsburgh', '07-344-3999'),
(3, 'villsam', '254A, washington', '27-457-2444'),
(4, 'jhonen', '124G, pittsburgh', '11-234-7899');


-- Insert sample data into vehicles table
INSERT INTO vehicles (vin_id, year, make, model, vehicleType, color, odometer, price, sold)
VALUES
(100, 2011, 'Ford', 'Explorer', 'SUV', 'Red', 525123, 995.00, true),
(101, 2017, 'Subaru', 'Outback', 'Crossover', 'Blue', 312342, 878.20, false),
(102, 2020, 'Ford', 'FSeries', 'SUV','Red', 834223, 895.00, true),
(103, 2019, 'Toyota', 'Prius', 'Sedan', 'Black', 625123, 398.00, true);

-- Insert sample data into inventory table
INSERT INTO inventory (dealership_id, vin_id)
VALUES
(1, 100),
(2, 101),
(3, 102),
(4, 103);


-- Insert sample data into sales_contracts
INSERT INTO sales_contracts (vin_id, salesTaxAmount, date, recordingFee, processingFee, financeOption)
VALUES
(100, 49.75, '05-31-2024', 100.00, 295.00, 0.00),
(101, 50.75, '06-11-2023', 300.00, 875.00, 1.00),
(102, 60.34, '06-22-2024', 500.00, 875.00, 1.00),
(103, 30.15, '03-11-2024', 700.00, 345.00, 1.00);

-- Insert sample data into lease_contracts
INSERT INTO lease_contracts(vin_id, expectedEndingValue, leaseFee)
VALUES
(100, 15997.50, 2239.65),
(101, 16993.80, 3439.87),
(102, 14577.23, 2345.20),
(103, 23567.80, 1678.70);
