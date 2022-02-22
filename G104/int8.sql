.mode columns
.headers on
.nullvalue NULL

--Listagem de Clientes que já alugaram em todas as lojas

-- View de Clientes que alugaram na loja 1
CREATE VIEW IF NOT EXISTS auxLoja1 AS
    SELECT Pessoa.idPessoa AS idPessoaL1, Aluguer.idAluguer AS idAluguerL1, LojaAluguer.idLoja AS idLojaL1 FROM Pessoa
    INNER JOIN Aluguer ON Aluguer.idCliente = Pessoa.idPessoa
    INNER JOIN LojaAluguer ON Aluguer.idAluguer=LojaAluguer.idAluguer AND LojaAluguer.idLoja=1 ORDER BY 3 ASC, 1 ASC;

-- View de Clientes que alugaram na loja 2
CREATE VIEW IF NOT EXISTS auxLoja2 AS
    SELECT Pessoa.idPessoa AS idPessoaL2, Aluguer.idAluguer  AS idAluguerL2, LojaAluguer.idLoja AS idLojaL2 FROM Pessoa
    INNER JOIN Aluguer ON Aluguer.idCliente = Pessoa.idPessoa
    INNER JOIN LojaAluguer ON Aluguer.idAluguer=LojaAluguer.idAluguer AND LojaAluguer.idLoja=2 ORDER BY 3 ASC, 1 ASC;

SELECT DISTINCT Pessoa.idPessoa AS id, Pessoa.nome
    FROM Pessoa
    INNER JOIN auxLoja1 ON auxLoja1.idPessoaL1=id
    INNER JOIN auxLoja2 ON auxLoja2.idPessoaL2=id;