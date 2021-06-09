use employee_db; 

INSERT INTO department
    (name)
VALUES
    ('Accounting'),
    ('Operations'),
    ('Executive'),
    ('Sales');

INSERT INTO role
    (name, salary, department_id)
VALUES
    ('CEO', 750000, 1),
    ('CFO', 500000, 1),
    ('IT', 50000, 1),
    ('Web Developer', 1000000, 2),
    ('Human Resources', 1000000, 2),
    ('Customer Service', 60000, 2),
    ('Project Manager', 250000, 3),
    ('Operations Specialist', 250000, 3),
    ('Accountant', 50000, 3);

INSERT INTO employee 
    (first_name, last_name, role_id, manager_id)
VALUES  
    ('Tom', 'Johnson', 1, NULL),
    ('Steve', 'Roberts', 2, 1),
    ('George', 'Nicholson', 3, 1),
    ('Joseph', 'Miller', 4, NULL),
    ('Amanda', 'Rodriguez', 5, 4),
    ('Jamie', 'Smith', 6, 4),
    ('Edward', 'Stark', 7, NULL),
    ('Max', 'Casey', 8, 7),
    ('Jon', 'Adams', 9, 7);