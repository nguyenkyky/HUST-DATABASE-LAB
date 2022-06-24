--create table regions (
--	region_id int,
--	region_name varchar(25),
--	primary key (region_id)
--);

--create table countries (
--	country_id varchar(3),
--	country_name varchar(40),
--	region_id int,
--	primary key (country_id),
--	foreign key (region_id) references regions(region_id)
--);

--create table locations (
--	location_id int primary key,
--	street_address varchar(40),
--	postal_code varchar(40),
--	city varchar(25),
--	state_province varchar (25),
--	country_id varchar(3),
--	foreign key (country_id) references countries(country_id)
--);

--create table jobs (
--	job_id int primary key,
--	job_title varchar(40),
--	min_salary int,
--	max_salary int
--);

--create table departments (
--	department_id int primary key,
--	department_name varchar(40),
--	location_id int ,
--	foreign key (location_id) references locations(location_id)
--);

--create table employees (
--	employee_id int primary key ,
--	first_name varchar(25),
--	last_name varchar(25),
--	email varchar(40),
--	phone_number varchar(25),
--	hire_date date,
--	job_id int,
--	salary int ,
--	manager_id int ,
--	department_id int ,
--	foreign key (job_id) references jobs(job_id),
--	foreign key (department_id) references departments(department_id)
--);

--create table dependents (
--	dependent_id int primary key ,
--	first_name varchar(25),
--	last_name varchar(25),
--	relationship varchar (10),
--	employee_id int,
--	foreign key (employee_id) references employees(employee_id)
--);





--////////////////////

--create table job_history (
--	employee_id int,
--	start_date date,
--	end_date date,
--	job_id varchar(10),
--	department_id int,
--	primary key (employee_id, start_date),
--	foreign key (department_id) references departments(department_id),
--	foreign key (job_id) references jobs(job_id)
--);

--create table job_grades (
--	grade_level varchar(2),
--	lowest_sal int,
--	highest_sal int
--);


--alter table employees add foreign key (employee_id) references job_history(employee_id);