# Human Resources Employee Analysis

## Overview
This repository contains an analysis of employee data to uncover insights about demographics, work patterns, and turnover rates in the organization. The data analysis process involved using SQL for data cleaning and preparation, Power BI for visualization, and Python for further analysis.

## Files in the Repository

### Data Files
- **Human Resources.csv:** Primary dataset containing detailed employee records.
- **age_group.csv:** Categorized employee data by age groups.
- **gender.csv:** Gender distribution data.
- **race.csv:** Race/ethnicity breakdown data.
- **location.csv:** Distribution of employees across various locations.
- **jobtitle.csv:** Data on job titles across the company.
- **turnover_rate.csv:** Calculated turnover rates by department.

### Scripts
- **Hr Data cleaning.sql:** SQL script for data cleaning and preparation.
- **Hr data Questions.sql:** SQL script to generate data insights for specific questions.

### Reports
- **HR Employee Report.pbix:** Power BI dashboard containing visualizations of key metrics.
- **HR Employee Report.pdf:** Exported Power BI report for quick review.

## Key Questions Addressed

1. **What is the gender breakdown of employees in the company?**
   - Analyzed gender data to determine proportions of male and female employees.

2. **What is the race/ethnicity breakdown of employees?**
   - Explored race/ethnicity distributions using the `race.csv` file.

3. **What is the age distribution of employees?**
   - Derived from `age_group.csv`.

4. **How many employees work at headquarters versus remote locations?**
   - Location analysis using `location.csv`.

5. **What is the average length of employment for employees who have been terminated?**
   - Calculated from `avg_len_employment.csv`.

6. **How does gender distribution vary across departments and job titles?**
   - Cross-tabulated gender data with department and job titles.

7. **What is the distribution of job titles across the company?**
   - Examined data from `jobtitle.csv`.

8. **Which department has the highest turnover rate?**
   - Insights from `turnover_rate.csv`.

9. **What is the distribution of employees across locations by city and state?**
   - Derived from `location.csv`.

10. **How has the company's employee count changed over time based on hire and term dates?**
    - Time-series analysis on hire and termination data.

11. **What is the tenure distribution for employees?**
    - Derived from `avg_tenure.csv`.

## Tools and Technologies Used

- **SQL:** Data cleaning and preparation.
- **Power BI:** Dashboard creation and data visualization.
- **Python:** Additional data analysis and exploratory insights.

## How to Use This Repository

1. **Power BI Dashboard:**
   - Open `HR Employee Report.pbix` in Power BI to explore interactive dashboards.
   - Refer to the `HR Employee Report.pdf` for a static version of the report.

2. **Data Files:**
   - Use the CSV files for individual data analysis.

3. **SQL Scripts:**
   - Use the SQL scripts to replicate or modify data processing steps.

## Acknowledgments

This project highlights a comprehensive analysis of HR data using multiple tools and techniques to extract meaningful insights. Contributions and feedback are welcome!
