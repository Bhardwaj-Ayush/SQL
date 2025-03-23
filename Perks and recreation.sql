CREATE DATABASE `PARKS_AND_RECREATION`;
USE `PARKS_AND_RECREATION`;

CREATE TABLE employee_demographics (
	employee_id int not null,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    gender char(10),
    birth_date DATE,
    Primary key (employee_id)
);

CREATE TABLE employee_salary (
	employee_id int not null,
    first_name VARCHAR(50) not null,
    last_name VARCHAR(50) not null,
    occupation varchar(50),
    salary int,
    dept_id int
);

insert into employee_demographics (employee_id,first_name, last_name, age, gender, birth_date) values
(1001, 'Jim', 'Halpert', 30, 'Male','1979-02-22'),
(1002, 'Pam', 'Beasley', 30, 'Female','1987-03-23'),
(1003, 'Dwight', 'Schrute', 29, 'Male','1994-08-23'),
(1004, 'Angela', 'Martin', 31, 'Female','1962-08-23'),
(1005, 'Toby', 'Flenderson', 32, 'Male','1977-08-23'),
(1006, 'Michael', 'Scott', 35, 'Male','1988-08-23'),
(1007, 'Meredith', 'Palmer', 32, 'Female','1980-08-23'),
(1008, 'Stanley', 'Hudson', 38, 'Male','1989-08-23'),
(1009, 'Kevin', 'Malone', 31, 'Male','1983-08-23');

Insert Into employee_salary VALUES
(1001, 'Jim', 'Halpert', 'Salesman', 45000,1),
(1002, 'Pam', 'Beasley', 'Receptionist', 36000,1),
(1003, 'Dwight', 'Schrute','Salesman', 63000,1),
(1004, 'Angela', 'Martin','Accountant', 47000,4),
(1005, 'Toby', 'Flenderson','HR', 50000,3),
(1006, 'Michael', 'Scott','Regional Manager', 65000,3),
(1007, 'Meredith', 'Palmer','Supplier Relations', 41000, null),
(1008, 'Stanley', 'Hudson','Salesman', 48000, 4),
(1009, 'Kevin', 'Malone', 'Accountant', 42000,1);

create table parks_departments (
	department_id int not null auto_increment,
    department_name varchar(50) not null,
    primary key (department_id)
);


insert into parks_departments(department_name) values
('Parks_and_recreation'),
('Animal control'),
('public works'),
('healthcare'),
('library'),
('finance');

select * from employee_demographics where gender = 'male';