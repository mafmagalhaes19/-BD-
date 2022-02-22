.mode columns
.headers on

PRAGMA foreign_keys = ON;

--Nova Reserva
INSERT INTO Reserva (idReserva, idCliente, idFuncionario, idFerramenta, dataReserva, dataInicio, dataFim) VALUES (11, 10, 4, 5,'2022-01-21', '2022-01-31','2022-02-15');

.print ''
.print 'A seguinte Reserva foi realizada: '
.print ''

SELECT idReserva, dataReserva, dataInicio, dataFim FROM Reserva WHERE idReserva='11';

.print ''
.print 'Podemos consultar os alugueres e verificar que foi criado um novo aluguer: '
.print ''

SELECT * FROM Aluguer;

.print ''
.print 'Podemos consultar o stock e verificar que foi atualizado: '
.print ''

SELECT * FROM Stock WHERE idFerramenta='5';

--Nova Reserva
INSERT INTO Reserva (idReserva, idCliente, idFuncionario, idFerramenta, dataReserva, dataInicio, dataFim) VALUES (12, 11, 3, 5,'2022-01-21', '2022-01-31','2022-02-15');

.print ''
.print 'A seguinte Reserva foi realizada: '
.print ''

SELECT idReserva, dataReserva, dataInicio, dataFim FROM Reserva WHERE idReserva='12';

.print ''
.print 'Podemos consultar os alugueres e verificar que foi criado um novo aluguer: '
.print ''

SELECT * FROM Aluguer;

.print ''
.print 'Podemos consultar o stock e verificar que foi atualizado: '
.print ''

SELECT * FROM Stock WHERE idFerramenta='5';

--Nova Reserva - recusada porque não há stock
INSERT INTO Reserva (idReserva, idCliente, idFuncionario, idFerramenta, dataReserva, dataInicio, dataFim) VALUES (13, 8, 2, 5,'2022-01-21', '2022-01-31','2022-02-15');