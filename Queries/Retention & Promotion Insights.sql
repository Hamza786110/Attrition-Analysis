-- Identify employees with more than 5 years of experience who have not been promoted in the last 3 years

select employeenumber,monthlyincome 
from retentiondata
where TotalWorkingYears>5 and YearsSinceLastPromotion>=3;

-- Identify employees with over 10 years of experience earning less than their department’s average income

select employeenumber,monthlyincome,department
from retentiondata e
where totalworkingyears>10 and monthlyincome<(select avg(monthlyincome) as AVG_DEPARTMENT_INCOME from retentiondata where department = e.department)

-- Identify the highest-performing employee in each department

select employeenumber,department,performancerating
from (
select employeenumber,department,performancerating,
rank() over (partition by department order by performancerating desc) as rnk
from retentiondata) as ranked
where rnk=1;

-- Count employees with more than 10 years of experience in each department

select Department ,count(*) as Employeecount
from retentiondata
where TotalWorkingYears>10
group by department;

-- Identify employees eligible for promotion based on performance and promotion gap

select employeenumber as Eligible_for_Promotion,Department,yearssincelastpromotion,performancerating
from retentiondata
where yearssincelastpromotion>3 and performancerating>=4;
