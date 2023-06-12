DROP DATABASE IF EXISTS department_db;
CREATE DATABASE department_db;

USE department_db;

CREATE TABLE departments (
   id INT NOT NULL,
   department_name VARCHAR(30) NOT NULL
);

CREATE TABLE roles (
   professor 
   lecturer
   TA 

);

CREATE TABLE employees (
   employee_id INT NOT NULL,
   employee_name VARCHAR(30),
   employee_role VARCHAR(30),
   job_title VARCHAR(30),
   department_name VARCHAR(30),
   salary FLOAT(6),
   manager VARCHAR(30)
);

CREATE TABLE salary (
   
)



SELECT DATABASE();