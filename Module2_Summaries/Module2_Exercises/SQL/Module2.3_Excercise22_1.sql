-- Exercise 22 Part1

DROP DATABASE IF EXISTS laboratory;
CREATE DATABASE laboratory;
USE laboratory;

DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees(
ID int PRIMARY KEY auto_increment,
First_Name varchar (255) NOT NULL,
Last_Name varchar (255) NOT NULL,
EMail varchar(255) UNIQUE,
Room int DEFAULT 205,
Job varchar(255),
Salary int,
CONSTRAINT Email_Check CHECK (EMail LIKE '%_@%_.%_'));

DROP TABLE IF EXISTS Tools;
CREATE TABLE Tools(
ID int PRIMARY KEY auto_increment,
Tool_Name varchar(255),
Manufacturer varchar(255),
Price_EUR float);

DROP TABLE IF EXISTS Experiments;
CREATE TABLE Experiments(
ID int PRIMARY KEY auto_increment,
Exp_Name varchar(255) UNIQUE,
Time_min int,
Exp_Type varchar(255));

DROP TABLE IF EXISTS Results;
CREATE TABLE Results(
ID int PRIMARY KEY auto_increment,
Result_Name varchar(255),
Description varchar(1000));

DROP TABLE IF EXISTS Experiment_Result;
CREATE TABLE Experiment_Result(
Experiment_ID int,
Result_ID int,
Remark varchar(500),
PRIMARY KEY (Experiment_ID,Result_ID),
FOREIGN KEY (Experiment_ID) REFERENCES Experiments(ID), 
FOREIGN KEY (Result_ID) REFERENCES Results(ID));

DROP TABLE IF EXISTS Experiment_Employee;
CREATE TABLE Experiment_Employee(
Experiment_ID int,
Employee_ID int,
Day varchar(9) NOT NULL,
Repeats int NOT NULL DEFAULT 1,
Time_min int,
PRIMARY KEY (Experiment_ID,Employee_ID),
FOREIGN KEY (Experiment_ID) REFERENCES Experiments(ID), 
FOREIGN KEY (Employee_ID) REFERENCES Employees(ID),
CONSTRAINT workday CHECK (Day in ('Monday','Tuesday','Wednesday','Thursday','Friday')));

DROP TABLE IF EXISTS Experiment_Tool;
CREATE TABLE Experiment_Tool(
Experiment_ID int,
Tool_ID int,
Quantity int,
PRIMARY KEY (Experiment_ID,Tool_ID),
FOREIGN KEY (Experiment_ID) REFERENCES Experiments(ID), 
FOREIGN KEY (Tool_ID) REFERENCES Tools(ID))