.mode columns
.headers on
.nullvalue NULL

-- View Gastos de Cliente 1
CREATE VIEW IF NOT EXISTS auxGastosCliente1 AS
    SELECT Pessoa.idPessoa AS idPessoaC1, Pessoa.nome AS nomeC1, Aluguer.idAluguer AS idAluguerC1, Fatura.valor AS valorC1 FROM Pessoa
    INNER JOIN Aluguer ON Aluguer.idCliente = Pessoa.idPessoa
    INNER JOIN Fatura ON Aluguer.idAluguer=Fatura.idAluguer ORDER BY 1 ASC;

-- View de Alugueres de cliente 2
CREATE VIEW IF NOT EXISTS auxGastosCliente2 AS
    SELECT Pessoa.idPessoa AS idPessoaC2, Pessoa.nome AS nomeC2, Aluguer.idAluguer AS idAluguerC2, Fatura.valor AS valorC2 FROM Pessoa
    INNER JOIN Aluguer ON Aluguer.idCliente = Pessoa.idPessoa
    INNER JOIN Fatura ON Aluguer.idAluguer=Fatura.idAluguer ORDER BY 1 ASC;

-- Cliente que gastou mais numa só compra
SELECT idPessoaC1 AS idCliente, nomeC1 AS Nome, valorC1 AS ValorFatura FROM auxGastosCliente1 C1
    WHERE NOT EXISTS (SELECT idPessoaC2, valorC2 FROM auxGastosCliente2 C2 WHERE ValorC2>ValorC1);