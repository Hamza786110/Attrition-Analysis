-- select department,(sum(case when Attrition='Yes' then 1 else 0 end)*100.0/count(*)) as Attrition,avg(JobSatisfaction) as AVG_JOB_SATISFACTION from retentiondata
-- group by department
-- order by Attrition desc,
-- AVG_JOB_SATISFACTION ASC

-- select (avg(case when overtime='Yes' then monthlyincome end ) - avg(case when overtime='No' then monthlyincome end )) as salary_difference
-- from retentiondata;

-- select (sum(case when attrition='Yes' then 1 else 0 end)*100/count(*)) as attrition_rate,MaritalStatus
-- from retentiondata
-- group by MaritalStatus; 

-- Find department with highest average performance rating.

-- select department,avg(performancerating) as AVG_Performance_rating
-- from retentiondata r
-- group by department
-- order by AVG_Performance_rating desc
-- limit 1;