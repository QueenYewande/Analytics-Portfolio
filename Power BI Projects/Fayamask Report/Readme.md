# Sales Performance Analysis – FAYAMASK
---
## Table of Contents

1. [Introduction](#introduction)
2. [Business Questions](#business-questions)
3. [Objectives](#objectives)
4. [Data Source](#data-source)
5. [Data Cleaning](#data-cleaning)
6. [Data Analysis](#data-analysis)
   - [Sales and Profit Overview](#sales-and-profit-overview)
   - [Category & Segment Performance](#category--segment-performance)
   - [Time Analysis](#time-analysis)
   - [Discount Impact](#discount-impact)
7. [Data Visualization](#data-visualization)
8. [Insights](#insights)
9. [Recommendations](#recommendations)
10. [Conclusion](#conclusion)
    
---
##  Introduction

FAYAMASK is a UK-based global safety supplies company focused on producing and selling personal, home, vehicle, fire, rescue, survival, and emergency protection products. Their core mission is to save human and animal lives through the distribution of high-quality safety products using online platforms and digital marketing.

This project explores the company’s sales performance over a defined period, with emphasis on profitability, customer behavior, seasonal trends, and performance across product categories and sales channels.

---

## Business Questions

- What has happened in the FAYAMASK business over the recent years?
- Is there a significant increase in the demand for health and safety products, and is this trend continuing?
- Is the company facing strong competition? If so, how is it being managed?
- What is the current sales and profit performance of the company?
- Can past sales and expenses data predict future trends?

---

## Objectives

- Analyze sales performance over time to assess growth and trends.
- Determine the profitability of the business based on cost and expense data.
- Evaluate the performance of product segments, sales categories, and channels.
- Identify seasonal sales patterns (daily, monthly, quarterly).
- Use business intelligence tools to forecast future sales performance with reasonable certainty.

---

## Data Source

- Internal sales records exported from FAYAMASK's ERP and CRM systems.
- Dataset includes: transaction ID, product name, category, segment, sales channel, discount, cost, profit, date, customer type, and region.

![Dataset Preview](https://github.com/QueenYewande/Analytics-Portfolio/blob/main/Power%20BI%20Projects/Fayamask%20Report/raw%20file%20-%20sales.png)

![Dataset Preview](https://github.com/QueenYewande/Analytics-Portfolio/blob/main/Power%20BI%20Projects/Fayamask%20Report/raw%20file-channel.png)

---

##  Data Cleaning

- Removed duplicates and empty/null entries.
- Standardized date formats and category labels.
- Cleaned currency and numerical formats for sales, profit, and cost.
- Verified column consistency across the dataset.

---

##  Data Analysis

### Sales and Profit Overview
- Total Sales: **$1.24 billion**
- Total Profit: **$590.22 million**
- Total Products Sold: **527 products**

###  Category & Segment Performance
- **Top Product by Sales & Profit:** Fire Extinguisher
- **Top Sales Segment:** Home Users
- **Top Sales Channel:** Website (58.88% of sales)
- **Most Used Payment Method:** Online

###  Time Analysis
- **Best Sales Day:** January 4, 2022 – $43.5M in sales
- **Sales Pattern:** Higher weekday sales compared to weekends
- **Seasonality:** More activity in Q1; further quarterly analysis recommended

###  Discount Impact
- Sales and profit **decline as discount increases**

---

## Data Visualization

### Sales Report
![Sales report](https://github.com/QueenYewande/Analytics-Portfolio/blob/main/Power%20BI%20Projects/Fayamask%20Report/sales%20report.png)
### Sales Segment
![Sales Segment](https://github.com/QueenYewande/Analytics-Portfolio/blob/main/Power%20BI%20Projects/Fayamask%20Report/sales%20segment.png)
### Sales Analysis
![Sales Analysis](https://github.com/QueenYewande/Analytics-Portfolio/blob/main/Power%20BI%20Projects/Fayamask%20Report/daily%20sales%20analysis.png)
### Diagnostic Analysis
![Diagnostic analysis](https://github.com/QueenYewande/Analytics-Portfolio/blob/main/Power%20BI%20Projects/Fayamask%20Report/diagnostic%20analysis.png)
### Discount Report
![Discount report](https://github.com/QueenYewande/Analytics-Portfolio/blob/main/Power%20BI%20Projects/Fayamask%20Report/discount%20%26%20vat%20report.png)
### Predictions
![Predictions](https://github.com/QueenYewande/Analytics-Portfolio/blob/main/Power%20BI%20Projects/Fayamask%20Report/predictions.png)
### Profit by Segment
![Profit Segment](https://github.com/QueenYewande/Analytics-Portfolio/blob/main/Power%20BI%20Projects/Fayamask%20Report/profit%20by%20segment.png)



---

## Insights

- FAYAMASK is profitable, with strong demand for safety products.
- The **Fire Extinguisher** is the leading product in both sales and profit.
- **Weekdays** generate more sales than weekends.
- **Home users** dominate the customer base.
- A significant portion of revenue is generated through the **website channel**.
- **High discounting** reduces revenue and profit, indicating a need for strategic pricing.

---

##  Recommendations

- **Promote Infection Control products** alongside Fire Extinguishers to diversify top-performing categories.
- Encourage **Personal Users** with targeted offers and discounts to boost sales.
- Consider **reducing discount levels** to maximize profit margins.
- Leverage **website traffic and performance** through SEO, A/B testing, and UX improvements.
- Develop **seasonal sales campaigns** for Q1 and weekdays to capitalize on high-performance periods.
- Implement **forecasting models** using Power BI to predict trends and adjust business strategies.

---

## Conclusion

With the aid of structured analysis and visualization, FAYAMASK has demonstrated strong business potential. Strategic marketing, informed pricing, and enhanced targeting of high-performing segments and channels will ensure continued success and resilience in the safety supplies market.

---
