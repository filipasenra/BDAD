--
-- File generated with SQLiteStudio v3.2.1 on sáb abr 13 12:42:23 2019
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Armazem
CREATE TABLE Armazem (
    codigo     INT PRIMARY KEY
                   UNIQUE
                   NOT NULL ON CONFLICT ABORT,
    codigoHosp     REFERENCES Hospital (Codigo) 
                   NOT NULL ON CONFLICT ABORT
)
WITHOUT ROWID;


-- Table: Consulta
CREATE TABLE Consulta (
    codigo          INT  UNIQUE
                         NOT NULL ON CONFLICT ABORT
                         PRIMARY KEY,
    Data_examinacao DATE NOT NULL ON CONFLICT ABORT
)
WITHOUT ROWID;


-- Table: Departamento
CREATE TABLE Departamento (
    nome       TEXT (6, 20) PRIMARY KEY
                            UNIQUE
                            NOT NULL ON CONFLICT ABORT,
    CodigoHosp INT          REFERENCES Hospital (Codigo) ON DELETE SET NULL
                                                         ON UPDATE CASCADE
                            NOT NULL
)
WITHOUT ROWID;


-- Table: Doente
CREATE TABLE Doente (
    codigo INT UNIQUE
             PRIMARY KEY
             NOT NULL ON CONFLICT ABORT
             REFERENCES Pessoa (codigo) ON DELETE SET NULL
                                        ON UPDATE CASCADE
)
WITHOUT ROWID;


-- Table: Enfermaria
CREATE TABLE Enfermaria (
    codigo     INT          NOT NULL ON CONFLICT ABORT
                            PRIMARY KEY,
    capacidade INT          NOT NULL ON CONFLICT ABORT
                            CHECK (capacidade > 0),
    NomeDep    TEXT (6, 20) REFERENCES Departamento (nome) ON DELETE SET NULL
                                                           ON UPDATE CASCADE
                            NOT NULL ON CONFLICT ABORT
)
WITHOUT ROWID;


-- Table: EquipaMultidisciplinar
CREATE TABLE EquipaMultidisciplinar (
    CodigoFunc INT NOT NULL ON CONFLICT ABORT
                   REFERENCES Funcionario (codigo) ON DELETE SET NULL
                                                   ON UPDATE CASCADE,
    codigoDoen INT REFERENCES Doente (codigo) ON DELETE SET NULL
                                              ON UPDATE CASCADE
                   NOT NULL ON CONFLICT ABORT,
    PRIMARY KEY (
        CodigoFunc,
        codigoDoen
    )
)
WITHOUT ROWID;


-- Table: Estadia
CREATE TABLE Estadia (
    cama           INT     UNIQUE
                           NOT NULL ON CONFLICT ABORT,
    codigoDoen     INT     UNIQUE
                           NOT NULL ON CONFLICT ABORT
                           REFERENCES Doente (codigo) ON DELETE SET NULL
                                                      ON UPDATE CASCADE,
    Data_inicio    DATE    NOT NULL ON CONFLICT ABORT,
    Data_final     DATE    NOT NULL ON CONFLICT ABORT,
    Cod_Enfermaria INTEGER REFERENCES Enfermaria (codigo) ON DELETE SET NULL
                                                          ON UPDATE CASCADE,
    PRIMARY KEY (
        cama,
        codigoDoen
    )
)
WITHOUT ROWID;


-- Table: Funcionario
CREATE TABLE Funcionario (
    codigo   INT          PRIMARY KEY
                          UNIQUE
                          REFERENCES Pessoa (codigo) ON DELETE SET NULL
                                                     ON UPDATE CASCADE
                          NOT NULL ON CONFLICT ABORT,
    funcao   TEXT (6, 20) NOT NULL,
    ordenado DECIMAL      NOT NULL ON CONFLICT ABORT
                          CHECK (ordenado >= 0),
    NomeDep  TEXT (6, 20) REFERENCES Departamento (nome) 
                          NOT NULL ON CONFLICT ABORT
)
WITHOUT ROWID;


-- Table: Historial
CREATE TABLE Historial (
    codigoDoe      NOT NULL ON CONFLICT ABORT
                   REFERENCES Doente (codigo) ON DELETE SET NULL
                                              ON UPDATE CASCADE,
    codigoCons INT REFERENCES Consulta (codigo) ON DELETE SET NULL
                                                ON UPDATE CASCADE
                   NOT NULL ON CONFLICT ABORT,
    PRIMARY KEY (
        codigoDoe,
        codigoCons
    )
)
WITHOUT ROWID;


-- Table: Hospital
CREATE TABLE Hospital (
    Codigo   INTEGER      PRIMARY KEY
                          UNIQUE
                          NOT NULL ON CONFLICT ABORT,
    Nome     TEXT (6, 48) NOT NULL ON CONFLICT ABORT,
    Morada   TEXT (6, 48) NOT NULL ON CONFLICT ABORT,
    Telefone TEXT (9, 9)  NOT NULL ON CONFLICT ABORT
)
WITHOUT ROWID;


-- Table: Intervencao
CREATE TABLE Intervencao (
    codigo INT          UNIQUE
                        NOT NULL ON CONFLICT ABORT
                        PRIMARY KEY,
    Nome   TEXT (6, 20) NOT NULL ON CONFLICT ABORT
)
WITHOUT ROWID;


-- Table: Medicamento
CREATE TABLE Medicamento (
    codigo INT          UNIQUE
                        NOT NULL ON CONFLICT ABORT
                        PRIMARY KEY,
    Nome   TEXT (6, 20) NOT NULL ON CONFLICT ABORT
)
WITHOUT ROWID;


-- Table: NumeroDisponivel
CREATE TABLE NumeroDisponivel (
    codigoArm         INT REFERENCES Armazem (codigo) ON DELETE SET NULL
                                                      ON UPDATE CASCADE
                          NOT NULL ON CONFLICT ABORT,
    codigoMedi        INT REFERENCES Medicamento (codigo) ON DELETE SET NULL
                                                          ON UPDATE CASCADE
                          NOT NULL ON CONFLICT ABORT,
    numero_disponivel INT NOT NULL ON CONFLICT ABORT
                          CHECK (numero_disponivel >= 0),
    PRIMARY KEY (
        codigoArm,
        codigoMedi
    )
)
WITHOUT ROWID;


-- Table: Pessoa
CREATE TABLE Pessoa (
    codigo           INT          PRIMARY KEY
                                  UNIQUE
                                  NOT NULL ON CONFLICT ABORT,
    nome             TEXT (6, 48) NOT NULL ON CONFLICT ABORT,
    nif              TEXT (9, 9)  UNIQUE
                                  NOT NULL ON CONFLICT ABORT,
    morada           TEXT (6, 48) NOT NULL ON CONFLICT ABORT,
    DataDeNascimento DATE         NOT NULL ON CONFLICT ABORT
)
WITHOUT ROWID;


-- Table: Prescricao
CREATE TABLE Prescricao (
    codigoCons INT          UNIQUE
                            NOT NULL ON CONFLICT ABORT
                            REFERENCES Consulta (codigo) ON DELETE SET NULL
                                                         ON UPDATE CASCADE,
    codigoMedi INT          UNIQUE
                            NOT NULL ON CONFLICT ABORT
                            REFERENCES Medicamento (codigo) ON DELETE SET NULL
                                                            ON UPDATE CASCADE,
    dosagem    TEXT (6, 48) NOT NULL ON CONFLICT ABORT,
    duracao    INT          NOT NULL ON CONFLICT ABORT,
    PRIMARY KEY (
        codigoCons,
        codigoMedi
    )
)
WITHOUT ROWID;


-- Table: Tratamento
CREATE TABLE Tratamento (
    codigoCons INT NOT NULL ON CONFLICT ABORT
                   REFERENCES Consulta (codigo) ON DELETE SET NULL
                                                ON UPDATE CASCADE,
    codigoInt  INT REFERENCES Intervencao (codigo) ON DELETE SET NULL
                                                   ON UPDATE CASCADE
                   NOT NULL ON CONFLICT ABORT,
    PRIMARY KEY (
        codigoCons,
        codigoInt
    )
)
WITHOUT ROWID;


-- Table: Veiculo
CREATE TABLE Veiculo (
    matricula  INT          PRIMARY KEY
                            UNIQUE
                            NOT NULL ON CONFLICT ABORT,
    disponivel BOOLEAN      NOT NULL ON CONFLICT ABORT
                            DEFAULT (TRUE),
    marca      TEXT (6, 20),
    codigoHosp              REFERENCES Hospital (Codigo) 
                            NOT NULL ON CONFLICT ABORT
)
WITHOUT ROWID;


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
