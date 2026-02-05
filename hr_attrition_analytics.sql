-- 1. Attrition Rate by Department
-- Calculates department-wise employee turnover statistics including total employees, attrition count and attrition percentage
SELECT 
    Department,
    COUNT(*) AS Total_Employees,  -- Total number of employees per department
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,  -- Count of employees who left
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS Attrition_Rate  -- Percentage calculation with 2 decimal precision
FROM HR_Data
GROUP BY Department 
ORDER BY Attrition_Rate DESC;  -- Orders results from highest to lowest attrition rate

-- 2. Attrition Rate by Age Group
-- Analyses employee turnover patterns across different age bands to identify demographic trends
SELECT 
    CF_age_band,  -- Age group category
    COUNT(*) AS Total_Employees,  -- Total employees in each age band
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,  -- Count of employees who left per age group
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS Attrition_Rate  -- Attrition rate percentage
FROM HR_Data
GROUP BY CF_age_band  -- Groups by predefined age categories
ORDER BY Attrition_Rate DESC;  -- Sorts from highest to lowest attrition rate

-- 3. Gender Distribution and Attrition
-- Examines gender-based attrition patterns to identify potential diversity issues
SELECT 
    Gender,  -- Employee gender classification
    COUNT(*) AS Total_Employees,  -- Total headcount by gender
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,  -- Number of departures by gender
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS Attrition_Rate  -- Attrition percentage by gender
FROM HR_Data
GROUP BY Gender;  -- Groups results by gender category

-- 4. Attrition Rate by Job Role
-- Identifies specific job positions with highest turnover rates for targeted retention strategies
SELECT 
    Job_Role,  -- Specific job position title
    COUNT(*) AS Total_Employees,  -- Total employees in each role
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,  -- Departures per job role
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS Attrition_Rate  -- Turnover percentage by role
FROM HR_Data
GROUP BY Job_Role  -- Groups by job position
ORDER BY Attrition_Rate DESC;  -- Ranks roles by turnover severity

-- 5. Average Monthly Income by Department
-- Compares compensation levels across departments to identify potential pay equity issues
SELECT 
    Department,  -- Department identifier
    AVG(Monthly_Income) AS Avg_Monthly_Income,  -- Average salary within each department
    COUNT(*) AS Total_Employees  -- Headcount for context
FROM HR_Data
GROUP BY Department 
ORDER BY Avg_Monthly_Income DESC;  -- Sorts from highest to lowest average compensation

-- 6. Job Satisfaction Impact on Attrition
-- Evaluates correlation between satisfaction ratings and employee retention
SELECT 
    Job_Satisfaction,  -- Satisfaction level rating (typically 1-4 scale)
    COUNT(*) AS Total_Employees,  -- Total employees per satisfaction level
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,  -- Departures by satisfaction level
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS Attrition_Rate  -- Turnover rate by satisfaction
FROM HR_Data
GROUP BY Job_Satisfaction  -- Groups by job satisfaction score
ORDER BY Job_Satisfaction;  -- Orders by satisfaction level (lowest to highest)

-- 7. Performance Rating Distribution
-- Assesses relationship between performance evaluations and retention outcomes
SELECT 
    Performance_Rating,  -- Performance evaluation score (typically 1-4 scale)
    COUNT(*) AS Total_Employees,  -- Employee count per performance level
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,  -- Departures by performance rating
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS Attrition_Rate  -- Retention rate by performance
FROM HR_Data
GROUP BY Performance_Rating  -- Groups by performance evaluation score
ORDER BY Performance_Rating;  -- Orders by performance level (lowest to highest)

-- 8. Years at Company Analysis
-- Examines tenure-based attrition patterns to identify critical retention periods
SELECT 
    Years_At_Company,  -- Length of service in years
    COUNT(*) AS Total_Employees,  -- Employee count per tenure group
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,  -- Departures by tenure
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS Attrition_Rate  -- Turnover rate by tenure
FROM HR_Data
GROUP BY Years_At_Company  -- Groups by years of service
ORDER BY Years_At_Company;  -- Orders chronologically by tenure

-- 9. Education Field Analysis
-- Analyses attrition patterns by educational background to identify skill-based trends
SELECT 
    Education_Field,  -- Academic discipline of employee education
    COUNT(*) AS Total_Employees,  -- Headcount per education field
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,  -- Departures by education background
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS Attrition_Rate  -- Turnover rate by education field
FROM HR_Data
GROUP BY Education_Field  -- Groups by educational field
ORDER BY Attrition_Rate DESC;  -- Ranks by highest to lowest attrition rate

-- 10. Business Travel Impact on Attrition
-- Measures effect of travel frequency on employee retention
SELECT 
    Business_Travel,  -- Frequency of business travel
    COUNT(*) AS Total_Employees,  -- Employee count by travel frequency
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,  -- Departures by travel level
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS Attrition_Rate  -- Turnover rate by travel intensity
FROM HR_Data
GROUP BY Business_Travel  -- Groups by travel frequency category
ORDER BY Attrition_Rate DESC;  -- Orders from highest to lowest attrition rate

-- 11. Work-Life Balance Analysis
-- Assesses relationship between work-life balance ratings and employee retention
SELECT 
    Work_Life_Balance,  -- Work-life balance rating (typically 1-4 scale)
    COUNT(*) AS Total_Employees,  -- Employee count per work-life balance score
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,  -- Departures by work-life balance level
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS Attrition_Rate  -- Retention rate by work-life balance
FROM HR_Data
GROUP BY Work_Life_Balance  -- Groups by work-life balance rating
ORDER BY Work_Life_Balance;  -- Orders by balance level (lowest to highest)

-- 12. Salary Hike Impact on Attrition
-- Categorises employees by salary increase ranges and analyses retention impact
SELECT 
    CASE 
        WHEN Percent_Salary_Hike < 10 THEN 'Low Hike (<10%)'  -- Low salary increase category
        WHEN Percent_Salary_Hike BETWEEN 10 AND 15 THEN 'Medium Hike (10-15%)'  -- Moderate increase category
        ELSE 'High Hike (>15%)'  -- High increase category
    END AS Salary_Hike_Category,  -- Categorised salary increase range
    AVG(Percent_Salary_Hike) AS Avg_Salary_Hike,  -- Average increase percentage within each category
    COUNT(*) AS Total_Employees,  -- Employee count per category
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,  -- Departures by salary hike category
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS Attrition_Rate  -- Retention rate by salary category
FROM HR_Data
GROUP BY Salary_Hike_Category  -- Groups by categorised salary increase ranges
ORDER BY Attrition_Rate DESC;  -- Orders from highest to lowest attrition rate

-- 13. Over Time Impact on Attrition
-- Evaluates relationship between overtime work and employee turnover
SELECT 
    Over_Time,  -- Over time status (Yes/No)
    COUNT(*) AS Total_Employees,  -- Employee count by over time status
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,  -- Departures
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS Attrition_Rate  -- Turnover rate by over time status
FROM HR_Data
GROUP BY Over_Time  -- Groups by overtime status
ORDER BY Attrition_Rate DESC;  -- Orders from highest to lowest attrition rate

-- 14. Marital Status Analysis
-- Examines attrition patterns based on employee marital status
SELECT 
    Marital_Status,  -- Marital status category (Single, Married, Divorced)
    COUNT(*) AS Total_Employees,  -- Employee count by marital status
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,  -- Departures by marital status
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS Attrition_Rate  -- Turnover rate by marital status
FROM HR_Data
GROUP BY Marital_Status  -- Groups by marital status category
ORDER BY Attrition_Rate DESC;  -- Orders from highest to lowest attrition rate
