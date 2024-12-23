-- CREATE TABLES FOR DATA IMPORT

CREATE TABLE departments (
    dept_no VARCHAR(30),
    dept_name VARCHAR(30)
);

CREATE TABLE dept_emp (
    emp_no INT,
    dept_no VARCHAR(10)
);

CREATE TABLE dept_manager(
    dept_no VARCHAR(10),
    emp_no INT
);

CREATE TABLE employees(
    emp_no INT NOT NULL,
    emp_title VARCHAR(10) NOT NULL,
    birth_date VARCHAR(10) NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL
);


CREATE TABLE salaries(
    emp_no INT,
    salary INT
);


CREATE TABLE titles(
    title_id VARCHAR(10),
    title VARCHAR(30)
);