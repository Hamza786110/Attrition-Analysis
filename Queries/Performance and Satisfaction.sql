-- Compare average job satisfaction across departments

select round(avg(JobSatisfaction),1) as AVG_Job_Satisfaction,department
from retentiondata
group by department;

-- Identify employees with high performance ratings (4 or above)

select employeenumber from retentiondata
where performancerating>=4;

-- Identify high-performing employees who have low job satisfaction

select employeenumber from retentiondata
where PerformanceRating>=4 and JobSatisfaction<=2

-- Compare average performance ratings across departments

select round(avg(PerformanceRating),1) as AVG_PERFORMANCE , department
from retentiondata
group by department;

-- Identify departments where average job satisfaction is below the overall company average

select department,avg(JobSatisfaction) as AVG_JOB from retentiondata 
where (select avg(JobSatisfaction)from retentiondata ) < 2.5
group by department;

-- Identify departments with consistently low job satisfaction

SELECT 
    Department,
    ROUND(AVG(jobsatisfaction), 2) AS AvgSatisfaction
FROM retentiondata
GROUP BY Department
HAVING AVG(JobSatisfaction) < 2.5;



