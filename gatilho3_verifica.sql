.mode       columns
.headers    on
.nullvalue  NULL

SELECT * 
FROM NumeroDisponivel
WHERE codigoMedi = 2;

INSERT INTO Medicamento VALUES(2, 'Aspirina');

SELECT * 
FROM NumeroDisponivel
WHERE codigoMedi = 2;