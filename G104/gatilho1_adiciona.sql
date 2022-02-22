.mode columns
.headers on

PRAGMA foreign_keys = ON;

-- Quando um Aluguer é concluído, o stock é atualizado e é emitida uma fatura com o valor a pagar

-- Atualização do stock
CREATE TRIGGER IF NOT EXISTS atualizaStockEntrega
AFTER UPDATE ON Aluguer
FOR EACH ROW
WHEN OLD.dataEntrega IS NULL AND NEW.dataEntrega IS NOT NULL
BEGIN
    UPDATE Stock
    SET quantidade = quantidade + 1
    WHERE (OLD.dataEntrega IS NULL AND NEW.dataEntrega IS NOT NULL);
END;


-- Emite a fatura
CREATE TRIGGER IF NOT EXISTS emiteFatura
AFTER UPDATE ON Aluguer
FOR EACH ROW
WHEN OLD.dataEntrega IS NULL AND NEW.dataEntrega IS NOT NULL
BEGIN
    INSERT INTO Fatura(idFatura, idAluguer, data, valor) VALUES (NEW.idAluguer, NEW.idAluguer, CURRENT_DATE, (SELECT 
        CASE
            WHEN (julianday(NEW.dataEntrega)>julianday(NEW.dataFim)) 
            THEN ((Ferramenta.multaAtraso*(julianday(NEW.dataEntrega)-(julianday(NEW.dataFim)))*ItensAlugados.quantidade)+((julianday(NEW.dataFim)-julianday(NEW.dataInicio)+1)*Ferramenta.precoAluguer)*ItensAlugados.quantidade)
            ELSE
                (((julianday(NEW.dataFim)-julianday(NEW.dataInicio)+1)*Ferramenta.precoAluguer)*ItensAlugados.quantidade)
            
            END AS valorFinal
            FROM Aluguer
            INNER JOIN Pessoa ON Pessoa.idPessoa=Aluguer.idCliente
            INNER JOIN Itensalugados ON Itensalugados.idAluguer=Aluguer.idAluguer
            INNER JOIN Ferramenta ON Ferramenta.idFerramenta=Itensalugados.idFerramenta
            WHERE Aluguer.idAluguer=NEW.idAluguer));
END;