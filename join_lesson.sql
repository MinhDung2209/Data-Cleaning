SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
and gender = 'male'
;

SELECT *
FROM employee_salary
WHERE salary <=50000
;

select occupation, salary	
from employee_salary
where salary>50000
;


select occupation, Avg(salary) as avg_salary
from employee_salary
where occupation like '%manager%'
group by occupation
having avg_salary >9000
;

select *
from employee_demographics
;

select *
from employee_salary
;

select *
from employee_demographics as dem
inner join employee_salary as sal
     on dem.employee_id = sal.employee_id
;

select dem.employee_id, age, occupation
from employee_demographics as dem
inner join employee_salary as sal
     on dem.employee_id = sal.employee_id
;


select *
from employee_demographics as dem
right join employee_salary as sal
     on dem.employee_id = sal.employee_id
;

select *
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
inner join parks_departments as pd
	on sal.dept_id = pd.department_id
;
