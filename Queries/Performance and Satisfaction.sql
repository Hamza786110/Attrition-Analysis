-- select round(avg(JobSatisfaction),1) as AVG_Job_Satisfaction,department
-- from retentiondata
-- group by department;

-- select employeenumber from retentiondata
-- where performancerating>=4;

-- select employeenumber from retentiondata
-- where PerformanceRating>=4 and JobSatisfaction<=2

-- select round(avg(PerformanceRating),1) as AVG_PERFORMANCE , department
-- from retentiondata
-- group by department;

-- select department,avg(JobSatisfaction) as AVG_JOB from retentiondata 
-- where (select avg(JobSatisfaction)from retentiondata ) < 2.5
-- group by department;

-- SELECT 
--     Department,
--     ROUND(AVG(jobsatisfaction), 2) AS AvgSatisfaction
-- FROM retentiondata
-- GROUP BY Department
-- HAVING AVG(JobSatisfaction) < 2.5;



