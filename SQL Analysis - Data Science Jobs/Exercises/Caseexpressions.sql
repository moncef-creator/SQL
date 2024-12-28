select count(job_id),
    case
        when job_location = 'Anywhere' then 'remote'
        when job_location = 'New York, NY' then 'local'
        else 'Onsite'
    end as location_category
FROM job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY location_category;

select job_title_short,
round(avg(salary_year_avg),2) as Year_salary,
    CASE
        when avg(salary_year_avg)>=100000 then 'High Salary'
        when avg(salary_year_avg)>50000 then 'Medium Salary'
        else  'low Salary'
    End as Category
FROM job_postings_fact
group by job_title_short
ORDER BY Year_salary DESC
