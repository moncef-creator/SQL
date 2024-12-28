-- SELECT job_posted_date ::DATE as Date , 
-- job_title_short as title , 
-- job_location as job_location,
-- extract(month from job_posted_date) as Month,
-- extract(year from job_posted_date) as Year

-- FROM job_postings_fact
-- LIMIT 5;


-- select extract(month from job_posted_date) as Month,
-- count(job_id)
-- FROM job_postings_fact
-- WHERE job_title_short = 'Data Analyst'
-- GROUP BY Month
-- ORDER BY Month ASC

-- select job_title_short as title ,
-- round(avg(salary_year_avg),2) as Year_salary,
-- round(avg(salary_hour_avg),2) as Hour_salary ,
-- extract(month from job_posted_date) as Month,
-- extract(YEAR from job_posted_date) as Year
-- FROM job_postings_fact
-- WHERE extract(YEAR from job_posted_date) >=2023 
-- and extract(month from job_posted_date)>=6
-- GROUP BY title  ,
-- extract(month from job_posted_date),
-- extract(YEAR from job_posted_date)
-- order by extract(month from job_posted_date)

-- CREATE TABLE january_jobs as
--     SELECT * , 
--     extract(month from job_posted_date) as Month,
--     extract(YEAR from job_posted_date) as Year
--     FROM job_postings_fact
--     WHERE extract(YEAR from job_posted_date) = 2023 
--     and extract(month from job_posted_date) = 1;

-- CREATE TABLE february_jobs as
--     SELECT * , 
--     extract(month from job_posted_date) as Month,
--     extract(YEAR from job_posted_date) as Year
--     FROM job_postings_fact
--     WHERE extract(YEAR from job_posted_date) = 2023 
--     and extract(month from job_posted_date) = 2;

-- CREATE TABLE March_jobs as
--     SELECT * , 
--     extract(month from job_posted_date) as Month,
--     extract(YEAR from job_posted_date) as Year
--     FROM job_postings_fact
--     WHERE extract(YEAR from job_posted_date) = 2023 
--     and extract(month from job_posted_date) = 3;
