--
-- File generated with SQLiteStudio v3.2.1 on sáb abr 13 19:37:56 2019
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Armazem
CREATE TABLE Armazem (codigo INT PRIMARY KEY UNIQUE NOT NULL ON CONFLICT ABORT, codigoHosp REFERENCES Hospital (Codigo) NOT NULL ON CONFLICT ABORT) WITHOUT ROWID;
INSERT INTO Armazem (codigo, codigoHosp) VALUES (1, 20);

-- Table: Consulta
CREATE TABLE Consulta (codigo INT PRIMARY KEY, Data_examinacao DATE NOT NULL ON CONFLICT ABORT) WITHOUT ROWID;
INSERT INTO Consulta (codigo, Data_examinacao) VALUES (1, '20-01-2019');
INSERT INTO Consulta (codigo, Data_examinacao) VALUES (2, '22-01-2019');

-- Table: Departamento
CREATE TABLE Departamento (nome TEXT (6, 20) PRIMARY KEY, CodigoHosp INT REFERENCES Hospital (Codigo) ON DELETE SET NULL ON UPDATE CASCADE NOT NULL) WITHOUT ROWID;
INSERT INTO Departamento (nome, CodigoHosp) VALUES ('Consulta Externa', 20);
INSERT INTO Departamento (nome, CodigoHosp) VALUES ('Cuidados Intensivos', 20);
INSERT INTO Departamento (nome, CodigoHosp) VALUES ('Obstetricia', 20);
INSERT INTO Departamento (nome, CodigoHosp) VALUES ('Pediatria', 20);
INSERT INTO Departamento (nome, CodigoHosp) VALUES ('Urgencia', 20);

-- Table: Doente
CREATE TABLE Doente (codigo INT PRIMARY KEY REFERENCES Pessoa (codigo) ON DELETE SET NULL ON UPDATE CASCADE) WITHOUT ROWID;
INSERT INTO Doente (codigo) VALUES (2019021);
INSERT INTO Doente (codigo) VALUES (2019022);
INSERT INTO Doente (codigo) VALUES (2019023);
INSERT INTO Doente (codigo) VALUES (2019024);
INSERT INTO Doente (codigo) VALUES (2019025);
INSERT INTO Doente (codigo) VALUES (2019026);
INSERT INTO Doente (codigo) VALUES (2019027);
INSERT INTO Doente (codigo) VALUES (2019029);
INSERT INTO Doente (codigo) VALUES (2019030);

-- Table: Enfermaria
CREATE TABLE Enfermaria (codigo INT PRIMARY KEY, capacidade INT NOT NULL ON CONFLICT ABORT CHECK (capacidade > 0), NomeDep TEXT (6, 20) REFERENCES Departamento (nome) ON DELETE SET NULL ON UPDATE CASCADE NOT NULL ON CONFLICT ABORT) WITHOUT ROWID;
INSERT INTO Enfermaria (codigo, capacidade, NomeDep) VALUES (1, 25, 'Urgencia');
INSERT INTO Enfermaria (codigo, capacidade, NomeDep) VALUES (2, 40, 'Cuidados Intensivos');
INSERT INTO Enfermaria (codigo, capacidade, NomeDep) VALUES (3, 10, 'Pediatria');
INSERT INTO Enfermaria (codigo, capacidade, NomeDep) VALUES (4, 5, 'Consulta Externa');
INSERT INTO Enfermaria (codigo, capacidade, NomeDep) VALUES (5, 20, 'Obstetricia');

-- Table: EquipaMultidisciplinar
CREATE TABLE EquipaMultidisciplinar (CodigoFunc INT NOT NULL ON CONFLICT ABORT REFERENCES Funcionario (codigo) ON DELETE SET NULL ON UPDATE CASCADE, codigoDoen INT REFERENCES Doente (codigo) ON DELETE SET NULL ON UPDATE CASCADE NOT NULL ON CONFLICT ABORT, PRIMARY KEY (CodigoFunc, codigoDoen)) WITHOUT ROWID;

-- Table: Estadia
CREATE TABLE Estadia (cama INT, codigoDoen INT REFERENCES Doente (codigo) ON DELETE SET NULL ON UPDATE CASCADE, Data_inicio DATE NOT NULL ON CONFLICT ABORT, Data_final DATE NOT NULL ON CONFLICT ABORT, Cod_Enfermaria INTEGER REFERENCES Enfermaria (codigo) ON DELETE SET NULL ON UPDATE CASCADE, PRIMARY KEY (cama, codigoDoen)) WITHOUT ROWID;
INSERT INTO Estadia (cama, codigoDoen, Data_inicio, Data_final, Cod_Enfermaria) VALUES (4, 2019021, '21-02-2019', '03-03-2019', 2);
INSERT INTO Estadia (cama, codigoDoen, Data_inicio, Data_final, Cod_Enfermaria) VALUES (10, 2019024, '05-05-2019', '21-05-2019', 3);

-- Table: Funcionario
CREATE TABLE Funcionario (codigo INT PRIMARY KEY REFERENCES Pessoa (codigo) ON DELETE SET NULL ON UPDATE CASCADE, funcao TEXT (6, 20) NOT NULL, ordenado DECIMAL NOT NULL ON CONFLICT ABORT CHECK (ordenado >= 0), NomeDep TEXT (6, 20) REFERENCES Departamento (nome) NOT NULL ON CONFLICT ABORT) WITHOUT ROWID;
INSERT INTO Funcionario (codigo, funcao, ordenado, NomeDep) VALUES (2019001, 'Auxiliar', 700, 'Urgencia');
INSERT INTO Funcionario (codigo, funcao, ordenado, NomeDep) VALUES (2019002, 'Auxiliar', 700, 'Urgencia');
INSERT INTO Funcionario (codigo, funcao, ordenado, NomeDep) VALUES (2019003, 'Enfermeiro', 1000, 'Urgencia');
INSERT INTO Funcionario (codigo, funcao, ordenado, NomeDep) VALUES (2019004, 'Enfermeiro', 1000, 'Urgencia');
INSERT INTO Funcionario (codigo, funcao, ordenado, NomeDep) VALUES (2019005, 'Medico de familia', 1800, 'Urgencia');
INSERT INTO Funcionario (codigo, funcao, ordenado, NomeDep) VALUES (2019006, 'Auxiliar', 700, 'Cuidados Intensivos');
INSERT INTO Funcionario (codigo, funcao, ordenado, NomeDep) VALUES (2019007, 'Enfermeiro', 1000, 'Cuidados Intensivos');
INSERT INTO Funcionario (codigo, funcao, ordenado, NomeDep) VALUES (2019008, 'Enfermeiro', 1000, 'Cuidados Intensivos');
INSERT INTO Funcionario (codigo, funcao, ordenado, NomeDep) VALUES (2019009, 'Medico', 1700, 'Cuidados Intensivos');
INSERT INTO Funcionario (codigo, funcao, ordenado, NomeDep) VALUES (2019010, 'Auxiliar', 700, 'Pediatria');
INSERT INTO Funcionario (codigo, funcao, ordenado, NomeDep) VALUES (2019011, 'Enfermeiro', 1000, 'Pediatria');
INSERT INTO Funcionario (codigo, funcao, ordenado, NomeDep) VALUES (2019012, 'Pediatra', 2000, 'Pediatria');
INSERT INTO Funcionario (codigo, funcao, ordenado, NomeDep) VALUES (2019013, 'Auxiliar', 700, 'Consulta Externa');
INSERT INTO Funcionario (codigo, funcao, ordenado, NomeDep) VALUES (2019014, 'Enfermeiro', 1000, 'Consulta Externa');
INSERT INTO Funcionario (codigo, funcao, ordenado, NomeDep) VALUES (2019015, 'Enfermeiro', 1000, 'Consulta Externa');
INSERT INTO Funcionario (codigo, funcao, ordenado, NomeDep) VALUES (2019016, 'Auxiliar', 700, 'Obstetricia');
INSERT INTO Funcionario (codigo, funcao, ordenado, NomeDep) VALUES (2019017, 'Enfermeiro', 1000, 'Obstetricia');
INSERT INTO Funcionario (codigo, funcao, ordenado, NomeDep) VALUES (2019018, 'Parteira', 1400, 'Obstetricia');
INSERT INTO Funcionario (codigo, funcao, ordenado, NomeDep) VALUES (2019019, 'Parteira', 1400, 'Obstetricia');
INSERT INTO Funcionario (codigo, funcao, ordenado, NomeDep) VALUES (2019020, 'Medico', 1700, 'Obstetricia');

-- Table: Historial
CREATE TABLE Historial (codigoDoe NOT NULL ON CONFLICT ABORT REFERENCES Doente (codigo) ON DELETE SET NULL ON UPDATE CASCADE, codigoCons INT REFERENCES Consulta (codigo) ON DELETE SET NULL ON UPDATE CASCADE NOT NULL ON CONFLICT ABORT, PRIMARY KEY (codigoDoe, codigoCons)) WITHOUT ROWID;
INSERT INTO Historial (codigoDoe, codigoCons) VALUES (2019023, 2);
INSERT INTO Historial (codigoDoe, codigoCons) VALUES (2019029, 1);

-- Table: Horario
CREATE TABLE Horario (codigo INT PRIMARY KEY, codigoFunc INT REFERENCES Funcionario (codigo) ON DELETE SET NULL ON UPDATE CASCADE NOT NULL ON CONFLICT ABORT, dia DATE NOT NULL ON CONFLICT ABORT, hora_inicio TIME NOT NULL ON CONFLICT ABORT, hora_final TIME NOT NULL ON CONFLICT ABORT, prevencao BOOLEAN NOT NULL ON CONFLICT ABORT DEFAULT (FALSE)) WITHOUT ROWID;

-- Table: Hospital
CREATE TABLE Hospital (Codigo INTEGER PRIMARY KEY, Nome TEXT (6, 48) NOT NULL ON CONFLICT ABORT, Morada TEXT (6, 48) NOT NULL ON CONFLICT ABORT, Telefone TEXT (9, 9) NOT NULL ON CONFLICT ABORT) WITHOUT ROWID;
INSERT INTO Hospital (Codigo, Nome, Morada, Telefone) VALUES (20, 'Ruben', 'Rua exemplar David da Costa', '911112024');

-- Table: Intervencao
CREATE TABLE Intervencao (codigo INT PRIMARY KEY, Nome TEXT (6, 20) NOT NULL ON CONFLICT ABORT) WITHOUT ROWID;
INSERT INTO Intervencao (codigo, Nome) VALUES (1, 'Cirugia');

-- Table: Medicamento
CREATE TABLE Medicamento (codigo INT PRIMARY KEY, Nome TEXT (6, 20) NOT NULL ON CONFLICT ABORT) WITHOUT ROWID;
INSERT INTO Medicamento (codigo, Nome) VALUES (23, 'Brufenne');

-- Table: NumeroDisponivel
CREATE TABLE NumeroDisponivel (codigoArm INT REFERENCES Armazem (codigo) ON DELETE SET NULL ON UPDATE CASCADE, codigoMedi INT REFERENCES Medicamento (codigo) ON DELETE SET NULL ON UPDATE CASCADE, numero_disponivel INT NOT NULL ON CONFLICT ABORT CHECK (numero_disponivel >= 0), PRIMARY KEY (codigoArm, codigoMedi)) WITHOUT ROWID;
INSERT INTO NumeroDisponivel (codigoArm, codigoMedi, numero_disponivel) VALUES (1, 23, 200);

-- Table: Pessoa
CREATE TABLE Pessoa (codigo INT PRIMARY KEY, nome TEXT (6, 48) NOT NULL ON CONFLICT ABORT, nif TEXT (9, 9) UNIQUE NOT NULL ON CONFLICT ABORT, morada TEXT (6, 48) NOT NULL ON CONFLICT ABORT, DataDeNascimento DATE NOT NULL ON CONFLICT ABORT) WITHOUT ROWID;
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019001, 'Rudrigo', '22222222', 'Rua exemplar', '02-02-1970');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019002, 'Assunçãp', '33333333', 'Rua exemplar 4, D', '30-04-1980');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019003, 'Maria Madalena', '44444444', 'Rua exemplar 4, E', '21-05-1966');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019004, 'Holga', '55555555', 'Rua diferente 275', '31-06-1996');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019005, 'Luisa', '66666666', 'Rua diferente 30', '01-12-1997');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019006, 'Fernando', '77777777', 'Rua rica 44', '05-7-1987');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019007, 'Joana', '88888888', 'Rua diferente 99', '07-8-1999');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019008, 'Luis', '99999999', 'Rua exemplar 420', '24-11-1989');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019009, 'Maria', '10101010', 'Rua rica 77', '31-01-2000');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019010, 'Guilherme', '11111111', 'Rua diferente 360', '24-02-1998');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019011, 'Julio', '12121212', 'Rua exemplar 5, DF', '13-08-1997');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019012, 'Ricardo', '13131313', 'Rua rica 97', '24-03-1996');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019013, 'Adriano', '14141414', 'Rua exemplar 5, DT', '30-01-1888');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019014, 'Juliu', '15151515', 'Rua diferente 88', '20-06-1989');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019015, 'Helena', '16161616', 'Rua exemplar 5, ET', '24-07-1970');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019016, 'Luisa', '17171717', 'Rua exemplar 5, EF', '12-10-1996');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019017, 'Nuno', '18181818', 'Rua exemplar 5, EF', '26-10-1993');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019018, 'Tiago', '19191919', 'Rua rica 112', '15-04-1980');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019019, 'Adriana', '20202020', 'Rua diferente 66', '20-09-1995');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019020, 'Paula', '21212121', 'Rua rica 20', '03-08-1973');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019021, 'Ruan', '23232323', 'Rua Adoentada 3', '07-12-2016');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019022, 'Paulo', '24242424', 'Rua Luis Brandão', '20-05-2000');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019023, 'Miguel', '25252525', 'Rua da Guiana Francesa', '08-01-1999');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019024, 'Mariana', '26262626', 'Rua exemplar 29', '27-03-1999');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019025, 'Filipe', '27272727', 'Rua rica 6', '29-06-1969');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019026, 'Susana', '28282828', 'Rua exemplar 230', '09-11-2014');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019027, 'João', '29292929', 'Rua rica 43', '29-08-1999');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019029, 'Ana Rita', '30303030', 'Rua Ministru Avila', '01-05-2014');
INSERT INTO Pessoa (codigo, nome, nif, morada, DataDeNascimento) VALUES (2019030, 'Joana', '31313131', 'Rua D.Dinis', '13-04-1996');

-- Table: Prescricao
CREATE TABLE Prescricao (codigoCons INT REFERENCES Consulta (codigo) ON DELETE SET NULL ON UPDATE CASCADE, codigoMedi INT REFERENCES Medicamento (codigo) ON DELETE SET NULL ON UPDATE CASCADE, dosagem TEXT (6, 48) NOT NULL ON CONFLICT ABORT, duracao INT NOT NULL ON CONFLICT ABORT, PRIMARY KEY (codigoCons, codigoMedi)) WITHOUT ROWID;
INSERT INTO Prescricao (codigoCons, codigoMedi, dosagem, duracao) VALUES (2, 23, '100', 8);

-- Table: Tratamento
CREATE TABLE Tratamento (codigoCons INT REFERENCES Consulta (codigo) ON DELETE SET NULL ON UPDATE CASCADE, codigoInt INT REFERENCES Intervencao (codigo) ON DELETE SET NULL ON UPDATE CASCADE, PRIMARY KEY (codigoCons, codigoInt)) WITHOUT ROWID;
INSERT INTO Tratamento (codigoCons, codigoInt) VALUES (1, 1);

-- Table: Veiculo
CREATE TABLE Veiculo (matricula INT PRIMARY KEY, disponivel BOOLEAN NOT NULL ON CONFLICT ABORT DEFAULT (TRUE), marca TEXT (6, 20), codigoHosp REFERENCES Hospital (Codigo) NOT NULL ON CONFLICT ABORT) WITHOUT ROWID;
INSERT INTO Veiculo (matricula, disponivel, marca, codigoHosp) VALUES ('01 GG 07 ', 'True', 'Pjou', 20);
INSERT INTO Veiculo (matricula, disponivel, marca, codigoHosp) VALUES ('12 AD 42', 'True', 'Porche', 20);
INSERT INTO Veiculo (matricula, disponivel, marca, codigoHosp) VALUES ('33 FF 50', 'True', 'Hunda', 20);
INSERT INTO Veiculo (matricula, disponivel, marca, codigoHosp) VALUES ('60 MG 09', 'False', 'Mata-Velhos', 20);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
