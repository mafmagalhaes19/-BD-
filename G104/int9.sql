.mode columns
.headers on
.nullvalue NULL

-- Para cada par de pessoas, mostrar os alugueres em comum

-- View de Alugueres de Cliente 1
CREATE VIEW IF NOT EXISTS auxCliente1 AS
    SELECT Pessoa.idPessoa AS idPessoaC1, Aluguer.idAluguer AS idAluguerC1, ItensAlugados.idFerramenta AS idFerramentaC1 FROM Pessoa
    INNER JOIN Aluguer ON Aluguer.idCliente = Pessoa.idPessoa
    INNER JOIN ItensAlugados ON Aluguer.idAluguer=ItensAlugados.idAluguer ORDER BY 1 ASC;

-- View de Alugueres de cliente 2
CREATE VIEW IF NOT EXISTS auxCliente2 AS
    SELECT Pessoa.idPessoa AS idPessoaC2, Aluguer.idAluguer AS idAluguerC2, ItensAlugados.idFerramenta AS idFerramentaC2 FROM Pessoa
    INNER JOIN Aluguer ON Aluguer.idCliente = Pessoa.idPessoa
    INNER JOIN ItensAlugados ON Aluguer.idAluguer=ItensAlugados.idAluguer ORDER BY 1 ASC;

SELECT DISTINCT auxCliente1.idPessoaC1 AS Cliente1, auxCliente2.idPessoaC2 AS Cliente2, auxCliente1.idFerramentaC1 AS 'Ferramenta', Ferramenta.nome as Nome
    FROM auxCliente1, auxCliente2
    INNER JOIN Ferramenta ON auxCliente1.idFerramentaC1=Ferramenta.idFerramenta
    WHERE Cliente1<Cliente2 AND auxCliente1.idFerramentaC1=auxCliente2.idFerramentaC2;