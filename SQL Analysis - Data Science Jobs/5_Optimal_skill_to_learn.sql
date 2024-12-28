
SELECT skills,round(avg(salary_year_avg),2)as salary,count(job_postings_fact.job_id)as count
FROM job_postings_fact
INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
where job_title_short = 'Data Scientist'
and salary_year_avg is NOT NULL
and job_work_from_home = true
GROUP BY skills
Having count(job_postings_fact.job_id)>10
ORDER BY salary DESC , count DESC
limit 25     