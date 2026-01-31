-- Calculate the overall attrition rate of employees

select (sum(case when Attrition ='Yes' THEN 1 ELSE 0 END)*100.0/count(*)) as Attrition_Rate
from retentiondata;

-- Identify which departments have higher employee attrition

select (sum(case when Attrition ='Yes' THEN 1 ELSE 0 END)*100.0/count(*)) as Attrition_Rate,Department
from retentiondata
group by Department;

-- Analyze attrition differences between male and female employees

select (sum(case when Attrition ='Yes' THEN 1 ELSE 0 END)*100.0/count(*)) as Attrition_Rate,Gender
from retentiondata
group by Gender;

-- Identify which age group contributes the most to employee attrition

SELECT 
    CASE 
        WHEN ï»¿Age BETWEEN 20 AND 30 THEN '20-30'
        WHEN ï»¿Age BETWEEN 31 AND 40 THEN '31-40'
        WHEN ï»¿Age BETWEEN 41 AND 50 THEN '41-50'
        WHEN ï»¿Age BETWEEN 51 AND 60 THEN '51-60'
        ELSE '60+'
    END AS AgeGroup,
    COUNT(*) AS AttritionCount
FROM retentiondata
WHERE Attrition = 'Yes'
GROUP BY ï»¿Age;

-- Compare average total working years between employees who stayed and left

select round(avg(TotalWorkingYears),1) as AVG_Working_Years,Attrition
from retentiondata
group by Attrition;

-- Determine whether working overtime impacts employee attrition

select (sum((case when Attrition='Yes' then 1 else 0 end)*100.00)/count(*)) as Attrition_Rate,OverTime
from retentiondata
group by OverTime


