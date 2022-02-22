.mode columns
.headers on
.nullvalue NULL

-- Total de alugueres por Funcionario e por Loja

SELECT F.idPessoa,
    (SELECT nome FROM Pessoa P WHERE P.idPessoa=F.idPessoa) AS nome, (SELECT idLoja FROM LojaAluguer LA WHERE A.idAluguer=LA.idAluguer) as idLoja,
     COUNT (F.idPessoa) total
    FROM Funcionario F
    LEFT JOIN aluguer A ON F.idPessoa=A.idFuncionario GROUP BY idPessoa, idLoja;