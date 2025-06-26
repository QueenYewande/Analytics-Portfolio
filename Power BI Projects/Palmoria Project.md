# Palmoria HR Analytics Project

## Project Title
**Palmoria HR Analytics Gender Inequality Project**  

---

## Introduction
Palmoria Group, a manufacturing company operating in 3 regions in Nigeria has been accused by the media of being a "Manufacturing Patriarchy" suggesting that there are gender inequalities in their regions of operation. 

The owners are concerned that this is not a good PR image for the company, as they plan to expand the business into other locations both locally and internationally. They are also worried that this may spiral downwards into other areas. Data Ninjas have been contracted to identify those key areas that need to be addressed immediately before they get out of hand.

We will be presenting our findings and recommendations based on company data reviewed. A data-driven approach to analyze and optimize HR operations at Palmoria, focused on employee performance, attrition, satisfaction, and workforce planning.

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
![View Palmoria Project](https://github.com/QueenYewande/Analytics-Portfolio/blob/QueenYewande-patch-1/Power%20BI%20Projects/HR%20Raw%20data.png)

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
![View Gender Distribution](https://github.com/QueenYewande/Analytics-Portfolio/blob/QueenYewande-patch-1/Power%20BI%20Projects/Gender%20Distribution.png)

![View Gender Ratings](https://github.com/QueenYewande/Analytics-Portfolio/blob/QueenYewande-patch-1/Power%20BI%20Projects/Gender%20Ratings.png)

![View Gap Analysis](https://github.com/QueenYewande/Analytics-Portfolio/blob/QueenYewande-patch-1/Power%20BI%20Projects/Pay%20Gap%20analysis.png)

![View Salary bonus](https://github.com/QueenYewande/Analytics-Portfolio/blob/QueenYewande-patch-1/Power%20BI%20Projects/Salary%20Bonus.png)

![View Wages](https://github.com/QueenYewande/Analytics-Portfolio/blob/QueenYewande-patch-1/Power%20BI%20Projects/Wages.png)


---

## Insights
### Gender Distribution
- Distribution in the organisation
- 49% of the work force are male
- 47% are female men and 
- 4 % are undisclosed.
- Gender distribution by locations and departments show that there are more males compared to females.
- Only in Abuja are the males more than females by 1. With Kaduna having 23 more males than the females and Lagos by 4.
- 58% of all departments are male dominated compared to 41% of female.
- There are more male employees in the Kaduna and Abuja combined. This may be due to religious reasons as Kaduna is Muslim dominated and most women are not allowed to work.
- Though the over all work force cannot be said to disparage against female, the departments should be focused on as 58 % male dominance is a huge gap compared to 41% of female. 

### Gender Ratings
- While the female work force in general are better rated than their male counter parts, they take home the least.
- 45.71 % of the total salary while the men earn 49.70%. A little fraction from 50% of the entire salary bearing in mind that the females are better rated and the difference in total number of male over female is 24.
- From our findings based on the data, it show that there is a gender pay gap which should be addressed.

### Conclusion
Pay particular attention to the salary structure in Lagos with particular focus to undisclosed – they are the least in number of staff and earns the most across the company. Closing marginal pay gap is good for the bottom line in the long term. It helps your business attract and retain top talent, improve employee engagement, and make an organization diverse and inclusive too. Closing a pay gap is good for the bottom line in the long term. It helps your business attract and retain top talent, improve employee engagement,and make an organization diverse and inclusive too.




---

## Recommendations
- Support Women into more Senior roles
- Implement a diversity quarter in each department
- Follow recommendation from the Regulatory Body
- Upskill the workforce – particularly the females

Effective actions:
•  Include multiple
women in shortlists for recruitment and promotions. ...
•  Use skill-based
assessment tasks in recruitment. ...
•  Use structured
interviews for recruitment and promotions. ...
•  Encourage salary
negotiation by showing salary ranges. ...
•  Introduce
transparency to promotion, pay and reward processes.

---

