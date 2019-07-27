
-- Trigger: Insert_Prescricao
CREATE TRIGGER Insert_Prescricao
         AFTER INSERT
            ON Prescricao
      FOR EACH ROW
BEGIN
    UPDATE NumeroDisponivel
       SET numero_disponivel = numero_disponivel - 1
     WHERE codigoMedi = NEW.codigoMedi;
END;