with skills as (select job_id , STRING_AGG(skills , ', ') as skill_list
FROM skills_job_dim
LEFT join skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
GROUP BY job_id
)

select job_postings_fact.job_id,job_title_short , job_via , salary_year_avg , name , skills.skill_list as skillls
FROM job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id= company_dim.company_id
LEFT JOIN skills ON job_postings_fact.job_id= skills.job_id
WHERE job_title_short = 'Data Scientist' 
    AND salary_year_avg  is NOT NULL 
    AND job_location = 'Anywhere' 
order by salary_year_avg DESC

LIMIT 10

-- select job_id  , STRING_AGG(skills , ', ') as skill_list
-- FROM skills_job_dim
-- LEFT join skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
-- GROUP BY job_id
-- limit 10000