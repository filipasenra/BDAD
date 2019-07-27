.mode       columns
.headers    on
.nullvalue  NULL

    SELECT Medicamento.Nome,
           sum(NumeroDisponivel.numero_disponivel) 
      FROM Medicamento,
           NumeroDisponivel
     WHERE NumeroDisponivel.codigoMedi = Medicamento.codigo
     GROUP BY NumeroDisponivel.codigoMedi
    HAVING sum(NumeroDisponivel.numero_disponivel) < 10;
