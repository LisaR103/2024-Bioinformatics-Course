-- Exercise 22 Part2

DROP DATABASE IF EXISTS greenhouses;
CREATE DATABASE greenhouses;
USE greenhouses;

DROP TABLE IF EXISTS Greenhouses;
CREATE TABLE Greenhouses(
ID int PRIMARY KEY auto_increment,
Size_m2 int,
Address varchar (255) NOT NULL,
No_Patches int,
Temp_Celsius float,
Humidity_Percent decimal(4,2),
CONSTRAINT Temp_check CHECK (10 < Temp_Celsius < 50),
CONSTRAINT Humidity_check CHECK (0 < Humidity_Percent < 100));

DROP TABLE IF EXISTS Gardeners;
CREATE TABLE Gardeners(
ID int PRIMARY KEY auto_increment,
First_Name varchar(255),
Last_Name varchar(255),
Address varchar (255),
Telephone int NOT NULL,
Salary int);

DROP TABLE IF EXISTS Plants;
CREATE TABLE Plants(
ID int PRIMARY KEY auto_increment,
Plant_Name varchar(255) UNIQUE,
Taxonomy varchar(255), 
Mut_Type varchar(255) DEFAULT 'wildtype',
Mutation varchar(255),
CONSTRAINT TypeCheck CHECK (Mut_Type in ('wildtype','mutated')));

DROP TABLE IF EXISTS Gardener_Greenhouse;
CREATE TABLE Gardener_Greenhouse(
Gardener_ID int,
Greenhouse_ID int,
Time_h float,
PRIMARY KEY (Gardener_ID,Greenhouse_ID,Time_h),
FOREIGN KEY (Gardener_ID) REFERENCES Gardeners(ID), 
FOREIGN KEY (Greenhouse_ID) REFERENCES Greenhouses(ID));

DROP TABLE IF EXISTS Plant_Greenhouse;
CREATE TABLE Plant_Greenhouse(
Plant_ID int,
Greenhouse_ID int,
Quantity int,
Patch int, 
PRIMARY KEY (Plant_ID,Greenhouse_ID,Patch),
FOREIGN KEY (Plant_ID) REFERENCES Plants(ID), 
FOREIGN KEY (Greenhouse_ID) REFERENCES Greenhouses(ID));


