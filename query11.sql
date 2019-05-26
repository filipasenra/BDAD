.mode       columns
.headers    on
.nullvalue  NULL

    SELECT Doente.codigo AS Codigo_Doente,
           Funcionario.codigo AS Codigo_Func,
           Enfermaria.NomeDep,
           Estadia.Cod_Enfermaria,
           Estadia.cama,
           Estadia.Data_inicio AS DATA_INICIAL_ESTADIA,
           Estadia.Data_final AS DATA_FINAL_ESTADIA
      FROM EquipaMultidisciplinar
           LEFT OUTER JOIN
           Funcionario ON Funcionario.codigo = EquipaMultidisciplinar.CodigoFunc
           LEFT OUTER JOIN
           Doente ON Doente.codigo = EquipaMultidisciplinar.codigoDoen
           INNER JOIN
           Estadia ON Doente.codigo = Estadia.codigoDoen
           INNER JOIN
           Enfermaria ON Enfermaria.codigo = Estadia.Cod_Enfermaria
     ORDER BY Codigo_Doente;