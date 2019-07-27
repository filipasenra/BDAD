--
-- File generated with SQLiteStudio v3.2.1 on dom abr 14 18:02:47 2019
--
-- Text encoding used: System
--
PRAGMA foreign_keys = on;

-- Table: Hospital
INSERT INTO Hospital ( Codigo, Nome, Morada, Telefone ) VALUES (  20,  'Ruben', 'Rua exemplar David da Costa', '911112024' );

-- Table: Armazem
INSERT INTO Armazem ( codigo, codigoHosp ) VALUES ( 1, 20 );

-- Table: Consulta
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

INSERT INTO Consulta (
                         codigo,
                         Data_examinacao
                     )
                     VALUES (
                         6,
                         '21-01-2019'
                     );

INSERT INTO Consulta (
                         codigo,
                         Data_examinacao
                     )
                     VALUES (
                         7,
                         '03-01-2019'
                     );

INSERT INTO Consulta (
                         codigo,
                         Data_examinacao
                     )
                     VALUES (
                         8,
                         '04-01-2019'
                     );

INSERT INTO Consulta (
                         codigo,
                         Data_examinacao
                     )
                     VALUES (
                         9,
                         '10-02-2019'
                     );

INSERT INTO Consulta (
                         codigo,
                         Data_examinacao
                     )
                     VALUES (
                         10,
                         '11-02-2019'
                     );

INSERT INTO Consulta (
                         codigo,
                         Data_examinacao
                     )
                     VALUES (
                         11,
                         '04-02-2019'
                     );

INSERT INTO Consulta (
                         codigo,
                         Data_examinacao
                     )
                     VALUES (
                         12,
                         '20-01-2019'
                     );

INSERT INTO Consulta (
                         codigo,
                         Data_examinacao
                     )
                     VALUES (
                         13,
                         '03-03-2019'
                     );

INSERT INTO Consulta (
                         codigo,
                         Data_examinacao
                     )
                     VALUES (
                         14,
                         '12-01-2019'
                     );

INSERT INTO Consulta (
                         codigo,
                         Data_examinacao
                     )
                     VALUES (
                         15,
                         '15-01-2019'
                     );

-- Table: Departamento
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

-- Table: Pessoa
INSERT INTO Pessoa (
                       codigo,
                       nome,
                       nif,
                       morada,
                       DataDeNascimento
                   )
                   VALUES (
                       2019001,
                       'Rodrigo',
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
                       'Assunção',
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
                       'Júlio',
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
                       'João',
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

-- Table: Doente
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

-- Table: Funcionario
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


-- Table: Enfermaria
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

INSERT INTO Enfermaria (
                           codigo,
                           capacidade,
                           NomeDep
                       )
                       VALUES (
                           6,
                           25,
                           'Cuidados Intensivos'
                       );

INSERT INTO Enfermaria (
                           codigo,
                           capacidade,
                           NomeDep
                       )
                       VALUES (
                           7,
                           40,
                           'Urgencia'
                       );

INSERT INTO Enfermaria (
                           codigo,
                           capacidade,
                           NomeDep
                       )
                       VALUES (
                           8,
                           20,
                           'Pediatria'
                       );

INSERT INTO Enfermaria (
                           codigo,
                           capacidade,
                           NomeDep
                       )
                       VALUES (
                           9,
                           5,
                           'Consulta Externa'
                       );

INSERT INTO Enfermaria (
                           codigo,
                           capacidade,
                           NomeDep
                       )
                       VALUES (
                           10,
                           10,
                           'Cuidados Intensivos'
                       );

INSERT INTO Enfermaria (
                           codigo,
                           capacidade,
                           NomeDep
                       )
                       VALUES (
                           11,
                           30,
                           'Urgencia'
                       );

INSERT INTO Enfermaria (
                           codigo,
                           capacidade,
                           NomeDep
                       )
                       VALUES (
                           12,
                           20,
                           'Obstetricia'
                       );

-- Table: EquipaMultidisciplinar
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
                                       2019021
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

INSERT INTO Estadia (
                        Codigo,
                        cama,
                        codigoDoen,
                        Data_inicio,
                        Data_final,
                        Cod_Enfermaria
                    )
                    VALUES (
                        2,
                        12,
                        2019029,
                        '06-02-2019',
                        '20-02-2019',
                        11
                    );

INSERT INTO Estadia (
                        Codigo,
                        cama,
                        codigoDoen,
                        Data_inicio,
                        Data_final,
                        Cod_Enfermaria
                    )
                    VALUES (
                        3,
                        4,
                        2019027,
                        '04-01-2019',
                        '20-01-2019',
                        12
                    );

INSERT INTO Estadia (
                        Codigo,
                        cama,
                        codigoDoen,
                        Data_inicio,
                        Data_final,
                        Cod_Enfermaria
                    )
                    VALUES (
                        4,
                        6,
                        2019022,
                        '23-01-2019',
                        '30-01-2019',
                        10
                    );

INSERT INTO Estadia (
                        Codigo,
                        cama,
                        codigoDoen,
                        Data_inicio,
                        Data_final,
                        Cod_Enfermaria
                    )
                    VALUES (
                        5,
                        7,
                        2019026,
                        '04-02-2019',
                        '06-02-2019',
                        7
                    );

INSERT INTO Estadia (
                        Codigo,
                        cama,
                        codigoDoen,
                        Data_inicio,
                        Data_final,
                        Cod_Enfermaria
                    )
                    VALUES (
                        6,
                        2,
                        2019025,
                        '1-12-2018',
                        '20-01-2019',
                        5
                    );

INSERT INTO Estadia (
                        Codigo,
                        cama,
                        codigoDoen,
                        Data_inicio,
                        Data_final,
                        Cod_Enfermaria
                    )
                    VALUES (
                        7,
                        20,
                        2019030,
                        '01-01-2019',
                        '01-02-2019',
                        8
                    );

INSERT INTO Estadia (
                        Codigo,
                        cama,
                        codigoDoen,
                        Data_inicio,
                        Data_final,
                        Cod_Enfermaria
                    )
                    VALUES (
                        8,
                        21,
                        2019024,
                        '20-01-2019',
                        '21-01-2019',
                        2
                    );

-- Table: Historial
INSERT INTO Historial (
                          codigoDoe,
                          codigoCons
                      )
                      VALUES (
                          2019021,
                          10
                      );

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
                          2019023,
                          9
                      );

INSERT INTO Historial (
                          codigoDoe,
                          codigoCons
                      )
                      VALUES (
                          2019023,
                          13
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
                          2019024,
                          11
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
                          2019025,
                          6
                      );

INSERT INTO Historial (
                          codigoDoe,
                          codigoCons
                      )
                      VALUES (
                          2019026,
                          14
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
                          2019027,
                          12
                      );

INSERT INTO Historial (
                          codigoDoe,
                          codigoCons
                      )
                      VALUES (
                          2019029,
                          1
                      );

INSERT INTO Historial (
                          codigoDoe,
                          codigoCons
                      )
                      VALUES (
                          2019029,
                          7
                      );

INSERT INTO Historial (
                          codigoDoe,
                          codigoCons
                      )
                      VALUES (
                          2019029,
                          15
                      );

INSERT INTO Historial (
                          codigoDoe,
                          codigoCons
                      )
                      VALUES (
                          2019030,
                          8
                      );

-- Table: Horario
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
                        0
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
                        0
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
                        0
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
                        0
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
                        0
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
                        0
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
                        0
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
                        0
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
                        1
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
                        0
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
                        0
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
                        0
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
                        0
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
                        0
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
                        0
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
                        0
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
                        0
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
                        0
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
                        0
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
                        1
                    );

-- Table: Intervencao
INSERT INTO Intervencao (
                            codigo,
                            Nome
                        )
                        VALUES (
                            1,
                            'Cirugia'
                        );

INSERT INTO Intervencao (
                            codigo,
                            Nome
                        )
                        VALUES (
                            2,
                            'Apendicectomia '
                        );

INSERT INTO Intervencao (
                            codigo,
                            Nome
                        )
                        VALUES (
                            3,
                            'Cistectomia '
                        );

INSERT INTO Intervencao (
                            codigo,
                            Nome
                        )
                        VALUES (
                            4,
                            'Colecistectomia '
                        );

INSERT INTO Intervencao (
                            codigo,
                            Nome
                        )
                        VALUES (
                            5,
                            'Craniectomia '
                        );

INSERT INTO Intervencao (
                            codigo,
                            Nome
                        )
                        VALUES (
                            6,
                            'Colporrafia '
                        );

INSERT INTO Intervencao (
                            codigo,
                            Nome
                        )
                        VALUES (
                            7,
                            'Gastrorrafia '
                        );

INSERT INTO Intervencao (
                            codigo,
                            Nome
                        )
                        VALUES (
                            8,
                            'Herniorrafia '
                        );

INSERT INTO Intervencao (
                            codigo,
                            Nome
                        )
                        VALUES (
                            9,
                            'Cistostomia '
                        );

INSERT INTO Intervencao (
                            codigo,
                            Nome
                        )
                        VALUES (
                            10,
                            'Colecistostomia '
                        );

INSERT INTO Intervencao (
                            codigo,
                            Nome
                        )
                        VALUES (
                            11,
                            'Artrotomia '
                        );

INSERT INTO Intervencao (
                            codigo,
                            Nome
                        )
                        VALUES (
                            12,
                            'Amputação '
                        );

INSERT INTO Intervencao (
                            codigo,
                            Nome
                        )
                        VALUES (
                            13,
                            'Anastomose '
                        );

INSERT INTO Intervencao (
                            codigo,
                            Nome
                        )
                        VALUES (
                            14,
                            'Broncoscopia '
                        );

INSERT INTO Intervencao (
                            codigo,
                            Nome
                        )
                        VALUES (
                            15,
                            'Cistoscopia '
                        );

INSERT INTO Intervencao (
                            codigo,
                            Nome
                        )
                        VALUES (
                            16,
                            'Transplate de ooração'
                        );

INSERT INTO Intervencao (
                            codigo,
                            Nome
                        )
                        VALUES (
                            17,
                            'Transplate de medula ossea'
                        );

INSERT INTO Intervencao (
                            codigo,
                            Nome
                        )
                        VALUES (
                            18,
                            'Transplate de rim'
                        );

-- Table: Medicamento
INSERT INTO Medicamento (
                            codigo,
                            Nome
                        )
                        VALUES (
                            1,
                            'REYATAZ'
                        );

INSERT INTO Medicamento (
                            codigo,
                            Nome
                        )
                        VALUES (
                            2,
                            'STRATTERA'
                        );

INSERT INTO Medicamento (
                            codigo,
                            Nome
                        )
                        VALUES (
                            3,
                            'TENORMIN'
                        );

INSERT INTO Medicamento (
                            codigo,
                            Nome
                        )
                        VALUES (
                            4,
                            'MEPRON'
                        );

INSERT INTO Medicamento (
                            codigo,
                            Nome
                        )
                        VALUES (
                            5,
                            'MALARONE'
                        );

INSERT INTO Medicamento (
                            codigo,
                            Nome
                        )
                        VALUES (
                            6,
                            'ATROPEN'
                        );

INSERT INTO Medicamento (
                            codigo,
                            Nome
                        )
                        VALUES (
                            7,
                            'RIDAURA'
                        );

INSERT INTO Medicamento (
                            codigo,
                            Nome
                        )
                        VALUES (
                            8,
                            'STENDRA'
                        );

INSERT INTO Medicamento (
                            codigo,
                            Nome
                        )
                        VALUES (
                            9,
                            'VIDAZA'
                        );

INSERT INTO Medicamento (
                            codigo,
                            Nome
                        )
                        VALUES (
                            10,
                            'IMURAN'
                        );

INSERT INTO Medicamento (
                            codigo,
                            Nome
                        )
                        VALUES (
                            11,
                            'EDARBI'
                        );

INSERT INTO Medicamento (
                            codigo,
                            Nome
                        )
                        VALUES (
                            12,
                            'SURVANTA'
                        );

INSERT INTO Medicamento (
                            codigo,
                            Nome
                        )
                        VALUES (
                            13,
                            'BETOPTIC'
                        );

INSERT INTO Medicamento (
                            codigo,
                            Nome
                        )
                        VALUES (
                            14,
                            'AVASTIN'
                        );

INSERT INTO Medicamento (
                            codigo,
                            Nome
                        )
                        VALUES (
                            15,
                            'LUMIGAN'
                        );

INSERT INTO Medicamento (
                            codigo,
                            Nome
                        )
                        VALUES (
                            16,
                            'CASODEX'
                        );

INSERT INTO Medicamento (
                            codigo,
                            Nome
                        )
                        VALUES (
                            17,
                            'ANGIOMAX'
                        );

INSERT INTO Medicamento (
                            codigo,
                            Nome
                        )
                        VALUES (
                            18,
                            'SINEMET'
                        );

INSERT INTO Medicamento (
                            codigo,
                            Nome
                        )
                        VALUES (
                            19,
                            'LODOSYN'
                        );

INSERT INTO Medicamento (
                            codigo,
                            Nome
                        )
                        VALUES (
                            20,
                            'TEGRETOL'
                        );

INSERT INTO Medicamento (
                            codigo,
                            Nome
                        )
                        VALUES (
                            21,
                            'KYPROLIS'
                        );

INSERT INTO Medicamento (
                            codigo,
                            Nome
                        )
                        VALUES (
                            22,
                            'VRAYLAR'
                        );

INSERT INTO Medicamento (
                            codigo,
                            Nome
                        )
                        VALUES (
                            23,
                            'Brufenne'
                        );

-- Table: NumeroDisponivel
INSERT INTO NumeroDisponivel (
                                 codigoArm,
                                 codigoMedi,
                                 numero_disponivel
                             )
                             VALUES (
                                 1,
                                 1,
                                 0
                             );

INSERT INTO NumeroDisponivel (
                                 codigoArm,
                                 codigoMedi,
                                 numero_disponivel
                             )
                             VALUES (
                                 1,
                                 2,
                                 19
                             );

INSERT INTO NumeroDisponivel (
                                 codigoArm,
                                 codigoMedi,
                                 numero_disponivel
                             )
                             VALUES (
                                 1,
                                 3,
                                 11
                             );

INSERT INTO NumeroDisponivel (
                                 codigoArm,
                                 codigoMedi,
                                 numero_disponivel
                             )
                             VALUES (
                                 1,
                                 4,
                                 0
                             );

INSERT INTO NumeroDisponivel (
                                 codigoArm,
                                 codigoMedi,
                                 numero_disponivel
                             )
                             VALUES (
                                 1,
                                 5,
                                 200
                             );

INSERT INTO NumeroDisponivel (
                                 codigoArm,
                                 codigoMedi,
                                 numero_disponivel
                             )
                             VALUES (
                                 1,
                                 6,
                                 24
                             );

INSERT INTO NumeroDisponivel (
                                 codigoArm,
                                 codigoMedi,
                                 numero_disponivel
                             )
                             VALUES (
                                 1,
                                 7,
                                 22
                             );

INSERT INTO NumeroDisponivel (
                                 codigoArm,
                                 codigoMedi,
                                 numero_disponivel
                             )
                             VALUES (
                                 1,
                                 8,
                                 55
                             );

INSERT INTO NumeroDisponivel (
                                 codigoArm,
                                 codigoMedi,
                                 numero_disponivel
                             )
                             VALUES (
                                 1,
                                 9,
                                 46
                             );

INSERT INTO NumeroDisponivel (
                                 codigoArm,
                                 codigoMedi,
                                 numero_disponivel
                             )
                             VALUES (
                                 1,
                                 10,
                                 86
                             );

INSERT INTO NumeroDisponivel (
                                 codigoArm,
                                 codigoMedi,
                                 numero_disponivel
                             )
                             VALUES (
                                 1,
                                 11,
                                 1
                             );

INSERT INTO NumeroDisponivel (
                                 codigoArm,
                                 codigoMedi,
                                 numero_disponivel
                             )
                             VALUES (
                                 1,
                                 12,
                                 542
                             );

INSERT INTO NumeroDisponivel (
                                 codigoArm,
                                 codigoMedi,
                                 numero_disponivel
                             )
                             VALUES (
                                 1,
                                 13,
                                 233
                             );

INSERT INTO NumeroDisponivel (
                                 codigoArm,
                                 codigoMedi,
                                 numero_disponivel
                             )
                             VALUES (
                                 1,
                                 14,
                                 2
                             );

INSERT INTO NumeroDisponivel (
                                 codigoArm,
                                 codigoMedi,
                                 numero_disponivel
                             )
                             VALUES (
                                 1,
                                 15,
                                 764
                             );

INSERT INTO NumeroDisponivel (
                                 codigoArm,
                                 codigoMedi,
                                 numero_disponivel
                             )
                             VALUES (
                                 1,
                                 16,
                                 42
                             );

INSERT INTO NumeroDisponivel (
                                 codigoArm,
                                 codigoMedi,
                                 numero_disponivel
                             )
                             VALUES (
                                 1,
                                 17,
                                 33
                             );

INSERT INTO NumeroDisponivel (
                                 codigoArm,
                                 codigoMedi,
                                 numero_disponivel
                             )
                             VALUES (
                                 1,
                                 18,
                                 1
                             );

INSERT INTO NumeroDisponivel (
                                 codigoArm,
                                 codigoMedi,
                                 numero_disponivel
                             )
                             VALUES (
                                 1,
                                 19,
                                 320
                             );

INSERT INTO NumeroDisponivel (
                                 codigoArm,
                                 codigoMedi,
                                 numero_disponivel
                             )
                             VALUES (
                                 1,
                                 20,
                                 12
                             );

INSERT INTO NumeroDisponivel (
                                 codigoArm,
                                 codigoMedi,
                                 numero_disponivel
                             )
                             VALUES (
                                 1,
                                 21,
                                 42
                             );

INSERT INTO NumeroDisponivel (
                                 codigoArm,
                                 codigoMedi,
                                 numero_disponivel
                             )
                             VALUES (
                                 1,
                                 22,
                                 65
                             );

INSERT INTO NumeroDisponivel (
                                 codigoArm,
                                 codigoMedi,
                                 numero_disponivel
                             )
                             VALUES (
                                 1,
                                 23,
                                 87
                             );

-- Table: Prescricao
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

INSERT INTO Prescricao (
                           codigo,
                           codigoCons,
                           codigoMedi,
                           dosagem,
                           duracao
                       )
                       VALUES (
                           4,
                           3,
                           2,
                           '1',
                           24
                       );

INSERT INTO Prescricao (
                           codigo,
                           codigoCons,
                           codigoMedi,
                           dosagem,
                           duracao
                       )
                       VALUES (
                           5,
                           4,
                           6,
                           '23',
                           4
                       );

INSERT INTO Prescricao (
                           codigo,
                           codigoCons,
                           codigoMedi,
                           dosagem,
                           duracao
                       )
                       VALUES (
                           6,
                           4,
                           3,
                           '26',
                           24
                       );

INSERT INTO Prescricao (
                           codigo,
                           codigoCons,
                           codigoMedi,
                           dosagem,
                           duracao
                       )
                       VALUES (
                           7,
                           5,
                           5,
                           '7',
                           4
                       );

INSERT INTO Prescricao (
                           codigo,
                           codigoCons,
                           codigoMedi,
                           dosagem,
                           duracao
                       )
                       VALUES (
                           8,
                           5,
                           6,
                           '2',
                           12
                       );

INSERT INTO Prescricao (
                           codigo,
                           codigoCons,
                           codigoMedi,
                           dosagem,
                           duracao
                       )
                       VALUES (
                           9,
                           5,
                           7,
                           '25',
                           8
                       );

INSERT INTO Prescricao (
                           codigo,
                           codigoCons,
                           codigoMedi,
                           dosagem,
                           duracao
                       )
                       VALUES (
                           10,
                           6,
                           8,
                           '5',
                           24
                       );

INSERT INTO Prescricao (
                           codigo,
                           codigoCons,
                           codigoMedi,
                           dosagem,
                           duracao
                       )
                       VALUES (
                           11,
                           7,
                           9,
                           '100',
                           8
                       );

INSERT INTO Prescricao (
                           codigo,
                           codigoCons,
                           codigoMedi,
                           dosagem,
                           duracao
                       )
                       VALUES (
                           12,
                           8,
                           10,
                           '100',
                           12
                       );

INSERT INTO Prescricao (
                           codigo,
                           codigoCons,
                           codigoMedi,
                           dosagem,
                           duracao
                       )
                       VALUES (
                           13,
                           9,
                           11,
                           '250',
                           24
                       );

INSERT INTO Prescricao (
                           codigo,
                           codigoCons,
                           codigoMedi,
                           dosagem,
                           duracao
                       )
                       VALUES (
                           14,
                           10,
                           11,
                           '5',
                           8
                       );

INSERT INTO Prescricao (
                           codigo,
                           codigoCons,
                           codigoMedi,
                           dosagem,
                           duracao
                       )
                       VALUES (
                           15,
                           11,
                           12,
                           '5',
                           12
                       );

INSERT INTO Prescricao (
                           codigo,
                           codigoCons,
                           codigoMedi,
                           dosagem,
                           duracao
                       )
                       VALUES (
                           16,
                           12,
                           13,
                           '20',
                           12
                       );

INSERT INTO Prescricao (
                           codigo,
                           codigoCons,
                           codigoMedi,
                           dosagem,
                           duracao
                       )
                       VALUES (
                           17,
                           13,
                           14,
                           '20',
                           21
                       );

INSERT INTO Prescricao (
                           codigo,
                           codigoCons,
                           codigoMedi,
                           dosagem,
                           duracao
                       )
                       VALUES (
                           18,
                           13,
                           15,
                           '50',
                           48
                       );

INSERT INTO Prescricao (
                           codigo,
                           codigoCons,
                           codigoMedi,
                           dosagem,
                           duracao
                       )
                       VALUES (
                           19,
                           13,
                           16,
                           '50',
                           12
                       );

INSERT INTO Prescricao (
                           codigo,
                           codigoCons,
                           codigoMedi,
                           dosagem,
                           duracao
                       )
                       VALUES (
                           20,
                           14,
                           17,
                           '100',
                           12
                       );

INSERT INTO Prescricao (
                           codigo,
                           codigoCons,
                           codigoMedi,
                           dosagem,
                           duracao
                       )
                       VALUES (
                           21,
                           14,
                           18,
                           '100',
                           8
                       );

INSERT INTO Prescricao (
                           codigo,
                           codigoCons,
                           codigoMedi,
                           dosagem,
                           duracao
                       )
                       VALUES (
                           22,
                           15,
                           21,
                           '100',
                           8
                       );

INSERT INTO Prescricao (
                           codigo,
                           codigoCons,
                           codigoMedi,
                           dosagem,
                           duracao
                       )
                       VALUES (
                           23,
                           15,
                           19,
                           '100',
                           8
                       );

-- Table: Tratamento
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

INSERT INTO Tratamento (
                           codigoCons,
                           codigoInt
                       )
                       VALUES (
                           6,
                           2
                       );

INSERT INTO Tratamento (
                           codigoCons,
                           codigoInt
                       )
                       VALUES (
                           7,
                           3
                       );

INSERT INTO Tratamento (
                           codigoCons,
                           codigoInt
                       )
                       VALUES (
                           8,
                           4
                       );

INSERT INTO Tratamento (
                           codigoCons,
                           codigoInt
                       )
                       VALUES (
                           9,
                           5
                       );

INSERT INTO Tratamento (
                           codigoCons,
                           codigoInt
                       )
                       VALUES (
                           10,
                           6
                       );

INSERT INTO Tratamento (
                           codigoCons,
                           codigoInt
                       )
                       VALUES (
                           11,
                           7
                       );

INSERT INTO Tratamento (
                           codigoCons,
                           codigoInt
                       )
                       VALUES (
                           12,
                           8
                       );

INSERT INTO Tratamento (
                           codigoCons,
                           codigoInt
                       )
                       VALUES (
                           13,
                           9
                       );

INSERT INTO Tratamento (
                           codigoCons,
                           codigoInt
                       )
                       VALUES (
                           14,
                           10
                       );

INSERT INTO Tratamento (
                           codigoCons,
                           codigoInt
                       )
                       VALUES (
                           15,
                           13
                       );

-- Table: Veiculo
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
                        '25 25 GG',
                        1,
                        'Jester',
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

INSERT INTO Veiculo (
                        matricula,
                        disponivel,
                        marca,
                        codigoHosp
                    )
                    VALUES (
                        '78 HJ 65',
                        0,
                        'Zentorno',
                        20
                    );

INSERT INTO Veiculo (
                        matricula,
                        disponivel,
                        marca,
                        codigoHosp
                    )
                    VALUES (
                        '98 HG 85',
                        0,
                        'Coquette',
                        20
                    );

INSERT INTO Veiculo (
                        matricula,
                        disponivel,
                        marca,
                        codigoHosp
                    )
                    VALUES (
                        'AN 75 36',
                        1,
                        'Picador',
                        20
                    );

INSERT INTO Veiculo (
                        matricula,
                        disponivel,
                        marca,
                        codigoHosp
                    )
                    VALUES (
                        'AZ 24 32',
                        1,
                        'Kuruma',
                        20
                    );

INSERT INTO Veiculo (
                        matricula,
                        disponivel,
                        marca,
                        codigoHosp
                    )
                    VALUES (
                        'BA 72 43',
                        0,
                        'T20',
                        20
                    );

INSERT INTO Veiculo (
                        matricula,
                        disponivel,
                        marca,
                        codigoHosp
                    )
                    VALUES (
                        'BC 39 75',
                        1,
                        'Futo',
                        20
                    );

INSERT INTO Veiculo (
                        matricula,
                        disponivel,
                        marca,
                        codigoHosp
                    )
                    VALUES (
                        'BD 14 87',
                        0,
                        'Jackal',
                        20
                    );

INSERT INTO Veiculo (
                        matricula,
                        disponivel,
                        marca,
                        codigoHosp
                    )
                    VALUES (
                        'FG 58 65',
                        0,
                        'Kahalari',
                        20
                    );

INSERT INTO Veiculo (
                        matricula,
                        disponivel,
                        marca,
                        codigoHosp
                    )
                    VALUES (
                        'HN 87 10',
                        1,
                        'Manana',
                        20
                    );

INSERT INTO Veiculo (
                        matricula,
                        disponivel,
                        marca,
                        codigoHosp
                    )
                    VALUES (
                        'IU 74 58',
                        1,
                        'Brawler',
                        20
                    );

INSERT INTO Veiculo (
                        matricula,
                        disponivel,
                        marca,
                        codigoHosp
                    )
                    VALUES (
                        'KK 54 89',
                        1,
                        'Osiris',
                        20
                    );

INSERT INTO Veiculo (
                        matricula,
                        disponivel,
                        marca,
                        codigoHosp
                    )
                    VALUES (
                        'MN 25 45',
                        1,
                        'Monroe',
                        20
                    );

INSERT INTO Veiculo (
                        matricula,
                        disponivel,
                        marca,
                        codigoHosp
                    )
                    VALUES (
                        'NB 21 54',
                        0,
                        'Phantom',
                        20
                    );

INSERT INTO Veiculo (
                        matricula,
                        disponivel,
                        marca,
                        codigoHosp
                    )
                    VALUES (
                        'VC 02 32',
                        1,
                        'Penumbra',
                        20
                    );

INSERT INTO Veiculo (
                        matricula,
                        disponivel,
                        marca,
                        codigoHosp
                    )
                    VALUES (
                        'YZ 28 33',
                        0,
                        'Asea',
                        20
                    );

INSERT INTO Veiculo (
                        matricula,
                        disponivel,
                        marca,
                        codigoHosp
                    )
                    VALUES (
                        'ZK 13 88',
                        1,
                        'Akuma',
                        20
                    );