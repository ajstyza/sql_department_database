-- foreign keys not working 

DROP DATABASE IF EXISTS department_db;
CREATE DATABASE department_db;

USE department_db;

CREATE TABLE departments (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  department_name VARCHAR(30) UNIQUE NOT NULL
);


CREATE TABLE roles (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) UNIQUE NOT NULL,
  salary DECIMAL UNSIGNED NOT NULL,
  department_id INT UNSIGNED NOT NULL,
  INDEX dep_ind (department_id),
  CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES departments(id) ON DELETE CASCADE
);


CREATE TABLE employees (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT UNSIGNED NOT NULL,
  INDEX role_ind (role_id),
  CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES roles(id) ON DELETE CASCADE,
  manager_id INT UNSIGNED,
  INDEX man_ind (manager_id),
  CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employees(id) ON DELETE SET NULL
);


SELECT DATABASE();

-- CREATE TABLE departments (
--    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--    department_name VARCHAR(30) UNIQUE NOT NULL,
--    -- ON DELETE SET NULL
-- );

-- CREATE TABLE roles (
--    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
--    title VARCHAR(30) UNIQUE NOT NULL,
--    salaray DECIMAL UNSIGNED NOT NULL,
--    department_id INT NOT NULL,
--    FOREIGN KEY(department_id),
--    REFERENCES departments(id),
--    PRIMARY KEY(id)
  
-- );

-- CREATE TABLE employees (
--    employee_id INT NOT NULL AUTO_INCREMENT,
--    first_name VARCHAR(30),
--    last_name VARCHAR(30),
--    role_id INT NOT NULL,
--    job_title VARCHAR(30),
--    manager_id INT NOT NULL,
--    FOREIGN KEY(role_id),
--    FOREIGN KEY(manager_id),
--    REFERENCES roles(id),
--    REFERENCES roles(department_id)
--    -- ON DELETE SET NULL
-- );