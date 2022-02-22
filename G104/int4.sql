.mode columns
.headers on
.nullvalue NULL

-- Listagem de faturas emitidas

SELECT Fatura.idFatura, Aluguer.idAluguer, Pessoa.nome, ItensAlugados.idFerramenta AS 'idFerramenta',
Ferramenta.nome AS 'Nome Ferramenta', ItensAlugados.quantidade AS 'Quantidade',
    (SELECT precoAluguer from Ferramenta F WHERE ItensAlugados.idFerramenta=F.idFerramenta) AS 'Custo Diário',
    (julianday(Aluguer.dataFim)-julianday(Aluguer.dataInicio)+1) as 'Total Previsto (dias)',
    (julianday(Aluguer.dataEntrega)-julianday(Aluguer.dataInicio)+1) as 'Total Real (dias)',

-- aluguer sem penalizações 
    ((julianday(Aluguer.dataFim)-julianday(Aluguer.dataInicio)+1)*Ferramenta.precoAluguer)*ItensAlugados.quantidade AS 'Valor Sem Penalização',

-- Multa por entrega atrasada  
    CASE
        WHEN (julianday(Aluguer.dataEntrega)>(julianday(Aluguer.dataFim))) 
        THEN (Ferramenta.multaAtraso*(julianday(Aluguer.dataEntrega)-(julianday(Aluguer.dataFim))))*ItensAlugados.quantidade
        ELSE 0
        END  'Valor da Multa',
        

    CASE
        WHEN (julianday(Aluguer.dataEntrega)>julianday(Aluguer.dataFim)) 
        THEN ((Ferramenta.multaAtraso*(julianday(Aluguer.dataEntrega)-(julianday(Aluguer.dataFim)))*ItensAlugados.quantidade)+((julianday(Aluguer.dataFim)-julianday(Aluguer.dataInicio)+1)*Ferramenta.precoAluguer)*ItensAlugados.quantidade)
        ELSE
            (((julianday(Aluguer.dataFim)-julianday(Aluguer.dataInicio)+1)*Ferramenta.precoAluguer)*ItensAlugados.quantidade)
        
        END AS 'Valor Final',
    Fatura.valor AS 'Valor na Fatura'
          
   
FROM Fatura
    INNER JOIN Aluguer ON Aluguer.idAluguer=Fatura.idAluguer
    INNER JOIN Pessoa ON Pessoa.idPessoa=Aluguer.idCliente
    INNER JOIN Itensalugados ON Itensalugados.idAluguer=Aluguer.idAluguer
    INNER JOIN Ferramenta ON Ferramenta.idFerramenta=Itensalugados.idFerramenta;