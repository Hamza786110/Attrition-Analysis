use project;
-- select employeenumber,monthlyincome 
-- from retentiondata
-- where TotalWorkingYears>5 and YearsSinceLastPromotion>=3;

-- elect employeenumber,monthlyincome,department
-- from retentiondata e
-- where totalworkingyears>10 and monthlyincome<(select avg(monthlyincome) as AVG_DEPARTMENT_INCOME from retentiondata where department = e.department)

-- select employeenumber,department,performancerating
-- from (
-- select employeenumber,department,performancerating,
-- rank() over (partition by department order by performancerating desc) as rnk
-- from retentiondata) as ranked
-- where rnk=1;

-- select Department ,count(*) as Employeecount
-- from retentiondata
-- where TotalWorkingYears>10
-- group by department;

-- select employeenumber as Eligible_for_Promotion,Department,yearssincelastpromotion,performancerating
-- from retentiondata
-- where yearssincelastpromotion>3 and performancerating>=4;