
-- Identify which department has higher attrition and how job satisfaction differs across departments

select department,(sum(case when Attrition='Yes' then 1 else 0 end)*100.0/count(*)) as Attrition,avg(JobSatisfaction) as AVG_JOB_SATISFACTION from retentiondata
group by department
order by Attrition desc,
AVG_JOB_SATISFACTION ASC

-- Check whether employees who work overtime earn more or less than those who do not
  
select (avg(case when overtime='Yes' then monthlyincome end ) - avg(case when overtime='No' then monthlyincome end )) as salary_difference
from retentiondata;

-- Analyze whether marital status has an impact on attrition

select (sum(case when attrition='Yes' then 1 else 0 end)*100/count(*)) as attrition_rate,MaritalStatus
from retentiondata
group by MaritalStatus; 

-- Identify the department with the best average performance rating

select department,avg(performancerating) as AVG_Performance_rating
from retentiondata 
group by department
order by AVG_Performance_rating desc
limit 1;
