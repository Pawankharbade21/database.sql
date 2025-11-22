CREATE DATABASE employee_mgmt;
USE employee_mgmt;

-- Department Table
CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

-- Employee Table
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    dept_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

-- Attendance Table
CREATE TABLE attendance (
    att_id INT PRIMARY KEY,
    emp_id INT,
    att_date DATE,
    status ENUM('Present','Absent','Leave'),
    FOREIGN KEY (emp_id) REFERENCES employee(emp_id)
);

-- Performance Table
CREATE TABLE performance (
    perf_id INT PRIMARY KEY,
    emp_id INT,
    rating INT CHECK(rating BETWEEN 1 AND 5),
    review_date DATE,
    FOREIGN KEY (emp_id) REFERENCES employee(emp_id)
);
