-- Exercise 20 Part 2

-- Create Database
DROP DATABASE IF EXISTS Exc20_uni;
CREATE DATABASE Exc20_uni;
USE Exc20_uni;

-- Create Tables

DROP TABLE IF EXISTS courses;
CREATE TABLE courses (
ID int PRIMARY KEY, 
Course_Name varchar(255), 
Course_Length varchar(255), 
Room varchar (10));

DROP TABLE IF EXISTS teachers;
CREATE TABLE teachers(
ID int PRIMARY KEY, 
Last_Name varchar (255), 
Given_Name varchar (255), 
Room varchar (10), 
EMail varchar (255), 
Telephone varchar (15),
CONSTRAINT Email_check_teachers CHECK (EMail LIKE '%_@%_.%_'));

DROP TABLE IF EXISTS students;
CREATE TABLE students (
ID int PRIMARY KEY, 
Last_Name varchar (255), 
Given_Name varchar(255), 
EMail varchar (255),
CONSTRAINT Email_check_students CHECK (EMail LIKE '%_@%_.%_'));

DROP TABLE IF EXISTS teaches;
CREATE TABLE teaches (
Course_ID int, 
Teacher_ID int, 
Weekday varchar (8), 
Hours decimal(4,2),
PRIMARY KEY (Course_ID, Teacher_ID, Weekday, Hours),
FOREIGN KEY (Course_ID) REFERENCES courses(ID),
FOREIGN KEY (Teacher_ID) REFERENCES teachers(ID));

DROP TABLE IF EXISTS visits;
CREATE TABLE visits (
Course_ID int, 
Student_ID int, 
Weekday varchar (8), 
Hours decimal (4,2),
PRIMARY KEY (Course_ID, Student_ID, Weekday, Hours),
FOREIGN KEY (Course_ID) REFERENCES courses(ID),
FOREIGN KEY (Student_ID) REFERENCES students(ID));



