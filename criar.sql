--
-- File generated with SQLiteStudio v3.2.1 on sáb mai 25 12:31:31 2019
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

INSERT INTO Armazem (
                        codigo,
                        codigoHosp
                    )
                    VALUES (
                        1,
                        20
                    );


-- Table: Consulta
DROP TABLE IF EXISTS Consulta;

CREATE TABLE Consulta (
    codigo          INTEGER PRIMARY KEY,
    Data_examinacao DATE    NOT NULL
)
WITHOUT ROWID;

INSERT INTO Consulta (
                         codigo,
                         Data_examinacao
                     )
                     VALUES (
                         1,
                         '20-01-2019'
                     );

INSERT INTO Consulta (
                         codigo,
                         Data_examinacao
                     )
                     VALUES (
                         2,
                         '22-01-2019'
                     );

INSERT INTO Consulta (
                         codigo,
                         Data_examinacao
                     )
                     VALUES (
                         3,
                         '01-01-2019'
                     );

INSERT INTO Consulta (
                         codigo,
                         Data_examinacao
                     )
                     VALUES (
                         4,
                         '02-01-2019'
                     );

INSERT INTO Consulta (
                         codigo,
                         Data_examinacao
                     )
                     VALUES (
                         5,
                         '02-01-2019'
                     );


-- Table: Departamento
DROP TABLE IF EXISTS Departamento;

CREATE TABLE Departamento (
    nome       TEXT (6, 20) PRIMARY KEY,
    CodigoHosp INTEGER      REFERENCES Hospital (Codigo) ON DELETE SET NULL
                                                         ON UPDATE CASCADE
                            NOT NULL
)
WITHOUT ROWID;

INSERT INTO Departamento (
                             nome,
                             CodigoHosp
                         )
                         VALUES (
                             'Consulta Externa',
                             20
                         );

INSERT INTO Departamento (
                             nome,
                             CodigoHosp
                         )
                         VALUES (
                             'Cuidados Intensivos',
                             20
                         );

INSERT INTO Departamento (
                             nome,
                             CodigoHosp
                         )
                         VALUES (
                             'Obstetricia',
                             20
                         );

INSERT INTO Departamento (
                             nome,
                             CodigoHosp
                         )
                         VALUES (
                             'Pediatria',
                             20
                         );

INSERT INTO Departamento (
                             nome,
                             CodigoHosp
                         )
                         VALUES (
                             'Urgencia',
                             20
                         );


-- Table: Doente
DROP TABLE IF EXISTS Doente;

CREATE TABLE Doente (
    codigo INTEGER PRIMARY KEY
                 REFERENCES Pessoa (codigo) ON DELETE SET NULL
                                            ON UPDATE CASCADE
)
WITHOUT ROWID;

INSERT INTO Doente (
                       codigo
                   )
                   VALUES (
                       2019021
                   );

INSERT INTO Doente (
                       codigo
                   )
                   VALUES (
                       2019022
                   );

INSERT INTO Doente (
                       codigo
                   )
                   VALUES (
                       2019023
                   );

INSERT INTO Doente (
                       codigo
                   )
                   VALUES (
                       2019024
                   );

INSERT INTO Doente (
                       codigo
                   )
                   VALUES (
                       2019025
                   );

INSERT INTO Doente (
                       codigo
                   )
                   VALUES (
                       2019026
                   );

INSERT INTO Doente (
                       codigo
                   )
                   VALUES (
                       2019027
                   );

INSERT INTO Doente (
                       codigo
                   )
                   VALUES (
                       2019029
                   );

INSERT INTO Doente (
                       codigo
                   )
                   VALUES (
                       2019030
                   );


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

INSERT INTO Enfermaria (
                           codigo,
                           capacidade,
                           NomeDep
                       )
                       VALUES (
                           1,
                           25,
                           'Urgencia'
                       );

INSERT INTO Enfermaria (
                           codigo,
                           capacidade,
                           NomeDep
                       )
                       VALUES (
                           2,
                           40,
                           'Cuidados Intensivos'
                       );

INSERT INTO Enfermaria (
                           codigo,
                           capacidade,
                           NomeDep
                       )
                       VALUES (
                           3,
                           10,
                           'Pediatria'
                       );

INSERT INTO Enfermaria (
                           codigo,
                           capacidade,
                           NomeDep
                       )
                       VALUES (
                           4,
                           5,
                           'Consulta Externa'
                       );

INSERT INTO Enfermaria (
                           codigo,
                           capacidade,
                           NomeDep
                       )
                       VALUES (
                           5,
                           20,
                           'Obstetricia'
                       );


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

INSERT INTO EquipaMultidisciplinar (
                                       CodigoFunc,
                                       codigoDoen
                                   )
                                   VALUES (
                                       2019005,
                                       2019021
                                   );

INSERT INTO EquipaMultidisciplinar (
                                       CodigoFunc,
                                       codigoDoen
                                   )
                                   VALUES (
                                       2019005,
                                       2019022
                                   );

INSERT INTO EquipaMultidisciplinar (
                                       CodigoFunc,
                                       codigoDoen
                                   )
                                   VALUES (
                                       2019005,
                                       2019023
                                   );

INSERT INTO EquipaMultidisciplinar (
                                       CodigoFunc,
                                       codigoDoen
                                   )
                                   VALUES (
                                       2019005,
                                       2019024
                                   );

INSERT INTO EquipaMultidisciplinar (
                                       CodigoFunc,
                                       codigoDoen
                                   )
                                   VALUES (
                                       2019005,
                                       2019025
                                   );

INSERT INTO EquipaMultidisciplinar (
                                       CodigoFunc,
                                       codigoDoen
                                   )
                                   VALUES (
                                       2019012,
                                       2019029
                                   );

INSERT INTO EquipaMultidisciplinar (
                                       CodigoFunc,
                                       codigoDoen
                                   )
                                   VALUES (
                                       2019012,
                                       2019030
                                   );

INSERT INTO EquipaMultidisciplinar (
                                       CodigoFunc,
                                       codigoDoen
                                   )
                                   VALUES (
                                       2019020,
                                       2019026
                                   );

INSERT INTO EquipaMultidisciplinar (
                                       CodigoFunc,
                                       codigoDoen
                                   )
                                   VALUES (
                                       2019020,
                                       2019027
                                   );


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

INSERT INTO Estadia (
                        Codigo,
                        cama,
                        codigoDoen,
                        Data_inicio,
                        Data_final,
                        Cod_Enfermaria
                    )
                    VALUES (
                        1,
                        1,
                        2019021,
                        '21-01-2019',
                        '25-01-2019',
                        1
                    );


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

INSERT INTO Funcionario (
                            codigo,
                            funcao,
                            ordenado,
                            NomeDep
                        )
                        VALUES (
                            2019001,
                            'Auxiliar',
                            700,
                            'Urgencia'
                        );

INSERT INTO Funcionario (
                            codigo,
                            funcao,
                            ordenado,
                            NomeDep
                        )
                        VALUES (
                            2019002,
                            'Auxiliar',
                            700,
                            'Urgencia'
                        );

INSERT INTO Funcionario (
                            codigo,
                            funcao,
                            ordenado,
                            NomeDep
                        )
                        VALUES (
                            2019003,
                            'Enfermeiro',
                            1000,
                            'Urgencia'
                        );

INSERT INTO Funcionario (
                            codigo,
                            funcao,
                            ordenado,
                            NomeDep
                        )
                        VALUES (
                            2019004,
                            'Enfermeiro',
                            1000,
                            'Urgencia'
                        );

INSERT INTO Funcionario (
                            codigo,
                            funcao,
                            ordenado,
                            NomeDep
                        )
                        VALUES (
                            2019005,
                            'Medico de familia',
                            1800,
                            'Urgencia'
                        );

INSERT INTO Funcionario (
                            codigo,
                            funcao,
                            ordenado,
                            NomeDep
                        )
                        VALUES (
                            2019006,
                            'Auxiliar',
                            700,
                            'Cuidados Intensivos'
                        );

INSERT INTO Funcionario (
                            codigo,
                            funcao,
                            ordenado,
                            NomeDep
                        )
                        VALUES (
                            2019007,
                            'Enfermeiro',
                            1000,
                            'Cuidados Intensivos'
                        );

INSERT INTO Funcionario (
                            codigo,
                            funcao,
                            ordenado,
                            NomeDep
                        )
                        VALUES (
                            2019008,
                            'Enfermeiro',
                            1000,
                            'Cuidados Intensivos'
                        );

INSERT INTO Funcionario (
                            codigo,
                            funcao,
                            ordenado,
                            NomeDep
                        )
                        VALUES (
                            2019009,
                            'Medico',
                            1700,
                            'Cuidados Intensivos'
                        );

INSERT INTO Funcionario (
                            codigo,
                            funcao,
                            ordenado,
                            NomeDep
                        )
                        VALUES (
                            2019010,
                            'Auxiliar',
                            700,
                            'Pediatria'
                        );

INSERT INTO Funcionario (
                            codigo,
                            funcao,
                            ordenado,
                            NomeDep
                        )
                        VALUES (
                            2019011,
                            'Enfermeiro',
                            1000,
                            'Pediatria'
                        );

INSERT INTO Funcionario (
                            codigo,
                            funcao,
                            ordenado,
                            NomeDep
                        )
                        VALUES (
                            2019012,
                            'Pediatra',
                            2000,
                            'Pediatria'
                        );

INSERT INTO Funcionario (
                            codigo,
                            funcao,
                            ordenado,
                            NomeDep
                        )
                        VALUES (
                            2019013,
                            'Auxiliar',
                            700,
                            'Consulta Externa'
                        );

INSERT INTO Funcionario (
                            codigo,
                            funcao,
                            ordenado,
                            NomeDep
                        )
                        VALUES (
                            2019014,
                            'Enfermeiro',
                            1000,
                            'Consulta Externa'
                        );

INSERT INTO Funcionario (
                            codigo,
                            funcao,
                            ordenado,
                            NomeDep
                        )
                        VALUES (
                            2019015,
                            'Enfermeiro',
                            1000,
                            'Consulta Externa'
                        );

INSERT INTO Funcionario (
                            codigo,
                            funcao,
                            ordenado,
                            NomeDep
                        )
                        VALUES (
                            2019016,
                            'Auxiliar',
                            700,
                            'Obstetricia'
                        );

INSERT INTO Funcionario (
                            codigo,
                            funcao,
                            ordenado,
                            NomeDep
                        )
                        VALUES (
                            2019017,
                            'Enfermeiro',
                            1000,
                            'Obstetricia'
                        );

INSERT INTO Funcionario (
                            codigo,
                            funcao,
                            ordenado,
                            NomeDep
                        )
                        VALUES (
                            2019018,
                            'Parteira',
                            1400,
                            'Obstetricia'
                        );

INSERT INTO Funcionario (
                            codigo,
                            funcao,
                            ordenado,
                            NomeDep
                        )
                        VALUES (
                            2019019,
                            'Parteira',
                            1400,
                            'Obstetricia'
                        );

INSERT INTO Funcionario (
                            codigo,
                            funcao,
                            ordenado,
                            NomeDep
                        )
                        VALUES (
                            2019020,
                            'Medico',
                            1700,
                            'Obstetricia'
                        );


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

INSERT INTO Historial (
                          codigoDoe,
                          codigoCons
                      )
                      VALUES (
                          2019023,
                          2
                      );

INSERT INTO Historial (
                          codigoDoe,
                          codigoCons
                      )
                      VALUES (
                          2019024,
                          3
                      );

INSERT INTO Historial (
                          codigoDoe,
                          codigoCons
                      )
                      VALUES (
                          2019025,
                          4
                      );

INSERT INTO Historial (
                          codigoDoe,
                          codigoCons
                      )
                      VALUES (
                          2019027,
                          5
                      );

INSERT INTO Historial (
                          codigoDoe,
                          codigoCons
                      )
                      VALUES (
                          2019029,
                          1
                      );


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

INSERT INTO Horario (
                        codigo,
                        codigoFunc,
                        dia,
                        hora_inicio,
                        hora_final,
                        prevencao
                    )
                    VALUES (
                        1,
                        2019001,
                        '1/1/2019',
                        '8:00',
                        '16:00',
                        'FALSE'
                    );

INSERT INTO Horario (
                        codigo,
                        codigoFunc,
                        dia,
                        hora_inicio,
                        hora_final,
                        prevencao
                    )
                    VALUES (
                        2,
                        2019002,
                        '1/1/2019',
                        '16:00',
                        '24:00',
                        'FALSE'
                    );

INSERT INTO Horario (
                        codigo,
                        codigoFunc,
                        dia,
                        hora_inicio,
                        hora_final,
                        prevencao
                    )
                    VALUES (
                        3,
                        2019003,
                        '1/12019',
                        '8:00',
                        '16:00',
                        'FALSE'
                    );

INSERT INTO Horario (
                        codigo,
                        codigoFunc,
                        dia,
                        hora_inicio,
                        hora_final,
                        prevencao
                    )
                    VALUES (
                        4,
                        2019004,
                        '1/1/2019',
                        '16:00',
                        '24:00',
                        'FALSE'
                    );

INSERT INTO Horario (
                        codigo,
                        codigoFunc,
                        dia,
                        hora_inicio,
                        hora_final,
                        prevencao
                    )
                    VALUES (
                        5,
                        2019005,
                        '1/1/2019',
                        '8:00',
                        '16:00',
                        'FALSE'
                    );

INSERT INTO Horario (
                        codigo,
                        codigoFunc,
                        dia,
                        hora_inicio,
                        hora_final,
                        prevencao
                    )
                    VALUES (
                        6,
                        2019006,
                        '1/1/2019',
                        '0:00',
                        '8:00',
                        'FALSE'
                    );

INSERT INTO Horario (
                        codigo,
                        codigoFunc,
                        dia,
                        hora_inicio,
                        hora_final,
                        prevencao
                    )
                    VALUES (
                        7,
                        2019007,
                        '1/1/2019',
                        '8:00',
                        '16:00',
                        'FALSE'
                    );

INSERT INTO Horario (
                        codigo,
                        codigoFunc,
                        dia,
                        hora_inicio,
                        hora_final,
                        prevencao
                    )
                    VALUES (
                        8,
                        2019008,
                        '1/1/2019',
                        '16:00',
                        '24:00',
                        'FALSE'
                    );

INSERT INTO Horario (
                        codigo,
                        codigoFunc,
                        dia,
                        hora_inicio,
                        hora_final,
                        prevencao
                    )
                    VALUES (
                        9,
                        2019009,
                        '1/1/2019',
                        '0:00',
                        '24:00',
                        'TRUE'
                    );

INSERT INTO Horario (
                        codigo,
                        codigoFunc,
                        dia,
                        hora_inicio,
                        hora_final,
                        prevencao
                    )
                    VALUES (
                        10,
                        2019010,
                        '1/1/2019',
                        '8:00',
                        '16:00',
                        'FALSE'
                    );

INSERT INTO Horario (
                        codigo,
                        codigoFunc,
                        dia,
                        hora_inicio,
                        hora_final,
                        prevencao
                    )
                    VALUES (
                        11,
                        2019011,
                        '1/1/2019',
                        '8:00',
                        '16:00',
                        'FALSE'
                    );

INSERT INTO Horario (
                        codigo,
                        codigoFunc,
                        dia,
                        hora_inicio,
                        hora_final,
                        prevencao
                    )
                    VALUES (
                        12,
                        2019012,
                        '1/1/2019',
                        '8:00',
                        '16:00',
                        'FALSE'
                    );

INSERT INTO Horario (
                        codigo,
                        codigoFunc,
                        dia,
                        hora_inicio,
                        hora_final,
                        prevencao
                    )
                    VALUES (
                        13,
                        2019013,
                        '1/1/2019',
                        '8:00',
                        '16:00',
                        'FALSE'
                    );

INSERT INTO Horario (
                        codigo,
                        codigoFunc,
                        dia,
                        hora_inicio,
                        hora_final,
                        prevencao
                    )
                    VALUES (
                        14,
                        2019014,
                        '1/1/2019',
                        '8:00',
                        '16:00',
                        'FALSE'
                    );

INSERT INTO Horario (
                        codigo,
                        codigoFunc,
                        dia,
                        hora_inicio,
                        hora_final,
                        prevencao
                    )
                    VALUES (
                        15,
                        2019015,
                        '1/1/2019',
                        '8:00',
                        '16:00',
                        'FALSE'
                    );

INSERT INTO Horario (
                        codigo,
                        codigoFunc,
                        dia,
                        hora_inicio,
                        hora_final,
                        prevencao
                    )
                    VALUES (
                        16,
                        2019016,
                        '1/1/2019',
                        '8:00',
                        '16:00',
                        'FALSE'
                    );

INSERT INTO Horario (
                        codigo,
                        codigoFunc,
                        dia,
                        hora_inicio,
                        hora_final,
                        prevencao
                    )
                    VALUES (
                        17,
                        2019017,
                        '1/1/2019',
                        '8:00',
                        '16:00',
                        'FALSE'
                    );

INSERT INTO Horario (
                        codigo,
                        codigoFunc,
                        dia,
                        hora_inicio,
                        hora_final,
                        prevencao
                    )
                    VALUES (
                        18,
                        2019018,
                        '1/1/2019',
                        '8:00',
                        '16:00',
                        'FALSE'
                    );

INSERT INTO Horario (
                        codigo,
                        codigoFunc,
                        dia,
                        hora_inicio,
                        hora_final,
                        prevencao
                    )
                    VALUES (
                        19,
                        2019019,
                        '1/1/2019',
                        '16:00',
                        '24:00',
                        'FALSE'
                    );

INSERT INTO Horario (
                        codigo,
                        codigoFunc,
                        dia,
                        hora_inicio,
                        hora_final,
                        prevencao
                    )
                    VALUES (
                        20,
                        2019020,
                        '1/1/2019',
                        '0:00',
                        '24:00',
                        'TRUE'
                    );


-- Table: Hospital
DROP TABLE IF EXISTS Hospital;

CREATE TABLE Hospital (
    Codigo   INTEGER      PRIMARY KEY,
    Nome     TEXT (6, 48) NOT NULL,
    Morada   TEXT (6, 48) NOT NULL,
    Telefone TEXT (9, 9)  NOT NULL
)
WITHOUT ROWID;

INSERT INTO Hospital (
                         Codigo,
                         Nome,
                         Morada,
                         Telefone
                     )
                     VALUES (
                         20,
                         'Ruben',
                         'Rua exemplar David da Costa',
                         '911112024'
                     );


-- Table: Intervencao
DROP TABLE IF EXISTS Intervencao;

CREATE TABLE Intervencao (
    codigo INTEGER      PRIMARY KEY,
    Nome   TEXT (6, 20) NOT NULL ON CONFLICT ABORT
)
WITHOUT ROWID;

INSERT INTO Intervencao (
                            codigo,
                            Nome
                        )
                        VALUES (
                            1,
                            'Cirugia'
                        );


-- Table: Medicamento
DROP TABLE IF EXISTS Medicamento;

CREATE TABLE Medicamento (
    codigo INTEGER      PRIMARY KEY,
    Nome   TEXT (6, 20) NOT NULL ON CONFLICT ABORT
)
WITHOUT ROWID;

INSERT INTO Medicamento (
                            codigo,
                            Nome
                        )
                        VALUES (
                            23,
                            'Brufenne'
                        );


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

INSERT INTO NumeroDisponivel (
                                 codigoArm,
                                 codigoMedi,
                                 numero_disponivel
                             )
                             VALUES (
                                 1,
                                 23,
                                 198
                             );


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

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019001,
                       'Rudrigo',
                       '22222222',
                       'Rua exemplar',
                       '02-02-1970'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019002,
                       'Assunçãp',
                       '33333333',
                       'Rua exemplar 4, D',
                       '30-04-1980'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019003,
                       'Maria Madalena',
                       '44444444',
                       'Rua exemplar 4, E',
                       '21-05-1966'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019004,
                       'Holga',
                       '55555555',
                       'Rua diferente 275',
                       '31-06-1996'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019005,
                       'Luisa',
                       '66666666',
                       'Rua diferente 30',
                       '01-12-1997'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019006,
                       'Fernando',
                       '77777777',
                       'Rua rica 44',
                       '05-7-1987'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019007,
                       'Joana',
                       '88888888',
                       'Rua diferente 99',
                       '07-8-1999'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019008,
                       'Luis',
                       '99999999',
                       'Rua exemplar 420',
                       '24-11-1989'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019009,
                       'Maria',
                       '10101010',
                       'Rua rica 77',
                       '31-01-2000'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019010,
                       'Guilherme',
                       '11111111',
                       'Rua diferente 360',
                       '24-02-1998'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019011,
                       'Julio',
                       '12121212',
                       'Rua exemplar 5, DF',
                       '13-08-1997'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019012,
                       'Ricardo',
                       '13131313',
                       'Rua rica 97',
                       '24-03-1996'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019013,
                       'Adriano',
                       '14141414',
                       'Rua exemplar 5, DT',
                       '30-01-1888'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019014,
                       'Juliu',
                       '15151515',
                       'Rua diferente 88',
                       '20-06-1989'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019015,
                       'Helena',
                       '16161616',
                       'Rua exemplar 5, ET',
                       '24-07-1970'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019016,
                       'Luisa',
                       '17171717',
                       'Rua exemplar 5, EF',
                       '12-10-1996'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019017,
                       'Nuno',
                       '18181818',
                       'Rua exemplar 5, EF',
                       '26-10-1993'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019018,
                       'Tiago',
                       '19191919',
                       'Rua rica 112',
                       '15-04-1980'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019019,
                       'Adriana',
                       '20202020',
                       'Rua diferente 66',
                       '20-09-1995'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019020,
                       'Paula',
                       '21212121',
                       'Rua rica 20',
                       '03-08-1973'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019021,
                       'Ruan',
                       '23232323',
                       'Rua Adoentada 3',
                       '07-12-2016'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019022,
                       'Paulo',
                       '24242424',
                       'Rua Luis Brandão',
                       '20-05-2000'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019023,
                       'Miguel',
                       '25252525',
                       'Rua da Guiana Francesa',
                       '08-01-1999'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019024,
                       'Mariana',
                       '26262626',
                       'Rua exemplar 29',
                       '27-03-1999'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019025,
                       'Filipe',
                       '27272727',
                       'Rua rica 6',
                       '29-06-1969'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019026,
                       'Susana',
                       '28282828',
                       'Rua exemplar 230',
                       '09-11-2014'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019027,
                       'João',
                       '29292929',
                       'Rua rica 43',
                       '29-08-1999'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019029,
                       'Ana Rita',
                       '30303030',
                       'Rua Ministru Avila',
                       '01-05-2014'
                   );

INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019030,
                       'Joana',
                       '31313131',
                       'Rua D.Dinis',
                       '13-04-1996'
                   );


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

INSERT INTO Prescricao (
                           codigo,
                           codigoCons,
                           codigoMedi,
                           dosagem,
                           duracao
                       )
                       VALUES (
                           1,
                           1,
                           23,
                           '2',
                           10
                       );

INSERT INTO Prescricao (
                           codigo,
                           codigoCons,
                           codigoMedi,
                           dosagem,
                           duracao
                       )
                       VALUES (
                           2,
                           2,
                           23,
                           '10',
                           4
                       );


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

INSERT INTO Tratamento (
                           codigoCons,
                           codigoInt
                       )
                       VALUES (
                           1,
                           1
                       );

INSERT INTO Tratamento (
                           codigoCons,
                           codigoInt
                       )
                       VALUES (
                           4,
                           1
                       );

INSERT INTO Tratamento (
                           codigoCons,
                           codigoInt
                       )
                       VALUES (
                           5,
                           1
                       );


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

INSERT INTO Veiculo (
                        matricula,
                        disponivel,
                        marca,
                        codigoHosp
                    )
                    VALUES (
                        '01 GG 07 ',
                        1,
                        'Pjou',
                        20
                    );

INSERT INTO Veiculo (
                        matricula,
                        disponivel,
                        marca,
                        codigoHosp
                    )
                    VALUES (
                        '12 AD 42',
                        1,
                        'Porche',
                        20
                    );

INSERT INTO Veiculo (
                        matricula,
                        disponivel,
                        marca,
                        codigoHosp
                    )
                    VALUES (
                        '33 FF 50',
                        1,
                        'Hunda',
                        20
                    );

INSERT INTO Veiculo (
                        matricula,
                        disponivel,
                        marca,
                        codigoHosp
                    )
                    VALUES (
                        '60 MG 09',
                        0,
                        'Mata-Velhos',
                        20
                    );


-- Trigger: Before_Insert
DROP TRIGGER IF EXISTS Before_Insert;
CREATE TRIGGER Before_Insert
        BEFORE INSERT
            ON Prescricao
      FOR EACH ROW
BEGIN
    SELECT CASE WHEN 0 = (
                             SELECT numero_disponivel
                               FROM numeroDisponivel
                              WHERE NEW.codigoMedi = codigoMedi
                         )
           THEN RAISE(ABORT, "nao ha mais medicamentos") END;
END;


-- Trigger: Delete Departamento
DROP TRIGGER IF EXISTS "Delete Departamento";
CREATE TRIGGER [Delete Departamento]
         AFTER DELETE
            ON Departamento
      FOR EACH ROW
BEGIN
    DELETE FROM Enfermaria
          WHERE nomeDep = OLD.nome;
END;


-- Trigger: Insert_Prescricao
DROP TRIGGER IF EXISTS Insert_Prescricao;
CREATE TRIGGER Insert_Prescricao
         AFTER INSERT
            ON Prescricao
      FOR EACH ROW
BEGIN
    UPDATE NumeroDisponivel
       SET numero_disponivel = numero_disponivel - 1
     WHERE codigoMedi = NEW.codigoMedi;
END;


-- Trigger: UpdateSalary
DROP TRIGGER IF EXISTS UpdateSalary;
CREATE TRIGGER UpdateSalary
        BEFORE UPDATE OF prevencao
            ON Horario
      FOR EACH ROW
          WHEN NEW.prevencao = TRUE
BEGIN
    UPDATE Funcionario
       SET ordenado = ordenado + 50
     WHERE codigo = NEW.codigoFunc;
END;


-- View: Carrinhas Disponiveis
DROP VIEW IF EXISTS "Carrinhas Disponiveis";
CREATE VIEW [Carrinhas Disponiveis] AS
    SELECT marca
      FROM Veiculo
     WHERE disponivel = 1;


-- View: Doentes internados em 20 de Janeiro de 2019
DROP VIEW IF EXISTS "Doentes internados em 20 de Janeiro de 2019";
CREATE VIEW [Doentes internados em 20 de Janeiro de 2019] AS
    SELECT nome
      FROM Doente,
           Estadia
     WHERE Doente.codigo = Estadia.codigoDoen AND 
           Estadia.Data_inicio <= "20/01/2019" AND 
           "20/01/2019" <= Estadia.Data_final;


-- View: Funcionarios a trabalhar na Pediatria em 20 de Janeiro de 2019
DROP VIEW IF EXISTS "Funcionarios a trabalhar na Pediatria em 20 de Janeiro de 2019";
CREATE VIEW [Funcionarios a trabalhar na Pediatria em 20 de Janeiro de 2019] AS
    SELECT Nome
      FROM Pessoa,
           Funcionario,
           Horario
     WHERE Pessoa.codigo = Funcionario.codigo AND 
           Funcionario.codigo = Horario.codigoFunc AND 
           Horario.dia = "20/01/2019";


-- View: Historial de todos os doentes
DROP VIEW IF EXISTS "Historial de todos os doentes";
CREATE VIEW [Historial de todos os doentes] (
    Codigo_Doente,
    Data_examinacao,
    dosagem,
    duracao,
    Nome
)
AS
    SELECT DISTINCT Doente.codigo AS Codigo_Doente,
                    Consulta.Data_examinacao,
                    Prescricao.dosagem,
                    Prescricao.duracao,
                    Medicamento.Nome
      FROM Doente
           LEFT OUTER JOIN
           Historial ON Doente.codigo = Historial.codigoDoe
           LEFT OUTER JOIN
           Consulta ON Historial.codigoCons = Consulta.codigo
           LEFT OUTER JOIN
           Prescricao ON Prescricao.codigoCons = Consulta.codigo
           LEFT OUTER JOIN
           Medicamento ON Medicamento.codigo = Prescricao.codigoMedi
     ORDER BY CODIGO_DOENTE;


-- View: Medicina em escassez
DROP VIEW IF EXISTS "Medicina em escassez";
CREATE VIEW [Medicina em escassez] AS
    SELECT nome
      FROM Medicamento,
           NumeroDisponivel
     WHERE Medicamento.codigo = NumeroDisponivel.codigoMedi AND 
           NumeroDisponivel.numero_disponivel < 10;


-- View: Nome dos funcionarios com grandes remunerações
DROP VIEW IF EXISTS "Nome dos funcionarios com grandes remunerações";
CREATE VIEW [Nome dos funcionarios com grandes remunerações] AS
    SELECT name,
           NomeDep
      FROM Funcionario
     WHERE (ordenado > 2000);


-- View: Pessoas que receberam uma Vasectomia 
DROP VIEW IF EXISTS "Pessoas que receberam uma Vasectomia ";
CREATE VIEW [Pessoas que receberam uma Vasectomia ] AS
    SELECT name
      FROM Pessoa,
           Doente,
           Historial,
           Consulta,
           Tratamento,
           Intervencao
     WHERE Pessoa.codigo = Doente.codigo AND 
           Doente.codigo = Historial.codigoDoe AND 
           Historial.codigoCons = Consulta.codigo AND 
           Consulta.codigo = Tratamento.codigoCons AND 
           Tratamento.codigoInt = Intervencao.codigo AND 
           Intervencao.Nome = "Vasectomia";


-- View: Relatorio de Paciente Internado
DROP VIEW IF EXISTS "Relatorio de Paciente Internado";
CREATE VIEW [Relatorio de Paciente Internado] AS
    SELECT DISTINCT Doente.codigo AS Codigo_Doente,
                    Funcionario.codigo AS Codigo_Func,
                    Enfermaria.NomeDep,
                    Estadia.Cod_Enfermaria,
                    Estadia.cama,
                    Estadia.Data_inicio AS DATA_INICIAL_ESTADIA,
                    Estadia.Data_final AS DATA_FINAL_ESTADIA
      FROM Doente,
           EquipaMultidisciplinar,
           Funcionario,
           Estadia,
           Enfermaria
     WHERE Doente.codigo = EquipaMultidisciplinar.codigoDoen AND 
           EquipaMultidisciplinar.CodigoFunc = Funcionario.codigo AND 
           Estadia.codigoDoen = Doente.codigo AND 
           Enfermaria.codigo = Estadia.Cod_Enfermaria
     ORDER BY CODIGO_DOENTE;


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
