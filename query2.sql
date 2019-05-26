.mode       columns
.headers    on
.nullvalue  NULL

    SELECT nome
      FROM Doente,
           Estadia,
           Pessoa
     WHERE Doente.codigo = Estadia.codigoDoen AND 
           Estadia.Data_inicio <= "20/01/2019" AND 
           "20/01/2019" <= Estadia.Data_final AND 
           Doente.codigo = Pessoa.codigo;