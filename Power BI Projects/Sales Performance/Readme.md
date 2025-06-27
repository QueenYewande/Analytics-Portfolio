![image](https://github.com/user-attachments/assets/90a49fd7-475f-4eec-ac37-5789bc7d4616)
# Project Title
**Sales Performance Dashboard and Analysis**

---
## Table of Contents

1. [Project Title](#-project-title)  
2. [Introduction](#-introduction)  
3. [Business Questions](#-business-questions)  
4. [Objectives](#-objectives)  
5. [Data Source](#️-data-source)  
6. [Data Cleaning](#-data-cleaning)  
7. [Data Analysis](#-data-analysis)  
   - [Pivot Tables](#-pivot-tables)  
   - [Power Pivot (DAX)](#-power-pivot-dax)  
8. [Data Visualization](#-data-visualization)  
9. [Insights](#-insights)  
10. [Recommendations](#-recommendations)  

---
## Introduction

In today’s competitive business environment, understanding sales performance is critical for sustaining growth and improving profitability. This project analyzes sales performance data across various dimensions, including category, region, country, salesperson, and product. The goal is to derive actionable insights that can help decision-makers identify strong performers and areas that need strategic attention.

---

## Business Questions

- Which product categories generate the most revenue?
- What is the revenue distribution by region and country?
- Who are the top 10 salespeople by revenue?
- What are the top 5 best-selling products?
- Which markets (region/country) require strategic improvement?

---

## Objectives

- Identify high-performing sales categories and regions.
- Highlight top salespeople and products contributing to revenue.
- Provide a comparative breakdown of revenue performance by country.
- Utilize data analytics tools to extract and visualize key metrics.
- Recommend strategic actions based on findings to boost sales performance.

---

## Data Source

The dataset used in this project was obtained from the company’s internal CRM/exported Excel records and includes the following fields:

- Salesperson
- Country
- Region
- Product Category
- Product Name
- Revenue
- Quantity Sold
- Date of Sale

![View Data Source](https://github.com/QueenYewande/Analytics-Portfolio/blob/main/Power%20BI%20Projects/Sales%20Performance/raw%20file.png)

---

## Data Cleaning

Steps performed:

- Removed duplicates.
- Formatted date fields.
- Filled or removed null values where appropriate.
- Standardized country and region names.
- Ensured revenue and quantity fields are in correct numeric format.

Tools used: **Excel**, **Power Query**
![Viee Power Query](https://github.com/QueenYewande/Analytics-Portfolio/blob/main/Power%20BI%20Projects/Sales%20Performance/power%20query.png)

---

## Data Analysis

Analysis focused on the following areas:

### Pivot Tables

- Revenue by Category
- Revenue by Region
- Top 10 Salespersons by Revenue
- Country-level Revenue Performance
- Top 5 Products by Revenue

![View Pivot Analysis](
https://github.com/QueenYewande/Analytics-Portfolio/blob/main/Power%20BI%20Projects/Sales%20Performance/pivot.png)

### Power Pivot (DAX)

- Created calculated fields: `Total Revenue`, `Total Boxes`, `Total Products`, `Total Salespersons`, `Market Coverage`
- Created measures to compute top N performers dynamically
- Built relationships between tables (e.g., Sales, Products, Salesperson)


![View Power Pivot](https://github.com/QueenYewande/Analytics-Portfolio/blob/main/Power%20BI%20Projects/Sales%20Performance/power%20pivot.png)

---

## Data Visualization

Created using **Excel Dashboards** and **Power BI**:

- Revenue by Product Category
- Revenue by Country
- Revenue by Region over Time
- Top 10 Salespeople by Revenue
- Top 5 Products Revenue Share

![View Visualization](https://github.com/QueenYewande/Analytics-Portfolio/blob/main/Power%20BI%20Projects/Sales%20Performance/dashboard.png)

---

## Insights

- **Top Category**: Bars ontributed the highest revenue, followed by Bites.
- **Top Region**: APAC was the best-performing region.
- **Best Countries**: Canada and USA dominated sales figures.
- **Top Salespeople**: The highest top 10 salespeople was Gunar Cockshoot.
- **Top Products**: The top 5 products are Bakers Choco Chips, Spicy Special Slims, After ine, Eclairs, 85% Dark Bars.
---

## Recommendations

- Increase inventory and marketing investment for top-performing categories.
- Consider regional expansion in high-performing countries such as Canada and USA.
- Provide incentives and training programs to underperforming sales teams.
- Use performance metrics from top salespeople to develop best-practice strategies.
- Reevaluate product lines with low sales contributions and phase out underperformers.
