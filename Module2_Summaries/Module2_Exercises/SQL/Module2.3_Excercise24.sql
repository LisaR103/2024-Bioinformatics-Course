-- Exercise 24

USE laboratory;

UPDATE Employees
SET Salary = 3250
WHERE ID = 5;

UPDATE Tools
SET Manufacturer = 'HelloResearch', Price_EUR = 0.9
WHERE ID = 3;

UPDATE Experiments
SET Time_min = 210
WHERE ID = 1;

UPDATE Experiment_Employee
SET Repeats = 12, Time_min = 180
WHERE Experiment_ID = 4 AND Employee_ID = 5;


USE greenhouses;

UPDATE gardeners
SET Salary = 4800
WHERE ID = 4;

UPDATE greenhouses
SET Size_m2 = 450, No_Patches = 180, Temp_Celsius = 33, Humidity_Percent = 72.5
WHERE ID = 4;

UPDATE plants
SET Mutation = 'C500G'
WHERE ID = 2;

