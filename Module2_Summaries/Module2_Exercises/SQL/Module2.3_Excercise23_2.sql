-- Exercise 23 Part2

USE greenhouses;

INSERT INTO greenhouses
(Size_m2, Address, No_Patches, Temp_Celsius, Humidity_Percent) VALUES
(60, 'Plant Way 1, 10000 Treeville', 12, 25, 45.00),
(120, 'Plant Way 2, 10000 Treeville', 24, 35, 80.00),
(40, 'Flower Lane 123, 10020 Bushwack', 6, 30, 60.00),
(500, 'Bush Road 5, 10010 Flower Village', 200, 32.5, 75.00);

INSERT INTO gardeners
(First_Name, Last_Name, Address, Telephone, Salary) VALUES
('Christoph', 'Knorr', 'Plant Way 101, 10000 Treeville', 0539112233, 3600),
('Nassim', 'El-Masri', 'Plant Way 25, 10000 Treeville', 0547987321, 4000),
('Claudia', 'Malaria', 'Flower Lane 13, 10020 Bushwack', 0873648258, 4000),
('Anna', 'Dienstag', 'Bush Road 785, 10010 Flower Village', 0493753159, 5000);

INSERT INTO plants
(Plant_Name, Taxonomy, Mut_Type, Mutation) VALUES
('PotatoAC', 'Solanum tuberosum', 'mutated', 'A105C'),
('TomatoCG', 'Solanum lycopersicum', 'mutated', 'C325G'),
('PotatoControl', 'Solanum tuberosum', DEFAULT, NULL),
('TomatoControl', 'Solanum lycopersicum', DEFAULT, NULL),
('CabbageTY', 'Brassica oleracea', 'mutated', 'T20Y'),
('CabbageControl', 'Brassica oleracea', DEFAULT, NULL);

INSERT INTO Gardener_Greenhouse
(Gardener_ID, Greenhouse_ID, Time_h) VALUES
(1, 3, 2.5),
(1, 2, 5.5),
(2, 4, 8),
(3, 4, 8),
(4, 4, 4),
(2, 4, 5);

INSERT INTO Plant_Greenhouse
(Plant_ID, Greenhouse_ID, Quantity, Patch) VALUES
(1, 1, 20, 1),
(1, 1, 20, 2),
(1, 1, 20, 3),
(2, 1, 20, 1),
(2, 1, 20, 2),
(2, 1, 20, 3),
(3, 2, 40, 5),
(3, 2, 40, 6),
(3, 2, 40, 7),
(4, 2, 40, 8),
(4, 2, 40, 9),
(4, 2, 40, 10),
(5, 3, 20, 1),
(5, 3, 20, 2),
(6, 3, 20, 5),
(6, 3, 20, 6);
