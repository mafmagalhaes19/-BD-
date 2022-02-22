.mode columns
.headers on
.nullvalue NULL

-- Cálculo do número total de faturas de novembro, do valor total e da média por fatura


SELECT
	COUNT(F.idFatura) AS 'Número de faturas de Novembro', 
	SUM(F.valor) AS 'Total das faturas', 
	AVG(F.valor) AS 'Valor médio fatura'
	FROM Fatura F 
	WHERE (strftime('%m',F.data))='11';