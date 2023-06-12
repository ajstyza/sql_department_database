-- foreign keys not working 

DROP DATABASE IF EXISTS department_db;
CREATE DATABASE department_db;

USE department_db;

CREATE TABLE departments (
   id INT NOT NULL AUTO_INCREMENT,
   department_name VARCHAR(30) NOT NULL,
   PRIMARY KEY(id),
   -- ON DELETE SET NULL
);

CREATE TABLE roles (
   id INT NOT NULL AUTO_INCREMENT,
   title VARCHAR(30),
   salaray DECIMAL,
   department_id INT NOT NULL,
   FOREIGN KEY(department_id),
   REFERENCES departments(id),
   PRIMARY KEY(id)
  
);

CREATE TABLE employees (
   employee_id INT NOT NULL AUTO_INCREMENT,
   first_name VARCHAR(30),
   last_name VARCHAR(30),
   role_id VARCHAR(30),
   job_title INT NOT NULL,
   manager_id INT NOT NULL,
   FOREIGN KEY(role_id),
   FOREIGN KEY(manager_id),
   REFERENCES roles(id),
   REFERENCES roles(department_id)
   -- ON DELETE SET NULL
);
SELECT DATABASE();