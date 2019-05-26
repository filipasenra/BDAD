.mode       columns
.headers    on
.nullvalue  NULL

    SELECT Pessoa.nome
      FROM Pessoa,
           Doente,
           Historial,
           Consulta,
           Tratamento,
           Intervencao
     WHERE Pessoa.codigo = Doente.codigo AND 
           Doente.codigo = Historial.codigoDoe AND 
           Historial.codigoCons = Consulta.codigo AND 
           Consulta.codigo = Tratamento.codigoCons AND 
           Tratamento.codigoInt = Intervencao.codigo AND 
           Intervencao.Nome = "Vasectomia";