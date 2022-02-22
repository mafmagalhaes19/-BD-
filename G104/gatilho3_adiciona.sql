.mode columns
.headers on

PRAGMA foreign_keys = ON;

-- Quando é adicionada um funcionario, impede que este tenha menos de 18 anos
-- Atualização do stock
CREATE TRIGGER IF NOT EXISTS adicionaFuncionarioValido
BEFORE INSERT ON Funcionario
FOR EACH ROW
WHEN strftime('%J', 'now') - strftime('%J', (SELECT dataNascimento from Pessoa WHERE idPessoa = NEW.idPessoa)) < 6570 -- 365 dias * 18 anos
BEGIN
    SELECT RAISE(ROLLBACK, 'O Funcionario tem de ter mais de 18 anos');
END;


-- Quando os dados de um funcionario são alterados, a data de nascimento tem de ser válida
CREATE TRIGGER IF NOT EXISTS alteraFuncionarioValido
BEFORE UPDATE OF dataNascimento ON Pessoa
FOR EACH ROW
WHEN (EXISTS (SELECT * from Funcionario where idPessoa = NEW.idPessoa)) AND (strftime('%J', 'now') - strftime('%J', NEW.dataNascimento) < 6570)
BEGIN
    SELECT RAISE(ROLLBACK, 'O Funcionario tem de ter mais de 18 anos');
END;