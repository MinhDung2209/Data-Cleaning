-- String Functions

SELECT LENGTH('Skyfall');

SELECT first_name, length( first_name)
From employee_demographics
ORDER BY 2
;

Select upper(first_name), lower(last_name)
from employee_demographics
order by first_name
;


Select ltrim("                         fsdfad");


-- Substrings
SELECT first_name, 
left(first_name, 4) as L4,
right(first_name, 4) as R4,
substring(first_name,3,2),
birth_date,
substring(birth_date,6,2) as birth_month
FROM employee_demographics
;

-- Replace
select first_name,
REPLACE(first_name, 'a','z')
FROM employee_demographics
;

-- Locate
Select Locate('x', 'Alexander');
select first_name, locate('An', first_name)
FROM employee_demographics
;


-- Concatenation
select first_name, last_name,
concat(first_name, ' ', last_name) AS full_name
FROM employee_demographics
;






