DROP DATABASE IF EXISTS employeeTracker_db;
CREATE DATABASE employeeTracker_db;

USE employeeTracker_db;

CREATE TABLE department(
  id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  title VARCHAR(30) NOT NULL
)

CREATE TABLE job (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL,
    department_id INT NOT NULL REFERENCES department(id) 
    ON DELETE CASCADE
)

CREATE TABLE employees (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    firse_name VARCHAR(30),
    last_name VARCHAR(30),
    job_id INT NOT NULL REFERENCES job(id)
    ON DELETE CASCADE,
    manager_id INT REFERENCES employees(id)
)