-- 1. Attrition Rate by Department
SELECT 
    Department,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS Attrition_Rate
FROM HR_Data
GROUP BY Department
ORDER BY Attrition_Rate DESC;

-- 2. Attrition Rate by Age Group
SELECT 
    CF_age_band,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS Attrition_Rate
FROM HR_Data
GROUP BY CF_age_band
ORDER BY Attrition_Rate DESC;

-- 3. Gender Distribution and Attrition
SELECT 
    Gender,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS Attrition_Rate
FROM HR_Data
GROUP BY Gender;

-- 4. Attrition Rate by Job Role
SELECT 
    Job_Role,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS Attrition_Rate
FROM HR_Data
GROUP BY Job_Role
ORDER BY Attrition_Rate DESC;

-- 5. Average Monthly Income by Department
SELECT 
    Department,
    AVG(Monthly_Income) AS Avg_Monthly_Income,
    COUNT(*) AS Total_Employees
FROM HR_Data
GROUP BY Department
ORDER BY Avg_Monthly_Income DESC;

-- 6. Job Satisfaction Impact on Attrition
SELECT 
    Job_Satisfaction,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS Attrition_Rate
FROM HR_Data
GROUP BY Job_Satisfaction
ORDER BY Job_Satisfaction;

-- 7. Performance Rating Distribution
SELECT 
    Performance_Rating,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS Attrition_Rate
FROM HR_Data
GROUP BY Performance_Rating
ORDER BY Performance_Rating;

-- 8. Years at Company Analysis
SELECT 
    Years_At_Company,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS Attrition_Rate
FROM HR_Data
GROUP BY Years_At_Company
ORDER BY Years_At_Company;

-- 9. Education Field Analysis
SELECT 
    Education_Field,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS Attrition_Rate
FROM HR_Data
GROUP BY Education_Field
ORDER BY Attrition_Rate DESC;

-- 10. Business Travel Impact on Attrition
SELECT 
    Business_Travel,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS Attrition_Rate
FROM HR_Data
GROUP BY Business_Travel
ORDER BY Attrition_Rate DESC;

-- 11. Work-Life Balance Analysis
SELECT 
    Work_Life_Balance,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS Attrition_Rate
FROM HR_Data
GROUP BY Work_Life_Balance
ORDER BY Work_Life_Balance;

-- 12. Salary Hike Impact on Attrition
SELECT 
    CASE 
        WHEN Percent_Salary_Hike < 10 THEN 'Low Hike (<10%)'
        WHEN Percent_Salary_Hike BETWEEN 10 AND 15 THEN 'Medium Hike (10-15%)'
        ELSE 'High Hike (>15%)'
    END AS Salary_Hike_Category,
    AVG(Percent_Salary_Hike) AS Avg_Salary_Hike,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS Attrition_Rate
FROM HR_Data
GROUP BY Salary_Hike_Category
ORDER BY Attrition_Rate DESC;

-- 13. Over Time Impact on Attrition
SELECT 
    Over_Time,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS Attrition_Rate
FROM HR_Data
GROUP BY Over_Time
ORDER BY Attrition_Rate DESC;

-- 14. Marital Status Analysis
SELECT 
    Marital_Status,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 2) AS Attrition_Rate
FROM HR_Data
GROUP BY Marital_Status
ORDER BY Attrition_Rate DESC;