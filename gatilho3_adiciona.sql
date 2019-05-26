-- Trigger: Insert Crate NumeroDisponivel
CREATE TRIGGER [Insert Crate NumeroDisponivel]
         AFTER INSERT
            ON NumeroDisponivel
BEGIN
    INSERT INTO NumeroDisponivel VALUES (
                                     (
                                         SELECT Armazem.codigo
                                           FROM Armazem
                                     ),
                                     NEW.codigo,
                                     0
                                 );
END;