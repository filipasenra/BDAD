.mode       columns
.headers    on
.nullvalue  NULL

    SELECT Pessoa.codigo,
           Pessoa.nome
      FROM Pessoa,
           Funcionario,
           Horario,
           Departamento
     WHERE Pessoa.codigo = Funcionario.codigo AND 
           Funcionario.codigo = Horario.codigoFunc AND 
           Horario.prevencao = TRUE AND 
           Departamento.nome = 'cuidados intensivos';