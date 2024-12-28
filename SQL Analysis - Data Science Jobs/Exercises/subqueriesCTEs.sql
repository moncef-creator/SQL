-- subqueries
-- select*
-- FROM(
--     SELECT * , 
--     extract(month from job_posted_date) as Month,
--     extract(YEAR from job_posted_date) as Year
--     FROM job_postings_fact
--     WHERE extract(YEAR from job_posted_date) = 2023 
--     and extract(month from job_posted_date) = 1

-- ) as january

select skills , count
FROM(SELECT count(job_id),skill_id
FROM skills_job_dim
GROUP BY skill_id) as skills_count
LEFT JOIN skills_dim ON skills_count.skill_id=skills_dim.skill_id
order BY count DESC
limit 5

-- CTE
-- with jan as (
--     SELECT * , 
--     extract(month from job_posted_date) as Month,
--     extract(YEAR from job_posted_date) as Year
--     FROM job_postings_fact
--     WHERE extract(YEAR from job_posted_date) = 2023 
--     and extract(month from job_posted_date) = 1    
-- )

-- select*
-- FROM jan


with job_count as (
    select company_id , count(company_id) as total_jobs
    FROM job_postings_fact
    GROUP BY company_id)

select name as company_name , total_jobs
FROM company_dim
LEFT JOIN job_count on job_count.company_id = company_dim.company_id
order by total_jobs DESC



with remotejobs_skills as (select count(job_postings_fact.job_id) 
as skill_count ,
skill_id
FROM job_postings_fact
left join skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
WHERE job_work_from_home = true
GROUP by skill_id
)

SELECT remotejobs_skills.skill_id,skill_count,skills as name
FROM remotejobs_skills
LEFT JOIN skills_dim on skills_dim.skill_id=remotejobs_skills.skill_id
ORDER by skill_count DESC