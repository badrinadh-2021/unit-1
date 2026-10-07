CREATE DATABASE Pharmacy;
USE Pharmacy;
CREATE TABLE Tablets (
    ID INT PRIMARY KEY,
    Tablet_Name VARCHAR(50),
    Tablet_Weight VARCHAR(20),
    Disease VARCHAR(50),
    Symptoms VARCHAR(100)
);
INSERT INTO Tablets VALUES
(1, 'Paracetamol', '500 mg', 'Fever', 'High Temperature'),
(2, 'Dolo 650', '650 mg', 'Fever', 'Body Pain'),
(3, 'Cetirizine', '10 mg', 'Allergy', 'Sneezing'),
(4, 'Azithromycin', '500 mg', 'Infection', 'Sore Throat'),
(5, 'Pantoprazole', '40 mg', 'Acidity', 'Heartburn'),
(6, 'Crocin', '500 mg', 'Cold', 'Headache'),
(7, 'Amoxicillin', '500 mg', 'Bacterial Infection', 'Fever'),
(8, 'Metformin', '500 mg', 'Diabetes', 'High Blood Sugar'),
(9, 'Ibuprofen', '400 mg', 'Pain', 'Body Pain'),
(10, 'Vitamin C', '500 mg', 'Vitamin Deficiency', 'Weakness');

SELECT * FROM Tablets;

ALTER TABLE Tablets
RENAME COLUMN Disease TO Disease_Used_For;

ALTER TABLE Tablets
RENAME COLUMN Symptoms TO Symptoms_Of_Disease;

UPDATE Tablets
SET Disease_Used_For = 'Viral Fever'
WHERE ID = 1;

SELECT * FROM Tablets;