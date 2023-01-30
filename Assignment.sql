--Cau 1:
DROP DATABASE IF EXISTS Test;
CREATE DATABASE Test;
use  Test;

-- Table 1:Customer
CREATE TABLE `Customers` (
	CustomersNumber INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	CustomerName VARCHAR(50),
    CustomerType VARCHAR(50)
   );
-- Table 2:CustomerItem
CREATE TABLE CustomerItem (
    ItemNumber INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    CustomersNumber int,
FOREIGN KEY (CustomersNumber) REFERENCES `Customers` (CustomersNumber),
   Quantity int
);
-- Table 3: Item
CREATE TABLE `Items` (
CustomersNumber int,
ItemName VARCHAR(50),
SupplierID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
Price int,
FOREIGN KEY (CustomersNumber) REFERENCES `Customers` (CustomersNumber)
);
-- Table 4: Supplier
CREATE TABLE `Supplier` (
SupplierID int,
FOREIGN KEY (SupplierID) REFERENCES `Items` (SupplierID),
SuplierName VARCHAR(50)
);
--Cau 2:
SELECT ItemName, ItemPrice
FROM Item


   
