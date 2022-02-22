.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

.print ''
.print 'Lista de Funcionarios:'
.print ''

SELECT idPessoa, ordenado, dataAdmissao, dataNascimento FROM Funcionario NATURAL JOIN Pessoa;

INSERT INTO Pessoa VALUES (23, 'Afonso Albuquerque', '2016-11-30', 'Espinho', 912345678, 255648626);
INSERT INTO Pessoa VALUES (24, 'Rita Silva', '1987-10-05', 'Arcozelo', 923456789, 194557049);

-- Erro- o funcionario nao tem mais de 18 anos
INSERT INTO Funcionario (idPessoa, dataAdmissao, ordenado) VALUES (23, '2020-01-02', 800);

--O funcionario é adicionado com sucesso
INSERT INTO Funcionario (idPessoa, dataAdmissao, ordenado) VALUES (24, '2020-01-02', 800);

.print ''
.print 'Lista de Funcionarios:'
.print ''

SELECT idPessoa, ordenado, dataAdmissao, dataNascimento FROM Funcionario NATURAL JOIN Pessoa;


.print ''
.print 'Estado atual dos clientes (como se pode observar, este esta presente na tabela dos funcionarios):'
.print ''

SELECT idPessoa, ordenado, dataAdmissao, dataNascimento FROM Funcionario NATURAL JOIN Pessoa;


--Atualizar data de nascimento do Funcionario com id=1 8erro - funcionario tem de ter mais de 18 anos

UPDATE Pessoa SET dataNascimento = '2020-01-01' WHERE idPessoa = 24;