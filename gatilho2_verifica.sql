.mode       columns
.headers    on
.nullvalue  NULL

SELECT * 
FROM NumeroDisponivel
WHERE codigoMedi = 23;

INSERT INTO Prescricao VALUES(26, 5, 23, 3, 10);

SELECT * 
FROM NumeroDisponivel
WHERE codigoMedi = 23;