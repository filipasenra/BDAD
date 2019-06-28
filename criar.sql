--
-- File generated with SQLiteStudio v3.2.1 on dom mai 26 22:58:43 2019
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Armazem
DROP TABLE IF EXISTS Armazem;

CREATE TABLE Armazem (
    codigo     INTEGER PRIMARY KEY,
    codigoHosp INTEGER REFERENCES Hospital (Codigo) 
                       NOT NULL
)
WITHOUT ROWID;


-- Table: Consulta
DROP TABLE IF EXISTS Consulta;

CREATE TABLE Consulta (
    codigo          INTEGER PRIMARY KEY,
    Data_examinacao DATE    NOT NULL
)
WITHOUT ROWID;


-- Table: Departamento
DROP TABLE IF EXISTS Departamento;

CREATE TABLE Departamento (
    nome       TEXT (6, 20) PRIMARY KEY,
    CodigoHosp INTEGER      REFERENCES Hospital (Codigo) ON DELETE SET NULL
                                                         ON UPDATE CASCADE
                            NOT NULL
)
WITHOUT ROWID;


-- Table: Doente
DROP TABLE IF EXISTS Doente;

CREATE TABLE Doente (
    codigo INTEGER PRIMARY KEY
                 REFERENCES Pessoa (codigo) ON DELETE SET NULL
                                            ON UPDATE CASCADE
)
WITHOUT ROWID;


-- Table: Enfermaria
DROP TABLE IF EXISTS Enfermaria;

CREATE TABLE Enfermaria (
    codigo     INTEGER      PRIMARY KEY,
    capacidade INTEGER      CHECK (capacidade > 0) 
                            NOT NULL,
    NomeDep    TEXT (6, 20) REFERENCES Departamento (nome) ON DELETE SET NULL
                                                           ON UPDATE CASCADE
                            NOT NULL
)
WITHOUT ROWID;


-- Table: EquipaMultidisciplinar
DROP TABLE IF EXISTS EquipaMultidisciplinar;

CREATE TABLE EquipaMultidisciplinar (
    CodigoFunc INTEGER REFERENCES Funcionario (codigo) ON DELETE SET NULL
                                                       ON UPDATE CASCADE,
    codigoDoen INTEGER REFERENCES Doente (codigo) ON DELETE SET NULL
                                                  ON UPDATE CASCADE,
    PRIMARY KEY (
        CodigoFunc,
        codigoDoen
    )
)
WITHOUT ROWID;

-- Table: Estadia
DROP TABLE IF EXISTS Estadia;

CREATE TABLE Estadia (
    Codigo         INTEGER PRIMARY KEY,
    cama           INTEGER,
    codigoDoen     INTEGER REFERENCES Doente (codigo) ON DELETE SET NULL
                                                      ON UPDATE CASCADE,
    Data_inicio    DATE    NOT NULL,
    Data_final     DATE    NOT NULL,
    Cod_Enfermaria INTEGER REFERENCES Enfermaria (codigo) ON DELETE SET NULL
                                                          ON UPDATE CASCADE,
    CHECK (Data_inicio <= Data_final) 
)
WITHOUT ROWID;




-- Table: Funcionario
DROP TABLE IF EXISTS Funcionario;

CREATE TABLE Funcionario (
    codigo   INT          PRIMARY KEY
                          REFERENCES Pessoa (codigo) ON DELETE SET NULL
                                                     ON UPDATE CASCADE,
    funcao   TEXT (6, 20) NOT NULL,
    ordenado DECIMAL      NOT NULL ON CONFLICT ABORT
                          CHECK (ordenado >= 0),
    NomeDep  TEXT (6, 20) REFERENCES Departamento (nome) 
                          NOT NULL ON CONFLICT ABORT
)
WITHOUT ROWID;



-- Table: Historial
DROP TABLE IF EXISTS Historial;

CREATE TABLE Historial (
    codigoDoe      REFERENCES Doente (codigo) ON DELETE SET NULL
                                              ON UPDATE CASCADE,
    codigoCons INT REFERENCES Consulta (codigo) ON DELETE SET NULL
                                                ON UPDATE CASCADE,
    PRIMARY KEY (
        codigoDoe,
        codigoCons
    )
)
WITHOUT ROWID;




-- Table: Horario
DROP TABLE IF EXISTS Horario;

CREATE TABLE Horario (
    codigo      INTEGER PRIMARY KEY,
    codigoFunc  INTEGER REFERENCES Funcionario (codigo) ON DELETE SET NULL
                                                        ON UPDATE CASCADE
                        NOT NULL,
    dia         DATE    NOT NULL,
    hora_inicio TIME    NOT NULL,
    hora_final  TIME    NOT NULL,
    prevencao   INTEGER DEFAULT (0) 
                        NOT NULL
)
WITHOUT ROWID;


-- Table: Hospital
DROP TABLE IF EXISTS Hospital;

CREATE TABLE Hospital (
    Codigo   INTEGER      PRIMARY KEY,
    Nome     TEXT (6, 48) NOT NULL,
    Morada   TEXT (6, 48) NOT NULL,
    Telefone TEXT (9, 9)  NOT NULL
)
WITHOUT ROWID;


-- Table: Intervencao
DROP TABLE IF EXISTS Intervencao;

CREATE TABLE Intervencao (
    codigo INTEGER      PRIMARY KEY,
    Nome   TEXT (6, 20) NOT NULL ON CONFLICT ABORT
)
WITHOUT ROWID;




-- Table: Medicamento
DROP TABLE IF EXISTS Medicamento;

CREATE TABLE Medicamento (
    codigo INTEGER      PRIMARY KEY,
    Nome   TEXT (6, 20) NOT NULL ON CONFLICT ABORT
)
WITHOUT ROWID;


-- Table: NumeroDisponivel
DROP TABLE IF EXISTS NumeroDisponivel;

CREATE TABLE NumeroDisponivel (
    codigoArm         INTEGER REFERENCES Armazem (codigo) ON DELETE SET NULL
                                                          ON UPDATE CASCADE,
    codigoMedi        INTEGER REFERENCES Medicamento (codigo) ON DELETE SET NULL
                                                              ON UPDATE CASCADE,
    numero_disponivel INTEGER CHECK (numero_disponivel >= 0) 
                              NOT NULL,
    PRIMARY KEY (
        codigoArm,
        codigoMedi
    )
)
WITHOUT ROWID;




-- Table: Pessoa
DROP TABLE IF EXISTS Pessoa;

CREATE TABLE Pessoa (
    codigo           INTEGER      PRIMARY KEY,
    nome             TEXT (3, 48) NOT NULL,
    nif              TEXT (9, 9)  UNIQUE
                                  NOT NULL,
    morada           TEXT (6, 48) NOT NULL,
    DataDeNascimento DATE         NOT NULL
)
WITHOUT ROWID;




-- Table: Prescricao
DROP TABLE IF EXISTS Prescricao;

CREATE TABLE Prescricao (
    codigo     INTEGER      PRIMARY KEY,
    codigoCons INTEGER      REFERENCES Consulta (codigo) ON DELETE SET NULL
                                                         ON UPDATE CASCADE,
    codigoMedi INTEGER      REFERENCES Medicamento (codigo) ON DELETE SET NULL
                                                            ON UPDATE CASCADE,
    dosagem    TEXT (6, 48) NOT NULL,
    duracao    INTEGER      NOT NULL
)
WITHOUT ROWID;




-- Table: Tratamento
DROP TABLE IF EXISTS Tratamento;

CREATE TABLE Tratamento (
    codigoCons INTEGER REFERENCES Consulta (codigo) ON DELETE SET NULL
                                                    ON UPDATE CASCADE,
    codigoInt  INTEGER REFERENCES Intervencao (codigo) ON DELETE SET NULL
                                                       ON UPDATE CASCADE,
    PRIMARY KEY (
        codigoCons,
        codigoInt
    )
)
WITHOUT ROWID;




-- Table: Veiculo
DROP TABLE IF EXISTS Veiculo;

CREATE TABLE Veiculo (
    matricula  INTEGER      PRIMARY KEY,
    disponivel INTEGER      DEFAULT (1) 
                            NOT NULL,
    marca      TEXT (6, 20),
    codigoHosp              REFERENCES Hospital (Codigo) 
                            NOT NULL
)
WITHOUT ROWID;


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
