-- Unions
SELECT age, gender
FROM employee_demographics
UNION
SELECT first_name, last_name
FROM employee_salary
;

SELECT first_name, last_name
FROM employee_demographics
UNION distinct #UNION
SELECT first_name, last_name
FROM employee_salary
;

SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT first_name, last_name
FROM employee_salary
;

SELECT first_name, last_name, 'Old Man' as Label
FROM employee_demographics
WHERE age >40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Old Lady' as Label
FROM employee_demographics
WHERE age >40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly Paid Employee' as Label
FROM employee_salary
WHERE salary > 70000
;

SELECT first_name, last_name, 'Old Man' as Label
FROM employee_demographics
WHERE age >40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Old Lady'
FROM employee_demographics
WHERE age >40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly Paid Employee' as Label
FROM employee_salary
WHERE salary > 70000
order by first_name, last_name
;




