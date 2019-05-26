-- Trigger: Before_Insert
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