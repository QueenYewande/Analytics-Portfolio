# Sales Performance Analysis Report


---
## Table of Contents

1. [Project Title](#project-title)
2. [Introduction](#introduction)
3. [Business Questions](#business-questions)
4. [Objectives](#objectives)
5. [Data Source](#data-source)
6. [Data Cleaning](#data-cleaning)
7. [Data Analysis](#data-analysis)
   - [Pivot Tables](#pivot-tables)
   - [Power Pivot (DAX)](#power-pivot-dax)
8. [Data Visualization](#data-visualization)
9. [Insights](#insights)
10. [Recommendations](#recommendations)
    
---
## Project Title
**Sales Performance Dashboard and Analysis**

----

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

---

## Data Cleaning

Steps performed:

- Removed duplicates.
- Formatted date fields.
- Filled or removed null values where appropriate.
- Standardized country and region names.
- Ensured revenue and quantity fields are in correct numeric format.

Tools used: **Excel**, **Power Query**

---

## Data Analysis

Analysis focused on the following areas:

### Pivot Tables

- Revenue by Category
- Revenue by Region
- Top 10 Salespersons by Revenue
- Country-level Revenue Performance
- Top 5 Products by Revenue

### Power Pivot (DAX)

- Created calculated fields: `Total Revenue`, `Average Revenue`, `Sales Contribution %`
- Created measures to compute top N performers dynamically
- Built relationships between tables (e.g., Sales, Products, Salesperson)

---

## Data Visualization



---

## Insights


##  Overall Summary

- **Total Revenue:** `$19,488,363`
- **Total Boxes Sold:** `3,076,316`
- **Total Products:** `22`
- **Total Salespersons:** `25`
- **Market Coverage:** `6 Regions`

---

## Category Performance (by Revenue)

| Category | Revenue Share |
|----------|----------------|
| Bars     | 46.95%         |
| Bites    | 34.69%         |
| Other    | 18.36%         |

> 📌 **Insight:** The **Bars** and **Bites** categories together contribute over 80% of total revenue. Prioritize these for promotions and inventory planning.

---

##  Regional Performance

| Region     | Revenue  |
|------------|----------|
| APAC       | $6.4M    |
| Toronto    | $3.3M    |
| Sydney     | $3.3M    |
| Americas   | $3.2M    |
| Europe     | $3.2M    |

> 📌 **Insight:** APAC is the highest-performing region. Consider expanding distribution, marketing, and product variety in this region.

---

## Top 10 Salespersons by Revenue

| Salesperson         | Revenue   |
|---------------------|-----------|
| Gunar Cockshoot     | $932,280  |
| Marney O'Brien      | $904,423  |
| Dotty Strutley      | $889,471  |
| Wilone O'Kielt      | $884,833  |
| Beverie Moffet      | $876,909  |
| Jan Morforth        | $872,017  |
| Dennison Crosswaite | $870,955  |
| Andria Kimpton      | $869,700  |
| Kelci Walkden       | $866,585  |
| Rafaellita Blaksland| $868,425  |

> 📌 **Insight:** Top-performing salespersons drive significant revenue. Leverage their expertise for team mentoring and performance scaling.

---

##  Top 5 Products by Revenue

| Product               | Revenue   |
|------------------------|-----------|
| Baker’s Choco Chips    | $1.6M     |
| Spicy Special Slims    | $1.6M     |
| After Nines            | $1.4M     |
| Eclairs                | $1.4M     |
| 85% Dark Bars          | $1.2M     |

> 📌 **Insight:** These top products are strong revenue drivers. Prioritize stock, marketing campaigns, and bundle offers around them.

---

##  Country-Level Revenue

| Country    | Revenue |
|------------|---------|
| USA        | $3.3M   |
| Canada     | $3.2M   |
| Australia  | $3.3M   |

> 📌 **Insight:** These countries are consistently high performers. Consider them for loyalty programs, pilot product launches, or regional promotions.

---

## Recommendations

1. **Invest more in APAC and top-performing countries** to maximize returns.
2. **Prioritize production and promotion** of Bars and Bites, especially top 5 products.
3. **Design an incentive plan** to retain and further motivate top salespersons.
4. **Develop mentorship programs** using top sellers to train others.
5. **Optimize discount strategies** to prevent erosion of revenue and profit margins.

---
