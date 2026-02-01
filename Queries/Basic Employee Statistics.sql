-- Find the total number of employees in the organization

SELECT COUNT(*) AS Total_Employees
FROM retentiondata;

-- Understand gender distribution across the organization

SELECT Gender, COUNT(*) AS Total_Count
FROM retentiondata
GROUP BY Gender;

-- Identify department-wise employee distribution

SELECT Department, COUNT(*) AS Total_Employees
FROM retentiondata
GROUP BY Department;

-- Calculate the average age of employees in the organization

SELECT AVG(Age) AS Average_Age
FROM retentiondata;

-- Analyze educational background distribution of employees

SELECT EducationField, COUNT(*) AS Total_Employees
FROM retentiondata
GROUP BY EducationField;

