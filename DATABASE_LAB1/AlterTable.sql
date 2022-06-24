--1.
--alter table countries rename to country_new;

--2.
--alter table locations add region_id int;

--3.
--alter table locations add ID int;

--4.
--alter table locations add region_id int;

--5.
--alter table locations alter column country_id type int;

--6.
--alter table locations drop column city;

--7.
--alter table locations rename column state_province to state;

--8.
--alter table locations drop constraint locations_pkey cascade;
--alter table locations add primary key (location_id);

--9.
--alter table locations drop constraint locations_pkey cascade;
--alter table locations add primary key (location_id, country_id);

--10.
--alter table locations drop constraint locations_pkey cascade;

--11.
--alter table job_history add foreign key (job_id) references jobs(job_id);

--12.

--13.


--14.
--create index indx_job_id on job_history(job_id);

--15.
--drop index indx_job_id;