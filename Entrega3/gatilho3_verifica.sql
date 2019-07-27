.mode       columns
.headers    on
.nullvalue  NULL

SELECT * 
FROM Funcionario
WHERE codigo = 2019030;

INSERT INTO Funcionario VALUES(2019030, "Enfermeira", 1300, "Urgencia");

SELECT * 
FROM Funcionario
WHERE codigo = 2019030;