/* 
Implementacion de una base de datos en un sistema de informacion
2025/03/26 4-I
SANCHEZ DE LA CRUZ VICTOR DANIEL
Actividad 4
*/
--Permutaciones
DROP TABLE IF EXISTS TestCases;

CREATE TABLE TestCases
(
TestCase  VARCHAR(1) PRIMARY KEY
);

INSERT INTO TestCases (TestCase) VALUES
('A'),('B'),('C');
SELECT CONCAT (A, B, C) RESULT
FROM
(SELECT TestCase A FROM TestCases) T1,
(SELECT TestCase B FROM TestCases) T2,
(SELECT TestCase C FROM TestCases) T3
WHERE T1.A <> T2.B
AND T2.B <> T3.C
AND T1.A <> T3.C
ORDER BY A, B, C;
--Promedio de dias

DROP TABLE IF EXISTS ProcessLog;

CREATE TABLE ProcessLog (
Workflow       VARCHAR(100),
ExecutionDate  DATE
);

INSERT INTO ProcessLog (Workflow, ExecutionDate) VALUES
('Alpha', STR_TO_DATE('06/01/2018', '%m/%d/%Y')),
('Alpha', STR_TO_DATE('06/14/2018', '%m/%d/%Y')),
('Alpha', STR_TO_DATE('06/15/2018', '%m/%d/%Y')),
('Bravo', STR_TO_DATE('06/01/2018', '%m/%d/%Y')),
('Bravo', STR_TO_DATE('06/02/2018', '%m/%d/%Y')),
('Bravo', STR_TO_DATE('06/19/2018', '%m/%d/%Y')),
('Charlie', STR_TO_DATE('06/01/2018', '%m/%d/%Y')),
('Charlie', STR_TO_DATE('06/15/2018', '%m/%d/%Y')),
('Charlie', STR_TO_DATE('06/30/2018', '%m/%d/%Y'));

WITH DAYDIFF AS (
SELECT WORKFLOW,
(DATEDIFF (EXECUTIONDATE, 
LAG (EXECUTIONDATE) OVER (PARTITION BY WORKFLOW ORDER BY EXECUTIONDATE))) AS DAY
FROM ProcessLog 
)
SELECT WORKFLOW, AVG(DAY) AS AVARAGE
FROM DAYDIFF
WHERE DAY IS NOT NULL 
GROUP BY WORKFLOW; 

--Seguimiento de Inventario
DROP TABLE IF EXISTS Inventory;

CREATE TABLE Inventory
(
InventoryDate       VARCHAR(10),
QuantityAdjustment  INTEGER NOT NULL
);

INSERT INTO Inventory (InventoryDate, QuantityAdjustment) VALUES
('7/1/2018',100),('7/2/2018',75),('7/3/2018',-150),
('7/4/2018',50),('7/5/2018',-75);

SELECT InventoryDate, QuantityAdjustment, SUM(QuantityAdjustment) OVER (ORDER BY InventoryDate)
FROM Inventory ;

