-- DDL for Advanced SQL Puzzles by Scott Peters

CREATE SCHEMA IF NOT EXISTS advanced_sql_puzzles;
USE advanced_sql_puzzles;


/*
DDL for Puzzle #1
Shopping Carts
*/
DROP TABLE IF EXISTS Cart1;
DROP TABLE IF EXISTS Cart2;
CREATE TABLE Cart1
(
	Item VARCHAR(100) PRIMARY KEY
);
CREATE TABLE Cart2
(
	Item VARCHAR(100) PRIMARY KEY
);
INSERT INTO Cart1 (Item) VALUES
('Sugar'),('Bread'),('Juice'),('Soda'),('Flour');
INSERT INTO Cart2 VALUES
('Sugar'),('Bread'),('Butter'),('Cheese'),('Fruit');


/*
DDL for Puzzle #2
Managers and Employees
*/
DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees
(
EmployeeID  INTEGER PRIMARY KEY,
ManagerID   INTEGER,
JobTitle    VARCHAR(100),
Salary      INTEGER
);

INSERT INTO Employees VALUES
(1001,NULL,'President',185000),(2002,1001,'Director',120000),
(3003,1001,'Office Manager',97000),(4004,2002,'Engineer',110000),
(5005,2002,'Engineer',142000),(6006,2002,'Engineer',160000);


/*
Answer to Puzzle #3
Fiscal Year Table Constraints
*/
DROP TABLE IF EXISTS EmployeePayRecords;
CREATE TABLE EmployeePayRecords
(
EmployeeID  INTEGER,
FiscalYear  INTEGER,
StartDate   DATE,
EndDate     DATE,
PayRate     INT
);


/*
DDL for Puzzle #4
Two Predicates
*/
DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders
(
CustomerID      INTEGER,
OrderID         VARCHAR(100),
DeliveryState   VARCHAR(100),
Amount          INTEGER,
PRIMARY KEY (CustomerID, OrderID)
);
INSERT INTO Orders VALUES
(1001,'Ord936254','CA',340),(1001,'Ord143876','TX',950),(1001,'Ord654876','TX',670),
(1001,'Ord814356','TX',860),(2002,'Ord342176','WA',320),(3003,'Ord265789','CA',650),
(3003,'Ord387654','CA',830),(4004,'Ord476126','TX',120);


/*
DDL for Puzzle #5
Phone Directory
*/
DROP TABLE IF EXISTS PhoneDirectory;
CREATE TABLE PhoneDirectory
(
CustomerID  INTEGER,
type        VARCHAR(100),
PhoneNumber VARCHAR(12),
PRIMARY KEY (CustomerID, type)
);
INSERT INTO PhoneDirectory VALUES
(1001,'Cellular','555-897-5421'),
(1001,'Work','555-897-6542'),
(1001,'Home','555-698-9874'),
(2002,'Cellular','555-963-6544'),
(2002,'Work','555-812-9856'),
(3003,'Cellular','555-987-6541');


/*
DDL for Puzzle #6
Workflow Steps
*/
DROP TABLE IF EXISTS WorkflowSteps;
CREATE TABLE WorkflowSteps
(
Workflow        VARCHAR(100),
StepNumber      INTEGER,
CompletionDate  DATE,
PRIMARY KEY (Workflow, StepNumber)
);
INSERT INTO WorkflowSteps VALUES
('Alpha',1,'2018-07-02'),('Alpha',2,'2018-07-02'),('Alpha',3,'2018-07-01'),
('Bravo',1,'2018-06-25'),('Bravo',2,NULL),('Bravo',3,'2018-06-27'),
('Charlie',1,NULL),('Charlie',2,'2018-07-01');


/*
DDL for Puzzle #7
Mission to Mars
*/
DROP TABLE IF EXISTS Candidates;
DROP TABLE IF EXISTS Requirements;
CREATE TABLE Candidates
(
CandidateID INTEGER,
Occupation  VARCHAR(100),
PRIMARY KEY (CandidateID, Occupation)
);
INSERT INTO Candidates VALUES
(1001,'Geologist'),(1001,'Astrogator'),(1001,'Biochemist'),
(1001,'Technician'),(2002,'Surgeon'),(2002,'Machinist'),
(3003,'Cryologist'),(4004,'Selenologist');
CREATE TABLE Requirements
(
Requirement VARCHAR(100) PRIMARY KEY
);
INSERT INTO Requirements VALUES
('Geologist'),('Astrogator'),('Technician');


/*
DDL for Puzzle #8
Workflow Cases
*/
DROP TABLE IF EXISTS WorkflowCases;
CREATE TABLE WorkflowCases
(
Workflow    VARCHAR(100) PRIMARY KEY,
Case1       INTEGER,
Case2       INTEGER,
Case3       INTEGER
);
INSERT INTO WorkflowCases VALUES
('Alpha',0,0,0),('Bravo',0,1,1),('Charlie',1,0,0),('Delta',0,0,0);


/*
DDL for Puzzle #9
Matching Sets
*/
DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees
(
EmployeeID  INTEGER,
License     VARCHAR(100),
PRIMARY KEY (EmployeeID, License)
);
INSERT INTO Employees VALUES
(1001,'Class A'),
(1001,'Class B'),
(1001,'Class C'),
(2002,'Class A'),
(2002,'Class B'),
(2002,'Class C'),
(3003,'Class A'),
(3003,'Class D');


/*
DDL for Puzzle #10
Mean, Median, Mode and Range
*/
DROP TABLE IF EXISTS SampleData;
CREATE TABLE SampleData
(
IntegerValue INTEGER
);
INSERT INTO SampleData VALUES
(5),(6),(10),(10),(13),(14),(17),(20),(81),(90),(76);


/*
DDL for Puzzle #11
*/
DROP TABLE IF EXISTS TestCases;

CREATE TABLE TestCases
(
RowNumber INTEGER,
TestCase VARCHAR(1),
PRIMARY KEY (RowNumber, TestCase)
);

INSERT INTO TestCases VALUES
(1,'A'),(2,'B'),(3,'C');


/*
DDL for Puzzle #12
Average Days
*/
DROP TABLE IF EXISTS ProcessLog;

CREATE TABLE ProcessLog
(
WorkFlow        VARCHAR(100),
ExecutionDate   DATE,
PRIMARY KEY (WorkFlow, ExecutionDate)
);

INSERT INTO ProcessLog VALUES
('Alpha','2018-06-01'),('Alpha','2018-06-14'),('Alpha','2018-06-15'),
('Bravo','2018-06-01'),('Bravo','2018-06-02'),('Bravo','2018-06-19'),
('Charlie','2018-06-01'),('Charlie','2018-06-15'),('Charlie','2018-06-30');


/*
DDL for Puzzle #13
Inventory Tracking
*/
DROP TABLE IF EXISTS Inventory;

CREATE TABLE Inventory
(
InventoryDate       DATE PRIMARY KEY,
QuantityAdjustment  INTEGER
);

INSERT INTO Inventory VALUES
('2018-7-1',100),('2018-7-2',75),('2018-7-3',-150),
('2018-7-4',50),('2018-7-5',-75);


/*
DDL for Puzzle #14
Indeterminate Process Log
*/
DROP TABLE IF EXISTS ProcessLog;

CREATE TABLE ProcessLog
(
Workflow    VARCHAR(100),
StepNumber  INTEGER,
Status    VARCHAR(100),
PRIMARY KEY (Workflow, StepNumber)
);

INSERT INTO ProcessLog VALUES
('Alpha',1,'Error'),('Alpha',2,'Complete'),('Bravo',1,'Complete'),('Bravo',2,'Complete'),
('Charlie',1,'Complete'),('Charlie',2,'Error'),('Delta',1,'Complete'),('Delta',2,'Running'),
('Echo',1,'Running'),('Echo',2,'Error'),('Foxtrot',1,'Error'),('Foxtrot',2,'Error');


/*
DDL for Puzzle #15
Group Concatenation
*/
DROP TABLE IF EXISTS DMLTable;

CREATE TABLE DMLTable
(
SequenceNumber  INTEGER PRIMARY KEY,
String          VARCHAR(100)
);

INSERT INTO DMLTable VALUES
(1,'SELECT'),
(5,'FROM'),
(7,'WHERE'),
(2,'Product'),
(6,'Products'),
(3,'UnitPrice'),
(9,'> 100'),
(4,'EffectiveDate'),
(8,'UnitPrice');

/*
DDL for Puzzle #16
Reciprocals
*/
DROP TABLE IF EXISTS PlayerScores;

CREATE TABLE PlayerScores
(
PlayerA INTEGER,
PlayerB INTEGER,
Score   INTEGER,
PRIMARY KEY (PlayerA, PlayerB)
);

INSERT INTO PlayerScores VALUES
(1001,2002,150),(3003,4004,15),
(4004,3003,125),(4004,1001,125);


/*
DDL for Puzzle #17
De-Grouping
*/
DROP TABLE IF EXISTS Ungroup;

CREATE TABLE Ungroup
(
ProductDescription  VARCHAR(100) PRIMARY KEY,
Quantity            INTEGER
);

INSERT INTO Ungroup VALUES
('Eraser',3),('Pencil',4),('Sharpener',2);

/*
DDL for Puzzle #18
Seating Chart
*/
DROP TABLE IF EXISTS SeatingChart;

CREATE TABLE SeatingChart
(
SeatNumber INTEGER PRIMARY KEY
);

INSERT INTO SeatingChart VALUES
(7),(13),(14),(15),(27),(28),(29),(30),(31),(32),(33),(34),(35),(52),(53),(54);


/*
DDL for Puzzle #19
Back to the Future
*/
DROP TABLE IF EXISTS TimePeriods;

CREATE TABLE TimePeriods
(
StartDate   DATE,
EndDate     DATE
);

INSERT INTO TimePeriods VALUES
('2018-1-1','2018-1-5'),('2018-1-1','2018-1-3'),
('2018-1-1','2018-1-2'),('2018-1-3','2018-1-9'),
('2018-1-10','2018-1-11'),('2018-1-12','2018-1-16'),
('2018-1-15','2018-1-19');


/*
DDL for Puzzle #20
Price Points
*/
DROP TABLE IF EXISTS ValidPrices;

CREATE TABLE ValidPrices
(
ProductID       INTEGER,
UnitPrice       DECIMAL(4, 2),
EffectiveDate   DATE,
PRIMARY KEY (ProductID, UnitPrice, EffectiveDate)
);

INSERT INTO ValidPrices VALUES
(1001,1.99,'2018-01-01'),
(1001,2.99,'2018-04-15'),
(1001,3.99,'2018-06-08'),
(2002,1.99,'2018-04-17'),
(2002,2.99,'2018-05-19');


/*
DDL for Puzzle #21
Average Monthly Sales
*/
DROP TABLE IF EXISTS Orders;

CREATE TABLE Orders
(
OrderID     VARCHAR(100) PRIMARY KEY,
CustomerID  INTEGER,
OrderDate   DATE,
Amount      INT,
State     VARCHAR(2)
);

INSERT INTO Orders VALUES
('Ord145332',1001,'2018-01-01',100,'TX'),
('Ord657895',1001,'2018-01-01',150,'TX'),
('Ord887612',1001,'2018-01-01',75,'TX'),
('Ord654374',1001,'2018-02-01',100,'TX'),
('Ord345362',1001,'2018-03-01',100,'TX'),
('Ord912376',2002,'2018-02-01',75,'TX'),
('Ord543219',2002,'2018-02-01',150,'TX'),
('Ord156357',3003,'2018-01-01',100,'IA'),
('Ord956541',3003,'2018-02-01',100,'IA'),
('Ord856993',3003,'2018-03-01',100,'IA'),
('Ord864573',4004,'2018-04-01',100,'IA'),
('Ord654525',4004,'2018-05-01',50,'IA'),
('Ord987654',4004,'2018-05-01',100,'IA');


/*
DDL for Puzzle #22
Occurrences
*/
DROP TABLE IF EXISTS ProcessLog;

CREATE TABLE ProcessLog
(
Workflow    VARCHAR(100),
LogMessage  VARCHAR(100),
Occurrences INTEGER,
PRIMARY KEY (Workflow, LogMessage)
);

INSERT INTO ProcessLog VALUES
('Alpha','Error: Conversion Failed',5),
('Alpha','Status Complete',8),
('Alpha','Error: Unidentified error occurred',9),
('Bravo','Error: Cannot Divide by 0',3),
('Bravo','Error: Unidentified error occurred',1),
('Charlie','Error: Unidentified error occurred',10),
('Charlie','Error: Conversion Failed',7),
('Charlie','Status Complete',6);


/*
DDL for Puzzle #23
Divide in Half
*/
DROP TABLE IF EXISTS PlayerScores;

CREATE TABLE PlayerScores
(
PlayerID    INTEGER PRIMARY KEY,
Score       INTEGER
);

INSERT INTO PlayerScores VALUES
(1001,2343),(2002,9432),
(3003,6548),(4004,1054),
(5005,6832);


/*
DDL for Puzzle #24
Page Views
*/
DROP TABLE IF EXISTS SampleData;

CREATE TABLE SampleData
(
RowID           VARCHAR(36)
);

DROP PROCEDURE IF EXISTS insert_n_rows_in_sample_data;
DELIMITER //
CREATE PROCEDURE insert_n_rows_in_sample_data (IN n INT)
BEGIN
	DECLARE x INT DEFAULT 1;
	WHILE x <= n DO
		SET x = x+1;
        INSERT INTO SampleData VALUES(UUID());
    END WHILE;
END//
DELIMITER ;

CALL insert_n_rows_in_sample_data(1000);


/*
DDL for Puzzle #25
Top Vendors
*/
DROP TABLE IF EXISTS Orders;

CREATE TABLE Orders
(
OrderID     VARCHAR(100) PRIMARY KEY,
CustomerID  INTEGER,
OrderCount  INT,
Vendor      VARCHAR(100)
);

INSERT INTO Orders VALUES
('Ord195342',1001,12,'Direct Parts'),
('Ord245532',1001,54,'Direct Parts'),
('Ord344394',1001,32,'ACME'),
('Ord442423',2002,7,'ACME'),
('Ord524232',2002,16,'ACME'),
('Ord645363',2002,5,'Direct Parts');


/*
DDL for Puzzle #26
Previous Years Sales
*/
DROP TABLE IF EXISTS Sales;

CREATE TABLE Sales
(
Year  INTEGER,
Amount  INTEGER
);

INSERT INTO Sales VALUES
(YEAR(NOW()),352645),
(YEAR(DATE_SUB(NOW(), INTERVAL 1 YEAR)),165565),
(YEAR(DATE_SUB(NOW(), INTERVAL 1 YEAR)),254654),
(YEAR(DATE_SUB(NOW(), INTERVAL 2 YEAR)),159521),
(YEAR(DATE_SUB(NOW(), INTERVAL 2 YEAR)),251696),
(YEAR(DATE_SUB(NOW(), INTERVAL 3 YEAR)),111894);


/*
DDL for Puzzle #27
Delete the Duplicates
*/
DROP TABLE IF EXISTS SampleData;

CREATE TABLE SampleData
(
IntegerValue INTEGER
);

INSERT INTO SampleData VALUES
(1),(1),(2),(3),(3),(4);


/*
DDL for Puzzle #28
Fill the Gaps
*/
DROP TABLE IF EXISTS Gaps;

CREATE TABLE Gaps
(
RowNumber   INTEGER PRIMARY KEY,
TestCase    VARCHAR(100)
);

INSERT INTO Gaps VALUES
(1,'Alpha'),(2,NULL),(3,NULL),(4,NULL),
(5,'Bravo'),(6,NULL),(7,'Charlie'),(8,NULL),(9,NULL);


/*
DDL for Puzzle #29
Count the Groupings
*/
DROP TABLE IF EXISTS Groupings;

CREATE TABLE Groupings
(
StepNumber  INTEGER PRIMARY KEY,
TestCase    VARCHAR(100),
Status    VARCHAR(100)
);

INSERT INTO Groupings VALUES
(1,'Test Case 1','Passed'),
(2,'Test Case 2','Passed'),
(3,'Test Case 3','Passed'),
(4,'Test Case 4','Passed'),
(5,'Test Case 5','Failed'),
(6,'Test Case 6','Failed'),
(7,'Test Case 7','Failed'),
(8,'Test Case 8','Failed'),
(9,'Test Case 9','Failed'),
(10,'Test Case 10','Passed'),
(11,'Test Case 11','Passed'),
(12,'Test Case 12','Passed');


/*
DDL for Puzzle #32
First and Last
*/
DROP TABLE IF EXISTS Personnel;

CREATE TABLE Personnel
(
SpacemanID      INTEGER PRIMARY KEY,
JobDescription  VARCHAR(100),
MissionCount    INTEGER
);

INSERT INTO Personnel VALUES
(1001,'Astrogator',6),(2002,'Astrogator',12),(3003,'Astrogator',17),
(4004,'Geologist',21),(5005,'Geologist',9),(6006,'Geologist',8),
(7007,'Technician',13),(8008,'Technician',2),(9009,'Technician',7);


/*
DDL for Puzzle #34
Specific Exclusion
*/
DROP TABLE IF EXISTS Orders;

CREATE TABLE Orders
(
OrderID     VARCHAR(100) PRIMARY KEY,
CustomerID  INTEGER,
Amount      INT
);

INSERT INTO Orders VALUES
('Ord143937',1001,25),('Ord789765',1001,50),
('Ord345434',2002,65),('Ord465633',3003,50);


/*
DDL for Puzzle #35
International vs Domestic Sales
*/
DROP TABLE IF EXISTS Orders;

CREATE TABLE Orders
(
InvoiceID   VARCHAR(100) PRIMARY KEY,
SalesRepID  INTEGER,
Amount      INT,
SalesType   VARCHAR(100)
);

INSERT INTO Orders VALUES
('Inv345756',1001,13454,'International'),
('Inv546744',2002,3434,'International'),
('Inv234745',4004,54645,'International'),
('Inv895745',5005,234345,'International'),
('Inv006321',7007,776,'International'),
('Inv734534',1001,4564,'Domestic'),
('Inv600213',2002,34534,'Domestic'),
('Inv757853',3003,345,'Domestic'),
('Inv198632',6006,6543,'Domestic'),
('Inv977654',8008,67,'Domestic');


/*
DDL for Puzzle #36
Traveling Salesman
The Traveling Salesman is a popular puzzle in optimization.
https://en.wikipedia.org/wiki/Travelling_salesman_problem
For this puzzle, I solve it by hardcoding the number of connections to 4.
You may wish to use recursion and set a maximum number of recursions, as
their is the possibility of the traveling salesman traveling back and forth 
between the same cities.
Alternatively, you could try and solve it with the rule that the traveling
salesman cannot visit each city twice.
----
Tags:
Recursion
UNION ALL
*/
DROP TABLE IF EXISTS Graph;

CREATE TABLE Graph
(
DepartureCity   VARCHAR(100),
ArrivalCity     VARCHAR(100),
Cost            INTEGER,
PRIMARY KEY (DepartureCity, ArrivalCity)
);

INSERT INTO Graph VALUES
('Austin','Dallas',100),
('Dallas','Austin',150),
('Dallas','Memphis',200),
('Memphis','Des Moines',300),
('Dallas','Des Moines',400);


/*
DDL for Puzzle #37
Group Criteria Keys
*/
DROP TABLE IF EXISTS GroupCriteria;

CREATE TABLE GroupCriteria
(
OrderID     VARCHAR(100) PRIMARY KEY,
Distributor VARCHAR(100),
Facility    INTEGER,
Zone      VARCHAR(100),
Amount      INT
);

INSERT INTO GroupCriteria VALUES
('Ord156795','ACME',123,'ABC',100),
('Ord826109','ACME',123,'ABC',75),
('Ord342876','Direct Parts',789,'XYZ',150),
('Ord994981','Direct Parts',789,'XYZ',125);


/*
DDL for Puzzle #38
Reporting Elements
*/
DROP TABLE IF EXISTS RegionSales;

CREATE TABLE RegionSales
(
Region      VARCHAR(100),
Distributor VARCHAR(100),
Sales       INTEGER,
PRIMARY KEY (Region, Distributor)
);

INSERT INTO RegionSales VALUES
('North','ACE',10),
('South','ACE',67),
('East','ACE',54),
('North','Direct Parts',8),
('South','Direct Parts',7),
('West','Direct Parts',12),
('North','ACME',65),
('South','ACME',9),
('East','ACME',1),
('West','ACME',7);


/*
DDL for Puzzle #39
Prime Numbers
*/
DROP TABLE IF EXISTS SampleData;

CREATE TABLE SampleData
(
IntegerValue INTEGER PRIMARY KEY
);

INSERT INTO SampleData VALUES
(1),(2),(3),(4),(5),(6),(7),(8),(9),(10);