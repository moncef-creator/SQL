-- CREATE TABLE job_applied (
--     job_id INT , 
--     application_sent_date DATE,
--     custom_resume Boolean,
--     resume_file_name Varchar(255),
--     cover_letter_sent Boolean,
--     cover_letter_file_name Varchar(255),
--     status Varchar(255)
-- );


-- insert INTO job_applied(
--     job_id  , 
--     application_sent_date ,
--     custom_resume ,
--     resume_file_name ,
--     cover_letter_sent ,
--     cover_letter_file_name ,
--     status 
-- );

-- values (
--     1,
--     '01-01-2024',
--     true,
--     'resume_1',
--     true,
--     'cover_letter_1',
--     'submitted'
-- ),
-- (
--     2,
--     '04-01-2024',
--     false,
--     'resume_4',
--     false,
--     'cover_letter_4',
--     'submitted'    
-- );

-- alter TABLE job_applied
-- add contact Varchar(50) 

-- UPDATE job_applied
-- set contact = 'Detlev huch'
-- where job_id = 1;

-- UPDATE job_applied
-- set contact = 'hossman munct'
-- where job_id = 2;

-- alter table job_applied
-- rename column contact to contact_name;

alter table job_applied
alter column contact_name type text;

alter table job_applied
drop column contact_name;

select*
from job_applied