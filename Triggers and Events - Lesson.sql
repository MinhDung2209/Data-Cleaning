-- Trigger and Events


DELIMITER $$
CREATE trigger EMPLOYEE_INSERT2
	after insert on employee_salary
    for each row
begin
	insert into employee_demographics (employee_id, first_name, last_name)
    Values (New.employee_id, new.first_name, new.last_name);
end $$

delimiter ;

Insert into employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
values(13, 'Dung', 'Hoang Minh', 'Entrepreneur', 10000000, Null);

Select * from employee_demographics;
select * from employee_salary;

-- EVENTS
DELIMITER $$
CREATE EVENT delete_retirees
ON SCHEDULE EVERY 30 SECOND
DO 
BEGIN
	DELETE 
    FROM employee_demographics
    WHERE age >=60;
END $$
DELIMITER ;

show variables like 'event%';

