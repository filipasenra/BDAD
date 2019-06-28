.mode       columns
.headers    on
.nullvalue  NULL

SELECT * 
FROM Prescricao
WHERE codigo = 24;

INSERT INTO Prescricao VALUES(24, 3, 23, 3, 10);

SELECT * 
FROM Prescricao
WHERE codigo = 24;


