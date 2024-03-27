-- Exercise 21
-- script requires Exercise 20 Part1 and Part2 to work

-- Add the columns Title, Address and City to teachers

USE Exc20_uni;
ALTER TABLE teachers ADD Title varchar(255);
ALTER TABLE teachers ADD Address varchar(255);
ALTER TABLE teachers ADD City varchar(255);

ALTER TABLE teaches CHANGE Hours Time_taught decimal (4,2);
ALTER TABLE visits CHANGE Hours Time_visited decimal (4,2);

USE Exc20_books;
ALTER TABLE publishers ADD Postal_Code varchar(25);
ALTER TABLE wrote RENAME written_by;
ALTER TABLE books DROP COLUMN Translator_ID;


