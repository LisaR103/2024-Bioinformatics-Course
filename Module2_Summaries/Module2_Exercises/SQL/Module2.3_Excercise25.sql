-- Exercise 25
-- REDO!!!!!
USE laboratory;

SELECT * FROM Experiment_Tool;

DELETE FROM Experiment_Employee WHERE Employee_ID =5;
DELETE FROM Employees WHERE ID = 5;

DELETE FROM Experiment_Tool WHERE Tool_ID = 6;
DELETE FROM Tools WHERE ID = 6;

USE greenhouses;

DELETE FROM Gardener_Greenhouse WHERE Greenhouse_ID = 3;
DELETE FROM Plant_Greenhouse WHERE Greenhouse_ID = 3;
DELETE FROM greenhouses WHERE ID =3;