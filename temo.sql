--
-- File generated with SQLiteStudio v3.2.1 on qui abr 11 16:27:55 2019
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Hospital
CREATE TABLE Hospital (Codigo INTEGER PRIMARY KEY UNIQUE NOT NULL, Nome CHAR (6, 48) NOT NULL, Morada CHAR (6, 48) NOT NULL, Telefone CHAR (9, 9) NOT NULL);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
