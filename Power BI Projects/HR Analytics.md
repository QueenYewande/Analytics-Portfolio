# HR Analytics Project: Employee Attrition Analysis

---
## Table of Contents

- [Project Title](#project-title)
- [Introduction](#introduction)
- [Business Questions](#business-questions)
- [Objectives](#objectives)
- [Data Source](#data-source)
- [Data Cleaning](#data-cleaning)
- [Data Analysis](#data-analysis)
- [Data Visualization](#data-visualization)
- [Insights](#insights)
- [Recommendations](#recommendations)
- [Conclusion](#conclusion)
- [Tools Used](#tools-used)

---

## Project Title  
**Understanding and Reducing Employee Attrition: An HR Analytics Initiative**
---

## Introduction  
Employee attrition is a critical challenge for organizations as it directly impacts workforce stability, operational efficiency, and cost. This project analyzes historical HR data to uncover the reasons behind high employee turnover between 2015 and 2020. The primary goal is to generate actionable insights and recommendations to reduce attrition and improve retention.

---

## Business Questions  

- What are the key factors contributing to employee attrition?
- Which departments and job roles are most affected?
- What demographic trends (age, employment type, etc.) are evident among employees who leave?
- How does attrition vary over time and across locations?
- What solutions can be implemented to improve employee retention?

---

## Objectives  

- Identify the major causes of employee turnover.
- Analyze trends by department, age, job type, and location.
- Visualize attrition patterns using analytical tools.
- Recommend effective strategies to reduce attrition.
- Outline implementation steps for actionable changes.

---

## Data Source  

The dataset contains HR records from 2015 to 2020 including:
- Employee ID  
- Department  
- Location  
- Age  
- Employment Type (Full-time/Part-time)  
- Exit Date  
- Reason for Exit  
- Job Role  
- Promotion History  

> **Note:** Data is anonymized and sourced internally from the company's HR system.
### Dataset Overview

![Raw Data](https://github.com/QueenYewande/Analytics-Portfolio/blob/main/Power%20BI%20Projects/Raw%20Data.png))
---

## Data Cleaning  

- Removed duplicates and corrected 26 misclassified department entries.
- Standardized department and job titles.
- Handled missing values appropriately.
- Converted dates to standard formats.
- Calculated tenure and grouped age categories.

---

## Data Analysis  

**Key Findings:**

- **44% attrition rate** observed over the reviewed period.
- **2018 and 2019** recorded the highest number of exits — **929** and **831** respectively.
- **Full-time employees** accounted for **1,818** exits compared to **605** part-time staff.
- **Engineering (986), Sales (679), and Research (391)** had the highest turnover.
- **Young employees (average age: 26)** dominate attrition statistics.
- Career growth and lack of promotions are major drivers of exit.
- On average, **2 employees exit per working day** (over 1,305 working days).

---

## Data Visualization  

Visual dashboards were created using **Power BI** and **Excel** to present:

- Yearly attrition trends  
- Department-wise and location-wise turnover  
- Attrition by age group and job type  
- Exit reasons frequency charts  
- Monthly attrition calendar heatmap  
- Promotion history vs exit rate  

> 📂 Visuals and screenshots are available in the `/visuals` folder.

![Employee Analysis](https://github.com/QueenYewande/Analytics-Portfolio/blob/main/Power%20BI%20Projects/Employee%20Analysis.png))

![Exit Analysis](https://github.com/QueenYewande/Analytics-Portfolio/blob/main/Power%20BI%20Projects/Exit%20Analysis.png)


![Pay Analysis](https://github.com/QueenYewande/Analytics-Portfolio/blob/main/Power%20BI%20Projects/Pay%20Analysis.png))


![Promotion and Exit Analysis](https://github.com/QueenYewande/Analytics-Portfolio/blob/main/Power%20BI%20Projects/Promotion%20%26%20Exit%20Analysis.png)

---

## Insights  

- **Career stagnation** is the top reason for resignation.
- The **Engineering department** faces the highest turnover, possibly due to competitive hiring in the tech industry.
- **Lack of promotion opportunities** contributes to disengagement and exit.
- **Young professionals** form the majority of those leaving, suggesting a need for better career development frameworks.
- Attrition is **widespread across all locations**, indicating company-wide structural issues.

---

## Recommendations  

1. **Career Advancement Program**  
   Establish clear career progression plans and promotion timelines.

2. **Mentorship Initiatives**  
   Pair junior staff with mentors, especially in Engineering and Research.

3. **Performance-Based Promotion System**  
   Automate performance tracking to inform promotion decisions.

4. **Automated Exit Interviews**  
   Collect consistent feedback via digital forms and dashboards.

5. **Staff Engagement Surveys**  
   Run quarterly engagement surveys to proactively identify dissatisfaction.

6. **Targeted Retention Campaigns**  
   Launch department-focused retention strategies tailored to young employees.

---

## Recommendations
- Staff promotion should be defined and regular to eliminate uncertainty of career growth
- Provide support to staff to obtain further professional qualifications as required to further enhance professional development
- Work/Life balance should be encouraged by the introduction of employee benefit packages for their health and well being and support given when needed
- For those leaving for personal reasons, confidential counselling should be provided to staff that may need to talk
- Look into the 26 staff members who showed promotions before date of employment for accurate data and if they were paid salary, need for company to look into this as it could be considered a financial crime as may raise issues with audit



---

## Conclusion  

This HR analytics project has identified root causes of attrition and provided evidence-based strategies to tackle them. By implementing the recommendations and monitoring their impact over time, the company can significantly improve employee retention, especially among young, high-potential staff. A data-driven HR strategy is essential to building a resilient and motivated workforce.

---

## Tools Used  

- **Power BI**: Data visualization and dashboards  
- **Microsoft Excel**: Data collection and pivot analysis  
