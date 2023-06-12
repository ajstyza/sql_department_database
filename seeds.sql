-- INSERT INTO departments (id, department_name)
-- VALUES 
-- (001, "Humanities"),
-- (002, "Science"),
-- (003, "Medicine"),
-- (004, "Athletics");

-- INSERT INTO roles (id, title, salary)
-- VALUES
-- (001, "professor", 80000),
-- (002, "lecturer", 50000),
-- (003, "TA", 35000),
-- (004, "head coach", 100000),
-- (005, "assistant coach", 80000),
-- (006, "department chair", 200,000);


-- INSERT INTO employees (employee_id, first_name, last_name, role_id, job_title, department_name, manager_id)
-- VALUES
-- (001, "Mark", "Hamil"),
-- (002, "Reginald", "Horseman"),
-- (003, "Ricky", "Ricardo"),
-- (004, "Mark", "Bolan");


INSERT INTO departments (department_name)
VALUES 
("Humanities"),
("Science"),
("Medicine"),
( "Athletics");

INSERT INTO roles (title, salary, department_id)
VALUES
("professor", 80000, 1),
("lecturer", 50000, 1),
("TA", 35000, 1),
("head coach", 100000, 1),
("assistant coach", 80000, 1),
("department chair", 200000, 1);


INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES
("Mark", "Hamil", 1, NULL),
("Reginald", "Horseman", 2, 1),
("Ricky", "Ricardo", 3, 1),
("Mark", "Bolan", 4, 1);