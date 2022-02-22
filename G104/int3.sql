.mode columns
.headers on
.nullvalue NULL

-- Contagem de alugueres que chegaram mais cedo, no dia previsto de entrega ou atrasados.


WITH Aluguer1 AS (Select *, (julianday(dataEntrega)-julianday(dataInicio)) AS duracaoAluguer FROM Aluguer A 
    WHERE A.dataInicio<CURRENT_DATE AND A.dataFim<CURRENT_DATE),
     Aluguer2 AS (SELECT duracaoAluguer,
              CASE
                WHEN (julianday(A1.dataFim)-julianday(A1.dataInicio)) > duracaoAluguer THEN 'Entregue antes do final do prazo'
                WHEN (julianday(A1.dataFim)-julianday(A1.dataInicio)) = duracaoAluguer THEN 'Entregue no prazo'
                ELSE 'Entrega atrasada'
              END AS Estado_da_Encomenda FROM Aluguer A1 JOIN Aluguer1 USING (idAluguer))
SELECT Estado_da_Encomenda, count(*) 'Total de Alugueres'
    FROM Aluguer2
    GROUP BY 1
    ORDER BY 2 DESC;