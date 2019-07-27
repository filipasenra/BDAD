.mode       columns
.headers    on
.nullvalue  NULL

    SELECT EquipaMultidisciplinar.CodigoFunc,
           count( * ) AS Numero_de_Doentes
      FROM EquipaMultidisciplinar
     GROUP BY CodigoFunc;
