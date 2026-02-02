-- Analyze average monthly income across different job roles

select avg(MonthlyIncome) as AVG_MONTHLY_INCOME, JobRole 
from retentiondata
group by JobRole;

-- Compare average monthly income across departments

select round(avg(MonthlyIncome),1) as AVG_MONTHLY_INCOME, Department 
from retentiondata
group by Department;

-- Identify the top 5 job roles with the highest average monthly income

select (Jobrole) as Job_Role,avg(MonthlyIncome) as AVG_INCOME
from retentiondata
group by Jobrole
order by AVG_INCOME desc limit 5;

-- Identify employees earning more than their department's average income

select EmployeeNumber,MonthlyIncome,Department
from retentiondata e
where MonthlyIncome>(select avg(MonthlyIncome) as Department_AVG_INCOME from retentiondata where department=e.department);

-- Analyze average income differences based on gender

select avg(MonthlyIncome) as AVG_INCOME ,gender
from retentiondata
group by gender;

-- Identify employees with more than 10 years at the company earning below the overall company average income

select employeenumber,monthlyincome,department,YearsAtCompany
from retentiondata
where MonthlyIncome<(select avg(MonthlyIncome) as Company_AVG from retentiondata) and YearsAtCompany > 10;
