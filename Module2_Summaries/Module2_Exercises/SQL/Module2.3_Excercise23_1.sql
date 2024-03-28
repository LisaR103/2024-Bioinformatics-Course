-- Exercise 23

USE laboratory;

INSERT INTO Employees 
(First_Name, Last_Name, EMail, Room, Job, Salary)
VALUES 
('Christoph', 'Knorr', 'c.knorr@research.de' , 100, 'Docent', 3600),
('Nassim', 'El-Masri', 'n.masri@research.de', 205, 'Researcher', 4000),
('Claudia', 'Malaria', 'c.malaria@research.de', 205, 'Researcher', 4000),
('Anna', 'Dienstag', 'a.dienstag@research.de', 210, 'Group Leader', 5000),
('Gundolf', 'Stoll', 'g.stoll@research.de', 105, 'CTA', 3000);

INSERT INTO Tools
(Tool_Name, Manufacturer, Price_EUR) VALUES
('Eppendorf Tube', 'Eppendorf', 0.20),
('Pipette', 'Eppendorf', 25.00),
('Big Tube', 'Bayer', 1.00),
('20 Well Plate', 'Quary', 1.50),
('60 Well Plate', 'Quary', 4.50),
('Lab on a Chip', 'Kleo', 50.00);

INSERT INTO Experiments
(Exp_Name, Time_min, Exp_Type) VALUES
('DNA-Seq', 240, 'Sequencing'),
('RNA-Seq', 240, 'Sequencing'),
('Protein-Seq', 300, 'Sequencing'),
('Protein-Con', 15, 'Concentration Measurement'),
('DNA-Con', 30, 'Concentration Measurement'),
('RNA-Con', 30, 'Concentration Measurement');

INSERT INTO Results
(Result_Name, Description) VALUES
('Con_UP', 'Concentration increased'),
('Con_Down', 'Concentration decreased'),
('No_Change', 'Concentration stayed constant'),
('Full', 'Full sequence could be sequenced'),
('Partly', 'Only a partial sequence was detected');

INSERT INTO Experiment_Result
(Experiment_ID, Result_ID, Remark) VALUES
(4, 3, 'Mutation didn''t change anything'),
(2, 5, 'Mutation lead to loss of RNA'),
(1, 4, 'No influence of mutation');

INSERT INTO Experiment_Employee
(Experiment_ID, Employee_ID, Day, Repeats, Time_min) VALUES
(4, 5, 'Monday', 6, 90),
(1, 2, 'Tuesday', 1, 270),
(2, 3, 'Wednesday', 1, 220);

INSERT INTO Experiment_Tool
(Experiment_ID, Tool_ID, Quantity) VALUES
(1, 3, 1),
(1, 1, 10),
(1, 2, 3),
(2, 3, 1),
(2, 1, 15),
(2, 2, 4),
(3, 1, 20),
(3, 2, 2),
(4, 5, 1),
(5, 4, 1),
(6, 6, 1);
