-- select * from retentiondata;
-- select avg(MonthlyIncome) as AVG_MONTHLY_INCOME, JobRole 
-- from retentiondata
-- group by JobRole;

-- select round(avg(MonthlyIncome),1) as AVG_MONTHLY_INCOME, Department 
-- from retentiondata
-- group by Department;

-- select (Jobrole) as Job_Role,avg(MonthlyIncome) as AVG_INCOME
-- from retentiondata
-- group by Jobrole
-- order by AVG_INCOME desc limit 5;

-- select EmployeeNumber,MonthlyIncome,Department
-- from retentiondata e
-- where MonthlyIncome>(select avg(MonthlyIncome) as Department_AVG_INCOME from retentiondata where department=e.department);

-- select avg(MonthlyIncome) as AVG_INCOME ,gender
-- from retentiondata
-- group by gender;`

-- select employeenumber,monthlyincome,department,YearsAtCompany
-- from retentiondata
-- where MonthlyIncome<(select avg(MonthlyIncome) as Company_AVG from retentiondata) and YearsAtCompany > 10;