.mode       columns
.headers    on
.nullvalue  NULL

    SELECT Enfermaria.codigo,
           percentagem
      FROM Enfermaria,
           (
               SELECT numero
                 FROM Enfermaria,
                      Doente,
                      Estadia,
                      Pessoa
                WHERE numero = ( (count) * (Doente.codigo = Estadia.codigoDoen AND 
                                            Estadia.Data_inicio <= "20/01/2019" AND 
                                            "20/01/2019" <= Estadia.Data_final AND 
                                            Doente.codigo = Pessoa.codigo) / Enfermaria.capacidade) 
           )
           AS percentagem;