.mode       columns
.headers    on
.nullvalue  NULL


    SELECT Nome
      FROM Pessoa,
           Funcionario,
           Horario
     WHERE Pessoa.codigo = Funcionario.codigo AND 
           Funcionario.codigo = Horario.codigoFunc AND 
           Horario.dia = "20/01/2019";