.mode columns
.headers on
.nullvalue NULL

-- Mostra os os alugueres em atraso

SELECT  A.idAluguer, A.idCliente, P.nome, JULIANDAY(DATE('now'))-JULIANDAY(dataFim) AS Atraso
FROM  Aluguer A, Pessoa P
        WHERE A.idCliente=P.idPessoa AND A.dataEntrega IS NULL AND A.dataInicio<CURRENT_DATE AND A.dataFim<CURRENT_DATE
        GROUP BY A.idAluguer 
        ORDER BY 4 DESC, 3 ASC;