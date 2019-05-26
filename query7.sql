.mode       columns
.headers    on
.nullvalue  NULL

    SELECT nome,
           NomeDep,
           ordenado
      FROM Funcionario,
           Pessoa
     WHERE (ordenado >= 2000) AND 
           Funcionario.codigo = Pessoa.codigo;