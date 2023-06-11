create database exercise;
create table countries (
country_id varchar (2),
country_name varchar (40),
region_id decimal (10,0)
);
alter table countries 
modify column country_id varchar (4);
create table if not exists countries (
country_id varchar (2),
country_name varchar (40),
region_id decimal (10,0)
);
create table if not exists dup_countries
like countries;
create table if not exists dup_countries
as select * from countries;
create table if not exists countries (
country_id varchar (2) not null,
country_name varchar (40) not null,
region_id decimal (10,0) not null
);
create table if not exists jobs (
job_id varchar (10) not null,
job_title varchar (35)not null,
min_salary decimal (6,0),
max_salary decimal (6,0),
check (max_salary >=2500)
);

alter table jobs
modify column job_id integer not null unique;

create table if not exists countries (
country_id varchar (2),
country_name varchar (40),
check (country_name in ("Italy", "India", "China")),
region_id decimal (10,0)
);
 create table employees (
 department_id
 );
 
 insert into countries values ("C1", "India", "10001");
 insert into countries (country_id, country_name) values ("C1","India");
 create table country_new
 as select * from countries;
 insert into countries (country_id, country_name, region_id) values ("C1", "India", null);
 
 insert into countries values ("C001", "India", 1001),
 ("C002", "USA", 1007),("C003", "UK", 1003);
 
 insert into exercise.jobs (job_id, job_title, min_salary) 
 values  ("1", "officer", "8000");
 describe table exercise.jobs;
 select * from jobs;
 
 create table countries_new (
 country_id integer not null auto_increment primary key,
 country_name varchar (40) not null  default "N/A",
 region_id  integer not null
 );
 insert into countries_new values (501,"India", 102);
 insert into countries_new (region_id) values (109);
 insert into countries_new (country_name, region_id) values ("Australia", 121);