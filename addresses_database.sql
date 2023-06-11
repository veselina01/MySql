create database if not exists address_database;
use address_database;

create table addresses (
   street_number varchar (20),
   street_name   varchar (80),
   area varchar (80),
   town varchar (80),
   district varchar (80),
   country varchar (50),
   continent varchar (50)
);

alter table addresses
add column isCapital boolean;

insert into addresses 
(street_number, street_name, area, town, district, country, continent, isCapital)
values 
('10', 'Main_Street', 'Downtown', 'New_York_City', 'Manhattan', 'United_States', 'North_America', false),
('25A', 'Elm_Avenue', 'West_End', 'London', 'Westminster', 'United_Kingdom', 'Europe', true), 
('7', 'Rue_de_la_Paix', 'Le_Marais', 'Paris', 'Ile-de-France', 'France', 'Europe', true),
('1234', 'Oak_Lane', 'Green_Meadows', 'Los_Angeles', 'California', 'United_States', 'North_America', false), 
('42', 'High_Street', 'City_Center', 'Sydney', 'New_South_Wales', 'Australia', 'Australia & Oceania', true),
('56B', 'Maple_Road', 'Northside', 'Toronto', 'Ontario', 'Canada', 'North_America', false),
('9', 'Kaiserstrasse', 'Mitte', 'Berlin', 'Berlin', 'Germany', 'Europe', true),
('17', 'Plaza_Mayor', 'Centro', 'Madrid', 'Madrid', 'Spain', 'Europe', true), 
('3', 'Plaza_San_Marco', 'San_Marco', 'Venice', 'Veneto', 'Italy', 'Europe', false),
('1001', 'Avenida_Paulista', 'Jardins', 'San_Paulo', 'San_Paulo', 'Brazil', 'South_America', false),
('8/15', 'Prices_Street', 'New_Town', 'Edinburgh', 'Edinburgh', 'United_Kingdom', 'Europe', false), 
('27', 'Koningsplane', 'Cenrum', 'Amsterdam', 'North_Holland', 'Netherlands', 'Europe', true),
('42A', 'Hauptstrasse', 'Mitte', 'Vienna', 'Vienna', 'Austria', 'Europe', true),
('100', 'Collins_Street', 'CBD', 'Melbourne', 'Victoria', 'Australia', 'Oceania', false),
('123', 'Rua_de_Boavista', 'Baixa', 'Porto', 'Porto', 'Portugal', 'Europe', false),
('5', 'Knez_Mihailova', 'Stari_Grad', 'Belgrade', 'Belgrade', 'Serbia', 'Europe', true),
('9876', 'Ginza', 'Chuo', 'Tokyo', 'Tokyo', 'Japan', 'Asia', true), 
('18', 'Connell_Street', 'North_City', 'Dublin', 'Dublin', 'Ireland', 'Europe', true),
('75c', 'Friedrichtsrasse', 'Kreuzberg', 'Berlin', 'Berlin', 'Germany', 'Europe', true), 
('22', 'Gran_Via', 'Malasana', 'Madrid', 'Madrid', 'Spain', 'Europe', true);addresses


select * from addresses 
where isCapital like true

select * from addresses 
where continent like 'South_America'


select * from addresses
where continent like 'Europe' and isCapital like false