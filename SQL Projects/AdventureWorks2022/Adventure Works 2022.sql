-- Use the correct database
USE AdventureWorks2022;
GO

SELECT TABLE_NAME 
FROM AdventureWorks2022.INFORMATION_SCHEMA.TABLES
WHERE table_type = 'BASE TABLE'


SELECT COUNT(table_name) AS [Total Number Of Tables]
FROM AdventureWorks2022.INFORMATION_SCHEMA.TABLES
WHERE table_type = 'BASE TABLE'


-- 1. Sales Trend Analysis: Monthly sales revenue (last 2 years), by territory
SELECT
    FORMAT(oh.OrderDate, 'yyyy-MM') AS [YearMonth],
    st.Name AS Territory,
    ROUND(SUM(od.LineTotal), 0) AS MonthlyRevenue
FROM Sales.SalesOrderHeader AS oh
JOIN Sales.SalesOrderDetail AS od ON oh.SalesOrderID = od.SalesOrderID
JOIN Sales.SalesTerritory AS st ON oh.TerritoryID = st.TerritoryID
WHERE oh.OrderDate BETWEEN '2013-01-01' AND '2014-12-31'
GROUP BY FORMAT(oh.OrderDate, 'yyyy-MM'), st.Name
ORDER BY [YearMonth];

-- Highest and lowest revenue months
WITH MonthlySales AS (
    SELECT
        FORMAT(oh.OrderDate, 'yyyy-MM') AS [YearMonth],
        ROUND(SUM(od.LineTotal), 0) AS Revenue
    FROM Sales.SalesOrderHeader AS oh
    JOIN Sales.SalesOrderDetail AS od ON oh.SalesOrderID = od.SalesOrderID
    WHERE oh.OrderDate BETWEEN '2013-01-01' AND '2014-12-31'  -- Match your dataset range
    GROUP BY FORMAT(oh.OrderDate, 'yyyy-MM')
)

-- Use subqueries to apply ORDER BY inside each SELECT
SELECT 'Highest' AS Label, YearMonth, Revenue
FROM (
    SELECT TOP 1 YearMonth, Revenue 
    FROM MonthlySales 
    ORDER BY Revenue DESC
) AS High

UNION ALL

SELECT 'Lowest' AS Label, YearMonth, Revenue
FROM (
    SELECT TOP 1 YearMonth, Revenue 
    FROM MonthlySales 
    ORDER BY Revenue ASC
) AS Low;
-- 2. Top and Bottom Product Performance
-- Top 10 Products
SELECT TOP 10 
    p.Name AS ProductName,
    ps.Name AS SubCategory,
    ROUND(SUM(od.OrderQty * od.UnitPrice), 0) AS TotalRevenue
FROM Sales.SalesOrderDetail od
JOIN Production.Product p ON od.ProductID = p.ProductID
LEFT JOIN Production.ProductSubcategory ps ON p.ProductSubcategoryID = ps.ProductSubcategoryID
GROUP BY p.Name, ps.Name
ORDER BY TotalRevenue DESC;

-- Bottom 5 Products
SELECT TOP 5 
    p.Name AS ProductName,
    ps.Name AS SubCategory,
    SUM(od.OrderQty * od.UnitPrice) AS TotalRevenue
FROM Sales.SalesOrderDetail od
JOIN Production.Product p ON od.ProductID = p.ProductID
LEFT JOIN Production.ProductSubcategory ps ON p.ProductSubcategoryID = ps.ProductSubcategoryID
GROUP BY p.Name, ps.Name
ORDER BY TotalRevenue ASC;

-- 3. Customer Insights
-- Top 5 individual (non-store) customers by total spend
SELECT TOP 5
    c.CustomerID,
    p.FirstName + ' ' + p.LastName AS CustomerName,
    ROUND(SUM(od.LineTotal),0) AS TotalSpent
FROM Sales.Customer c
JOIN Sales.SalesOrderHeader oh ON c.CustomerID = oh.CustomerID
JOIN Sales.SalesOrderDetail od ON oh.SalesOrderID = od.SalesOrderID
JOIN Person.Person p ON c.PersonID = p.BusinessEntityID
WHERE c.StoreID IS NULL  -- Individual customers only
GROUP BY c.CustomerID, p.FirstName, p.LastName
ORDER BY TotalSpent DESC;

-- Avg spend per order for individual vs. store customers
SELECT 
    CASE 
        WHEN c.StoreID IS NULL THEN 'Individual' 
        ELSE 'Store' 
    END AS CustomerType,
    COUNT(DISTINCT oh.SalesOrderID) AS TotalOrders,
    SUM(od.LineTotal) AS TotalSpend,
    SUM(od.LineTotal) / COUNT(DISTINCT oh.SalesOrderID) AS AvgSpendPerOrder
FROM Sales.Customer c
JOIN Sales.SalesOrderHeader oh ON c.CustomerID = oh.CustomerID
JOIN Sales.SalesOrderDetail od ON oh.SalesOrderID = od.SalesOrderID
GROUP BY CASE WHEN c.StoreID IS NULL THEN 'Individual' ELSE 'Store' END;

-- 4. Territory & Sales Rep Performance
-- Revenue by territory
SELECT 
    st.Name AS Territory,
    ROUND(SUM(od.LineTotal),0) AS TotalRevenue
FROM Sales.SalesOrderHeader oh
JOIN Sales.SalesOrderDetail od ON oh.SalesOrderID = od.SalesOrderID
JOIN Sales.SalesTerritory st ON oh.TerritoryID = st.TerritoryID
GROUP BY st.Name
ORDER BY TotalRevenue DESC;

-- Top 5 salespeople
SELECT TOP 5
    sp.BusinessEntityID,
    p.FirstName + ' ' + p.LastName AS SalesPerson,
    ROUND(SUM(od.LineTotal),0) AS TotalSales
FROM Sales.SalesOrderHeader oh
JOIN Sales.SalesOrderDetail od ON oh.SalesOrderID = od.SalesOrderID
JOIN Sales.SalesPerson sp ON oh.SalesPersonID = sp.BusinessEntityID
JOIN HumanResources.Employee e ON sp.BusinessEntityID = e.BusinessEntityID
JOIN Person.Person p ON e.BusinessEntityID = p.BusinessEntityID
GROUP BY sp.BusinessEntityID, p.FirstName, p.LastName
ORDER BY TotalSales DESC;

-- 5. Views for Power BI
-- vw_FactSales
USE AdventureWorks2022;
GO

-- Optional: Drop the view if it already exists
IF OBJECT_ID('dbo.vw_FactSales', 'V') IS NOT NULL
    DROP VIEW dbo.vw_FactSales;
GO

CREATE VIEW dbo.vw_FactSales AS
SELECT
    oh.OrderDate,
    od.ProductID,
    oh.CustomerID,
    oh.TerritoryID,
    od.LineTotal,
    od.OrderQty
FROM Sales.SalesOrderHeader AS oh
JOIN Sales.SalesOrderDetail AS od 
    ON oh.SalesOrderID = od.SalesOrderID;
GO

--VW_DimProduct

USE AdventureWorks2022;
GO

-- Drop the view if it already exists (optional but good for development)
IF OBJECT_ID('dbo.vw_DimProduct', 'V') IS NOT NULL
    DROP VIEW dbo.vw_DimProduct;
GO

CREATE VIEW dbo.vw_DimProduct AS
SELECT 
    p.ProductID,
    p.Name AS ProductName,
    ps.Name AS SubCategory,
    p.ListPrice
FROM Production.Product AS p
LEFT JOIN Production.ProductSubcategory AS ps 
    ON p.ProductSubcategoryID = ps.ProductSubcategoryID;
GO

--VW_DimCustomer
-- Drop existing view
IF OBJECT_ID('dbo.vw_DimCustomer', 'V') IS NOT NULL
    DROP VIEW dbo.vw_DimCustomer;
GO

CREATE VIEW dbo.vw_DimCustomer AS
SELECT 
    c.CustomerID,
    COALESCE(p.FirstName + ' ' + p.LastName, s.Name) AS CustomerName,
    CASE 
        WHEN c.StoreID IS NULL THEN 'Individual'
        ELSE 'Store'
    END AS CustomerType,
    t.Name AS Territory
FROM Sales.Customer AS c
LEFT JOIN Person.Person AS p ON c.PersonID = p.BusinessEntityID
LEFT JOIN Sales.Store AS s ON c.StoreID = s.BusinessEntityID
LEFT JOIN Sales.SalesTerritory AS t ON c.TerritoryID = t.TerritoryID;
GO

--Vw_DimDate
-- Drop existing view
IF OBJECT_ID('dbo.vw_DimDate', 'V') IS NOT NULL
    DROP VIEW dbo.vw_DimDate;
GO

CREATE VIEW dbo.vw_DimDate AS
SELECT DISTINCT
    OrderDate,
    YEAR(OrderDate) AS OrderYear,
    MONTH(OrderDate) AS OrderMonth,
    DATENAME(MONTH, OrderDate) AS MonthName,
    DATEPART(QUARTER, OrderDate) AS OrderQuarter
FROM Sales.SalesOrderHeader;
GO