.mode columns
.headers on

PRAGMA foreign_keys = ON;

--Update Aluguer 11
UPDATE Aluguer SET dataEntrega='2022-01-31' WHERE idAluguer='11';

.print ''
.print 'O seguinte Aluguer foi atualizado: '
.print ''

SELECT idAluguer, dataInicio, dataFim, dataEntrega FROM Aluguer WHERE idAluguer='11';

.print ''
.print 'Podemos consultar as faturas e verificar que temos uma fatura nova: '
.print ''

SELECT * FROM Fatura;

.print ''
.print 'Podemos consultar o stock e verificar que foi atualizado: '
.print ''

SELECT * FROM Stock WHERE idFerramenta='2' AND idLoja='1';

--Update Aluguer 12 
UPDATE Aluguer SET dataEntrega='2022-02-03' WHERE idAluguer='12';

.print ''
.print 'O seguinte Aluguer foi atualizado: '
.print ''

SELECT idAluguer, dataInicio, dataFim, dataEntrega FROM Aluguer WHERE idAluguer='12';

.print ''
.print 'Podemos consultar as faturas e verificar que temos uma fatura nova: '
.print ''

SELECT * FROM Fatura;

.print ''
.print 'Podemos consultar o stock e verificar que foi atualizado: '
.print ''

SELECT * FROM Stock WHERE idFerramenta='9' AND idLoja='1';