-- Exercise 20 Part1

-- Create a database
DROP DATABASE IF EXISTS Exc20_books;
CREATE DATABASE Exc20_books;
USE Exc20_books;

-- Create the Tables
DROP TABLE IF EXISTS publishers;
CREATE TABLE publishers (
ID int PRIMARY KEY, 
Publisher_Name varchar (255), 
City varchar (255), 
Address varchar (255), 
EMail varchar (255), 
Telephone varchar (25),
CONSTRAINT Email_check CHECK (EMail LIKE '%_@%_.%_'));

DROP TABLE IF EXISTS authors;
CREATE TABLE authors 
(ID int PRIMARY KEY, 
Last_Name varchar (255), 
Given_Name varchar (255), 
Title varchar (255), 
Birthdate date, 
Birthplace varchar (255));

DROP TABLE IF EXISTS books;
CREATE TABLE books(
ID int PRIMARY KEY, 
Book_Title varchar(255), 
ISBN varchar(17), 
Publication_Date date, 
Publisher_ID int, 
Page_Count int, 
Price float, 
Original_Language varchar (255),
Translator_ID int,
FOREIGN KEY (Publisher_ID) REFERENCES publishers(ID));

DROP TABLE IF EXISTS wrote;
CREATE TABLE wrote (
Book_ID int, 
Author_ID int,
PRIMARY KEY (Book_ID,Author_ID),
FOREIGN KEY (Book_ID) REFERENCES books(ID),
FOREIGN KEY (Author_ID) REFERENCES authors(ID));