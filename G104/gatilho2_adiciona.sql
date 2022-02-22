.mode columns
.headers on

PRAGMA foreign_keys = ON;

-- Quando é feita uma reserva, é feito um aluguer derivado dessa reserva e o stock é atualizado, caso não haja stock é lançado um erro

--Não há stock Disponível
CREATE TRIGGER IF NOT EXISTS stockIndisponivelReserva
BEFORE INSERT ON Reserva
FOR EACH ROW
WHEN NOT EXISTS (SELECT * FROM Stock WHERE (idFerramenta = New.idFerramenta AND quantidade>0))
BEGIN
    SELECT RAISE(ROLLBACK, 'A ferramenta não está disponível em nenhuma loja');
END;

--Há stock disponivel e atribui a reserva a uma loja
CREATE TRIGGER IF NOT EXISTS stockDisponivelReserva
BEFORE INSERT ON Reserva
FOR EACH ROW
WHEN EXISTS (select * FROM Stock WHERE (idFerramenta = New.idFerramenta AND quantidade>0))
BEGIN
    INSERT INTO LojaReserva(idLoja, idReserva) VALUES ((SELECT idLoja FROM Stock WHERE (idFerramenta = New.idFerramenta AND quantidade>0) LIMIT 1), NEW.idReserva);
END;

-- Atualização do stock
CREATE TRIGGER IF NOT EXISTS atualizaStockReserva
AFTER INSERT ON Reserva
FOR EACH ROW
BEGIN
    UPDATE Stock
    SET quantidade = quantidade - 1
    WHERE (idFerramenta = NEW.idFerramenta AND idLoja = (SELECT idLoja FROM LojaReserva WHERE idReserva= NEW.idReserva));
END;

--Criação do respetivo Aluguer
CREATE TRIGGER IF NOT EXISTS criaAluguer
AFTER INSERT ON Reserva
FOR EACH ROW
BEGIN
    INSERT INTO Aluguer (idAluguer, idCliente, idFuncionario, dataAluguer, dataInicio, dataFim, dataEntrega) 
        VALUES ((SELECT max(idAluguer) AS idMax FROM (SELECT idAluguer FROM Aluguer)) + 1, NEW.idCliente, NEW.idFuncionario, NEW.dataInicio, NEW.dataInicio, NEW.dataFim, NULL);
    INSERT INTO LojaAluguer (idLoja, idAluguer) VALUES ((SELECT idLoja FROM LojaReserva WHERE idReserva= NEW.idReserva),(SELECT max(idAluguer) AS idMax FROM (SELECT idAluguer FROM Aluguer)));
    INSERT INTO ItensAlugados (idAluguer, idFerramenta, quantidade, idFatura) VALUES ((SELECT max(idAluguer) AS idMax FROM (SELECT idAluguer FROM Aluguer)), NEW.idFerramenta, 1, NULL);
    INSERT INTO ReservaAluguer(idReserva, idAluguer) VALUES (NEW.idReserva, (SELECT max(idAluguer) AS idMax FROM (SELECT idAluguer FROM Aluguer)));
END;

