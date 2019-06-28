.mode       columns
.headers    on
.nullvalue  NULL

    SELECT DISTINCT Doente.codigo AS Codigo_Doente,
                    Consulta.Data_examinacao,
                    Prescricao.dosagem,
                    Prescricao.duracao,
                    Medicamento.Nome
      FROM Doente
           LEFT OUTER JOIN
           Historial ON Doente.codigo = Historial.codigoDoe
           LEFT OUTER JOIN
           Consulta ON Historial.codigoCons = Consulta.codigo
           LEFT OUTER JOIN
           Prescricao ON Prescricao.codigoCons = Consulta.codigo
           LEFT OUTER JOIN
           Medicamento ON Medicamento.codigo = Prescricao.codigoMedi
     ORDER BY CODIGO_DOENTE;
