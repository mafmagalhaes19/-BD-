.mode columns
.headers on
.nullvalue NULL

-- Loja com mais alugueres

SELECT L.idLoja, morada, count(*) Total 
FROM Loja L, LojaAluguer LA 
WHERE LA.idLoja=L.idLoja
GROUP BY L.idLoja    
ORDER BY 1 DESC, 1 ASC
LIMIT 1;
