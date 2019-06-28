-- Trigger: Maior de idade 
CREATE TRIGGER [Maior de idade ]
         AFTER INSERT
            ON Funcionario
BEGIN
    SELECT CASE WHEN "31-12-2000" < (
                                        SELECT dataDeNascimento
                                          FROM Pessoa
                                         WHERE NEW.codigo = codigo
                                    )
           THEN RAISE(ABORT, "nao e maior de iade") END;
END;
