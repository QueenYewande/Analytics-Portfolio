# Palmoria HR Analytics Project

## Project Title
**Palmoria HR Analytics Gender Inequality Project**  
Palmoria Group, a manufacturing company operating in 3 regions in Nigeria has been accused by the media of being a "Manufacturing Patriarchy" suggesting that there are gender inequalities in their regions of operation. 

The owners are concerned that this is not a good PR image for the company, as they plan to expand the business into other locations both locally and internationally. They are also worried that this may spiral downwards into other areas. Data Ninjas have been contracted to identify those key areas that need to be addressed immediately before they get out of hand.

We will be presenting our findings and recommendations based on company data reviewed. A data-driven approach to analyze and optimize HR operations at Palmoria, focused on employee performance, attrition, satisfaction, and workforce planning.

---

## Introduction
This project leverages HR data to provide actionable insights for Palmoria’s Human Resources department. The goal is to identify patterns related to employee attrition, satisfaction, and performance to inform data-driven decisions that can improve retention and workforce efficiency.

---

## Business Questions
- What are the key factors contributing to employee attrition?
- How satisfied are employees across departments and job roles?
- Are there performance gaps based on demographic or departmental attributes?
- What trends exist in promotion cycles and hiring patterns?
- How can Palmoria proactively identify at-risk employees?

---

## Objectives
- Identify drivers of employee turnover and recommend retention strategies.
- Evaluate employee satisfaction across business units.
- Explore demographic and performance data to optimize workforce planning.
- Present insights through interactive Power BI dashboards.

---

## Data Source
The dataset used for this project is a simulated HR dataset provided for training and analytics purposes.  
- Format: CSV  
- Fields include: `EmployeeID`, `Age`, `Gender`, `Department`, `JobRole`, `MonthlyIncome`, `SatisfactionLevel`, `Attrition`, `YearsAtCompany`, `PerformanceRating`, etc.

---

## Data Cleaning
- Removed duplicate records.
- Handled missing values in `SatisfactionLevel`, `PerformanceRating`, and `MonthlyIncome` using median imputation.
- Converted categorical variables (e.g., `Gender`, `Attrition`, `Department`) to appropriate formats.
- Created new calculated fields:
  - `TenureBucket` (e.g., 0–2 years, 3–5 years)
  - `IncomeBand` for income distribution analysis

Tool used: **Power Query** in Power BI.

---

## Data Analysis
Key analysis techniques applied:
- **Descriptive Statistics** to understand overall dataset structure
- **Attrition Analysis** by:
  - Department
  - Age group
  - Tenure
  - Job Role
- **Correlation Matrix** to assess relationships between key variables (e.g., income vs satisfaction)
- **Performance vs Satisfaction** comparison across demographics

Tool used: **Power BI DAX & Power Query**

---

## 📈 Data Visualization
Created interactive dashboards in Power BI to present:
- **Attrition Heatmap** (Department vs Tenure)
- **Satisfaction Breakdown** by department and gender
- **Employee Distribution** by age and tenure
- **Income vs Performance Scatterplot**
- **Attrition Trends** over time

**🔗 Dashboard Link:** *[Embed Power BI Dashboard or Shareable Link]*

---

## Insights
- **High attrition** was observed among employees with 0–2 years of tenure, particularly in the Sales and Support departments.
- **Younger employees** (aged 25–35) showed lower satisfaction scores and higher turnover rates.
- **Training frequency** was positively associated with **performance ratings**.
- **Job Roles** such as "Sales Representative" had a higher than average attrition rate.
- Employees with **low income and low satisfaction** were most likely to leave.

---

## Recommendations
- **Onboarding & Mentorship Programs** for new hires (0–2 years) to reduce early attrition.
- **Targeted Retention Strategy** for Sales and Support departments.
- Implement **Continuous Feedback Systems** to improve employee satisfaction.
- Increase **training opportunities** for underperforming groups.
- Conduct **exit interviews** to validate findings and refine policies.

---

