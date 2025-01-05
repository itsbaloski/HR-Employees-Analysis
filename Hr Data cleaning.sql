Create database projects;

USE projects;

SELECT * From hr;

ALTER table hr
change column ï»¿id emp_id varchar (20) null;

describe hr;

select birthdate from hr;

set sql_safe_updates = 0;

update hr
set birthdate = case
	when birthdate like '%/%' then date_format(str_to_date(birthdate, '%m/%d/%Y'), '%Y-%m-%d')
    when birthdate like '%-%' then date_format(str_to_date(birthdate, '%m-%d-%Y'), '%Y-%m-%d')
    else null
end;

ALTER table hr
modify column birthdate date;

update hr
set hire_date = case
	when hire_date like '%/%' then date_format(str_to_date(hire_date, '%m/%d/%Y'), '%Y-%m-%d')
    when hire_date like '%-%' then date_format(str_to_date(hire_date, '%m-%d-%Y'), '%Y-%m-%d')
    else null
end;

ALTER TABLE hr
MODIFY COLUMN hire_date DATE;

UPDATE hr
SET termdate = NULL
WHERE termdate = '' OR termdate NOT REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}$';

UPDATE hr
SET termdate = STR_TO_DATE(termdate, '%Y-%m-%d %H:%i:%s UTC')
WHERE termdate IS NOT NULL AND termdate != '';

ALTER TABLE hr
MODIFY COLUMN termdate DATE;

select termdate from hr;

alter table hr add column age int;

update hr
set age = timestampdiff(year, birthdate, curdate());

select birthdate, age from hr;

select
	min(age) as youngest,
    max(age) AS oldest
FROM HR;

select count(*) from hr where age < 18;