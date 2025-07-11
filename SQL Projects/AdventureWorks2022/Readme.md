# Analyzing AdventureWorks2022: A Structured Approach with SQL
![View Dashboard](https://github.com/QueenYewande/Analytics-Portfolio/blob/main/SQL%20Projects/AdventureWorks2022/Adventure%20Works.png)

This project demonstrates how SQL can be used to explore and extract actionable business insights from the **AdventureWorks2022** OLTP database. The analysis covers sales performance, product trends, customer behavior, and sales territories. Views were created to support reporting and visualization using **Power BI**.

---

## Table of Contents

1. [Introduction](#introduction)  
2. [Data Source & Tools](#data-source--tools)  
3. [Views Created](#views-created)  
4. [Data Analysis](#data-analysis)  
5. [Visualizations](#visualizations)  
6. [Conclusion](#conclusion)

---

## Introduction

**SQL (Structured Query Language)** is the backbone of data management in relational databases. In this project, I applied SQL to explore and analyze the AdventureWorks2022 database. This was done through custom queries and views that focus on:

- Sales trends
- Product performance
- Customer spending behavior
- Regional and sales rep performance

---

## Data Source & Tools

### Data Source
The dataset is from Microsoft's **AdventureWorks2022** database, simulating a real-world retail business for a fictional bicycle company.

**Schema includes:**
- Sales Orders  
- Products & Categories  
- Customers (Individuals & Stores)  
- Territories & Sales Reps  

### Tools Used
- **SQL Server Management Studio (SSMS)** – for querying, view creation, and data exploration  
- **Power BI** – for dashboards and visual storytelling

---

## Views Created

Custom views were created to modularize queries and support efficient reporting:

- `vw_FactSales` – Fact table for Sales data
  
<pre> ```sql 
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
    ON oh.SalesOrderID = od.SalesOrderID;```
</pre>

---
## Additional views
- `vw_DimProduct` – Product dimension
- `vw_DimCustomer` – Customer dimension  
- `vw_DimDate` – Date dimension  

These views served as the foundation for Power BI reports and performance optimization.

---

## Data Analysis

### 1. Sales Trend Analysis (2013–2014)
- Analyzed **monthly revenue by territory**
- Identified **highest** and **lowest revenue months** using a CTE
- Used `FORMAT()` and `ROUND()` functions for grouping and display

<pre> ```sql 
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
</pre>

<pre> ```sql 
WITH MonthlySales AS (
    SELECT
        FORMAT(oh.OrderDate, 'yyyy-MM') AS [YearMonth],
        ROUND(SUM(od.LineTotal), 0) AS Revenue
    FROM Sales.SalesOrderHeader AS oh
    JOIN Sales.SalesOrderDetail AS od ON oh.SalesOrderID = od.SalesOrderID
    WHERE oh.OrderDate BETWEEN '2013-01-01' AND '2014-12-31'
    GROUP BY FORMAT(oh.OrderDate, 'yyyy-MM')
)
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
</pre>

>  **Insight:** Revenue fluctuated by month and territory. Identifying peak and low seasons is vital for forecasting and inventory planning.

---

### 2. Product Performance

- Identified **Top 10 products by revenue**
<pre> ```sql 
SELECT TOP 10 
    p.Name AS ProductName,
    ps.Name AS SubCategory,
    ROUND(SUM(od.OrderQty * od.UnitPrice), 0) AS TotalRevenue
FROM Sales.SalesOrderDetail od
JOIN Production.Product p ON od.ProductID = p.ProductID
LEFT JOIN Production.ProductSubcategory ps ON p.ProductSubcategoryID = ps.ProductSubcategoryID
GROUP BY p.Name, ps.Name
ORDER BY TotalRevenue DESC;
</pre>

- Highlighted **Bottom 5 products** to evaluate discontinuation or marketing support

<pre> ```sql 
SELECT TOP 5 
    p.Name AS ProductName,
    ps.Name AS SubCategory,
    SUM(od.OrderQty * od.UnitPrice) AS TotalRevenue
FROM Sales.SalesOrderDetail od
JOIN Production.Product p ON od.ProductID = p.ProductID
LEFT JOIN Production.ProductSubcategory ps ON p.ProductSubcategoryID = ps.ProductSubcategoryID
GROUP BY p.Name, ps.Name
ORDER BY TotalRevenue ASC;
</pre>

> **Insight:** A small set of products generates the majority of revenue (Pareto Principle). Some products underperform and may need intervention.

---

### 3. Customer Insights

- Top 5 **individual customers** identified by total spend
   
<pre> ```sql 
SELECT TOP 5
    c.CustomerID,
    p.FirstName + ' ' + p.LastName AS CustomerName,
    ROUND(SUM(od.LineTotal),0) AS TotalSpent
FROM Sales.Customer c
JOIN Sales.SalesOrderHeader oh ON c.CustomerID = oh.CustomerID
JOIN Sales.SalesOrderDetail od ON oh.SalesOrderID = od.SalesOrderID
JOIN Person.Person p ON c.PersonID = p.BusinessEntityID
WHERE c.StoreID IS NULL
GROUP BY c.CustomerID, p.FirstName, p.LastName
ORDER BY TotalSpent DESC;
</pre>

> **Insight:** Store customers place larger and more frequent orders, but individuals are also key contributors.

- Average Spend: Individual vs Store
<pre> ```sql 
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
</pre>

- Compared **average spend per order** for individual vs store customers

### 4. Territory & Sales Rep Performance

- Total revenue breakdown by **sales territory**
<pre> ```sql 
SELECT 
    st.Name AS Territory,
    ROUND(SUM(od.LineTotal),0) AS TotalRevenue
FROM Sales.SalesOrderHeader oh
JOIN Sales.SalesOrderDetail od ON oh.SalesOrderID = od.SalesOrderID
JOIN Sales.SalesTerritory st ON oh.TerritoryID = st.TerritoryID
GROUP BY st.Name
ORDER BY TotalRevenue DESC;
</pre>

- Top 5 **salespeople** based on total sales
<pre> ```sql 
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
</pre>

>  **Insight:** Sales performance varies by region and rep. High performers can mentor or set benchmarks for others.

---

## Visualizations

![Dashboard](https://github.com/QueenYewande/Analytics-Portfolio/blob/main/SQL%20Projects/AdventureWorks2022/Adventure%20Works.png)

---

## Conclusion

This structured analysis of the **AdventureWorks2022** database uncovered key insights into:

- Sales seasonality and peak months  
- Product success and low performers  
- Spending patterns of customer types  
- Sales rep and territory performance
