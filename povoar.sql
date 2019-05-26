--
-- File generated with SQLiteStudio v3.2.1 on dom abr 14 18:02:47 2019
--
-- Text encoding used: System
--
PRAGMA foreign_keys = on;

-- Table: Hospital
INSERT INTO Hospital (Codigo, Nome, Morada, Telefone) VALUES (20, 'Ruben', 'Rua exemplar David da Costa', '911112024');

-- Table: Armazem
INSERT INTO Armazem (codigo, codigoHosp) VALUES (1, 20);
INSERT INTO Armazem (codigo, codigoHosp) VALUES (2, 20);

-- Table: Consulta
INSERT INTO Consulta (codigo, Data_examinacao) VALUES (1, '20-01-2019');
INSERT INTO Consulta (codigo, Data_examinacao) VALUES (2, '22-01-2019');
INSERT INTO Consulta (codigo, Data_examinacao) VALUES (3, '01-01-2019');
INSERT INTO Consulta (codigo, Data_examinacao) VALUES (4, '02-01-2019');
INSERT INTO Consulta (codigo, Data_examinacao) VALUES (5, '02-01-2019');

-- Table: Departamento
INSERT INTO Departamento (nome, CodigoHosp) VALUES ('Consulta Externa', 20);
INSERT INTO Departamento (nome, CodigoHosp) VALUES ('Cuidados Intensivos', 20);
INSERT INTO Departamento (nome, CodigoHosp) VALUES ('Obstetricia', 20);
INSERT INTO Departamento (nome, CodigoHosp) VALUES ('Pediatria', 20);
INSERT INTO Departamento (nome, CodigoHosp) VALUES ('Urgencia', 20);

-- Table: Pessoa
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

-- Table: Doente
INSERT INTO Doente (codigo) VALUES (2019021);
INSERT INTO Doente (codigo) VALUES (2019022);
INSERT INTO Doente (codigo) VALUES (2019023);
INSERT INTO Doente (codigo) VALUES (2019024);
INSERT INTO Doente (codigo) VALUES (2019025);
INSERT INTO Doente (codigo) VALUES (2019026);
INSERT INTO Doente (codigo) VALUES (2019027);
INSERT INTO Doente (codigo) VALUES (2019029);
INSERT INTO Doente (codigo) VALUES (2019030);

-- Table: Funcionario
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

-- Table: Enfermaria
INSERT INTO Enfermaria (codigo, capacidade, NomeDep) VALUES (1, 25, 'Urgencia');
INSERT INTO Enfermaria (codigo, capacidade, NomeDep) VALUES (2, 40, 'Cuidados Intensivos');
INSERT INTO Enfermaria (codigo, capacidade, NomeDep) VALUES (3, 10, 'Pediatria');
INSERT INTO Enfermaria (codigo, capacidade, NomeDep) VALUES (4, 5, 'Consulta Externa');
INSERT INTO Enfermaria (codigo, capacidade, NomeDep) VALUES (5, 20, 'Obstetricia');

-- Table: EquipaMultidisciplinar
INSERT INTO EquipaMultidisciplinar (CodigoFunc, codigoDoen) VALUES (2019005, 2019021);
INSERT INTO EquipaMultidisciplinar (CodigoFunc, codigoDoen) VALUES (2019005, 2019022);
INSERT INTO EquipaMultidisciplinar (CodigoFunc, codigoDoen) VALUES (2019005, 2019023);
INSERT INTO EquipaMultidisciplinar (CodigoFunc, codigoDoen) VALUES (2019005, 2019024);
INSERT INTO EquipaMultidisciplinar (CodigoFunc, codigoDoen) VALUES (2019005, 2019025);
INSERT INTO EquipaMultidisciplinar (CodigoFunc, codigoDoen) VALUES (2019012, 2019029);
INSERT INTO EquipaMultidisciplinar (CodigoFunc, codigoDoen) VALUES (2019012, 2019030);
INSERT INTO EquipaMultidisciplinar (CodigoFunc, codigoDoen) VALUES (2019020, 2019026);
INSERT INTO EquipaMultidisciplinar (CodigoFunc, codigoDoen) VALUES (2019020, 2019027);

-- Table: Estadia
INSERT INTO Estadia (cama, codigoDoen, Data_inicio, Data_final, Cod_Enfermaria) VALUES (4, 2019021, '21-02-2019', '03-03-2019', 2);
INSERT INTO Estadia (cama, codigoDoen, Data_inicio, Data_final, Cod_Enfermaria) VALUES (10, 2019024, '05-05-2019', '21-05-2019', 3);

-- Table: Historial
INSERT INTO Historial (codigoDoe, codigoCons) VALUES (2019023, 2);
INSERT INTO Historial (codigoDoe, codigoCons) VALUES (2019024, 3);
INSERT INTO Historial (codigoDoe, codigoCons) VALUES (2019025, 4);
INSERT INTO Historial (codigoDoe, codigoCons) VALUES (2019027, 5);
INSERT INTO Historial (codigoDoe, codigoCons) VALUES (2019029, 1);

-- Table: Horario
INSERT INTO Horario (codigo, codigoFunc, dia, hora_inicio, hora_final, prevencao) VALUES (1, 2019001, '1/1/2019', '8:00', '16:00', 'FALSE');
INSERT INTO Horario (codigo, codigoFunc, dia, hora_inicio, hora_final, prevencao) VALUES (2, 2019002, '1/1/2019', '16:00', '24:00', 'FALSE');
INSERT INTO Horario (codigo, codigoFunc, dia, hora_inicio, hora_final, prevencao) VALUES (3, 2019003, '1/12019', '8:00', '16:00', 'FALSE');
INSERT INTO Horario (codigo, codigoFunc, dia, hora_inicio, hora_final, prevencao) VALUES (4, 2019004, '1/1/2019', '16:00', '24:00', 'FALSE');
INSERT INTO Horario (codigo, codigoFunc, dia, hora_inicio, hora_final, prevencao) VALUES (5, 2019005, '1/1/2019', '8:00', '16:00', 'FALSE');
INSERT INTO Horario (codigo, codigoFunc, dia, hora_inicio, hora_final, prevencao) VALUES (6, 2019006, '1/1/2019', '0:00', '8:00', 'FALSE');
INSERT INTO Horario (codigo, codigoFunc, dia, hora_inicio, hora_final, prevencao) VALUES (7, 2019007, '1/1/2019', '8:00', '16:00', 'FALSE');
INSERT INTO Horario (codigo, codigoFunc, dia, hora_inicio, hora_final, prevencao) VALUES (8, 2019008, '1/1/2019', '16:00', '24:00', 'FALSE');
INSERT INTO Horario (codigo, codigoFunc, dia, hora_inicio, hora_final, prevencao) VALUES (9, 2019009, '1/1/2019', '0:00', '24:00', 'TRUE');
INSERT INTO Horario (codigo, codigoFunc, dia, hora_inicio, hora_final, prevencao) VALUES (10, 2019010, '1/1/2019', '8:00', '16:00', 'FALSE');
INSERT INTO Horario (codigo, codigoFunc, dia, hora_inicio, hora_final, prevencao) VALUES (11, 2019011, '1/1/2019', '8:00', '16:00', 'FALSE');
INSERT INTO Horario (codigo, codigoFunc, dia, hora_inicio, hora_final, prevencao) VALUES (12, 2019012, '1/1/2019', '8:00', '16:00', 'FALSE');
INSERT INTO Horario (codigo, codigoFunc, dia, hora_inicio, hora_final, prevencao) VALUES (13, 2019013, '1/1/2019', '8:00', '16:00', 'FALSE');
INSERT INTO Horario (codigo, codigoFunc, dia, hora_inicio, hora_final, prevencao) VALUES (14, 2019014, '1/1/2019', '8:00', '16:00', 'FALSE');
INSERT INTO Horario (codigo, codigoFunc, dia, hora_inicio, hora_final, prevencao) VALUES (15, 2019015, '1/1/2019', '8:00', '16:00', 'FALSE');
INSERT INTO Horario (codigo, codigoFunc, dia, hora_inicio, hora_final, prevencao) VALUES (16, 2019016, '1/1/2019', '8:00', '16:00', 'FALSE');
INSERT INTO Horario (codigo, codigoFunc, dia, hora_inicio, hora_final, prevencao) VALUES (17, 2019017, '1/1/2019', '8:00', '16:00', 'FALSE');
INSERT INTO Horario (codigo, codigoFunc, dia, hora_inicio, hora_final, prevencao) VALUES (18, 2019018, '1/1/2019', '8:00', '16:00', 'FALSE');
INSERT INTO Horario (codigo, codigoFunc, dia, hora_inicio, hora_final, prevencao) VALUES (19, 2019019, '1/1/2019', '16:00', '24:00', 'FALSE');
INSERT INTO Horario (codigo, codigoFunc, dia, hora_inicio, hora_final, prevencao) VALUES (20, 2019020, '1/1/2019', '0:00', '24:00', 'TRUE');

-- Table: Intervencao
INSERT INTO Intervencao (codigo, Nome) VALUES (1, 'Cirugia');
INSERT INTO Intervencao (codigo, Nome) VALUES (2, 'Colonoscopia');
INSERT INTO Intervencao (codigo, Nome) VALUES (3, 'Ecografia');

-- Table: Medicamento
INSERT INTO Medicamento (codigo, Nome) VALUES (23, 'Brufenne');
INSERT INTO Medicamento (codigo, Nome) VALUES (35, 'Benuron');
INSERT INTO Medicamento (codigo, Nome) VALUES (36, 'Aranka');

-- Table: NumeroDisponivel
INSERT INTO NumeroDisponivel (codigoArm, codigoMedi, numero_disponivel) VALUES (1, 23, 200);
INSERT INTO NumeroDisponivel (codigoArm, codigoMedi, numero_disponivel) VALUES (2, 23, 250);
INSERT INTO NumeroDisponivel (codigoArm, codigoMedi, numero_disponivel) VALUES (2, 35, 150);
INSERT INTO NumeroDisponivel (codigoArm, codigoMedi, numero_disponivel) VALUES (1, 36, 123);

-- Table: Prescricao
INSERT INTO Prescricao (codigoCons, codigoMedi, dosagem, duracao) VALUES (2, 23, '100', 8);
INSERT INTO Prescricao (codigoCons, codigoMedi, dosagem, duracao) VALUES (3, 23, '100', 8);

-- Table: Tratamento
INSERT INTO Tratamento (codigoCons, codigoInt) VALUES (1, 1);
INSERT INTO Tratamento (codigoCons, codigoInt) VALUES (4, 1);
INSERT INTO Tratamento (codigoCons, codigoInt) VALUES (5, 1);

-- Table: Veiculo
INSERT INTO Veiculo (matricula, disponivel, marca, codigoHosp) VALUES ('01 GG 07 ', 'True', 'Pjou', 20);
INSERT INTO Veiculo (matricula, disponivel, marca, codigoHosp) VALUES ('12 AD 42', 'True', 'Porche', 20);
INSERT INTO Veiculo (matricula, disponivel, marca, codigoHosp) VALUES ('33 FF 50', 'True', 'Hunda', 20);
INSERT INTO Veiculo (matricula, disponivel, marca, codigoHosp) VALUES ('60 MG 09', 'False', 'Mata-Velhos', 20);