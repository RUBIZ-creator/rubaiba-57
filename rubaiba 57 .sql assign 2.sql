SELECT COUNT(*) AS TotalCustomers
FROM Customers;
SELECT AVG(SalePrice) AS AverageSalePrice
FROM Sales;
SELECT CarID, SalePrice
FROM Sales
ORDER BY SalePrice DESC
LIMIT 1;
SELECT SUM(InventoryCount) AS TotalInventoryCount
FROM Cars;
SELECT MIN(SaleDate) AS EarliestSaleDate, MAX(SaleDate) AS MostRecentSaleDate
FROM Sales;
SELECT Brand, COUNT(Model) AS ModelCount
FROM Cars
GROUP BY Brand;
SELECT SalespersonID, SUM(SalePrice) AS TotalSales
FROM Sales
GROUP BY SalespersonID;
SELECT Cars.Model, AVG(Sales.SalePrice) AS AverageSalePrice
FROM Cars
JOIN Sales ON Cars.CarID = Sales.CarID
GROUP BY Cars.Model;
SELECT ServiceType, AVG(Cost) AS AverageServiceCost
FROM ServiceRecords
GROUP BY ServiceType;SELECT Brand, Color, COUNT(*) AS CarCount
FROM Cars
GROUP BY Brand, Color;