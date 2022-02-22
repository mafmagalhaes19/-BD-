-- Grupo 104

PRAGMA FOREIGN_KEYS=ON;


-- Table: PESSOA
-- teste: ok

INSERT INTO PESSOA (idPessoa, nome, dataNascimento, morada, telefone, nif) VALUES (1, 'João Manuel Sousa', '1960-02-15', 'Porto, Avenida dos Aliados', 123456789, 100000001);
INSERT INTO PESSOA (idPessoa, nome, dataNascimento, morada, telefone, nif) VALUES (2, 'Alberto Araújo', '1957-09-01', 'Espinho, Rua 28', 123456789, 100000002);
INSERT INTO PESSOA (idPessoa, nome, dataNascimento, morada, telefone, nif) VALUES (3, 'António Augusto Teixeira', '1962-12-12', 'Valongo, Rua da Estação', 123456789, 100000003);
INSERT INTO PESSOA (idPessoa, nome, dataNascimento, morada, telefone, nif) VALUES (4, 'Herculano de Sousa Rodrigues', '1977-05-27', 'Porto, Rua da Boavista', 969533131, 100000004);
INSERT INTO PESSOA (idPessoa, nome, dataNascimento, morada, telefone, nif) VALUES (5, 'Joana Conceição Silva', '1971-07-15', 'Porto, Rua dos Clérigos', 960067412, 100000005);
INSERT INTO PESSOA (idPessoa, nome, dataNascimento, morada, telefone, nif) VALUES (6, 'Efigénia Maria da Silva', '1984-02-03', 'Vila Nova de Gais, Rua Rei Ramiro', 912742214, 100000006);
INSERT INTO PESSOA (idPessoa, nome, dataNascimento, morada, telefone, nif) VALUES (7, 'Eduardo Santos Moreira', '1991-05-13', 'Avintes, Avenida Vasco da Gama', 962180477, 100000007);
INSERT INTO PESSOA (idPessoa, nome, dataNascimento, morada, telefone, nif) VALUES (8, 'Libânio Antunes Neto', '1980-12-09', 'Ermesinde, Avenida Engº Duarte Pacheco', 967530539, 100000008);
INSERT INTO PESSOA (idPessoa, nome, dataNascimento, morada, telefone, nif) VALUES (9, 'Agostinho da Silva', '1994-01-31', 'Ermesinde, Rua da Gandra', 917297510, 100000009);
INSERT INTO PESSOA (idPessoa, nome, dataNascimento, morada, telefone, nif) VALUES (10, 'Domingos de Oliveira Monteiro', '1988-06-14', 'Rio Tinto, Rua de Rebordãos', 961378190, 100000010);
INSERT INTO PESSOA (idPessoa, nome, dataNascimento, morada, telefone, nif) VALUES (11, 'Isidoro Santos', '1974-05-15', 'Porto, Rua do Alamda', 969577189, 100000011);
INSERT INTO PESSOA (idPessoa, nome, dataNascimento, morada, telefone, nif) VALUES (12, 'António Goinçalves Fernandes', '1972-04-27', 'Porto, Rua Oliveira Monteiro', 962840174, 100000013);
INSERT INTO PESSOA (idPessoa, nome, dataNascimento, morada, telefone, nif) VALUES (13, 'Anfónio Alberto Neves', '1976-05-27', 'Porto, Estrada Interior da Cincunvalação', 918371099, 100000014);
INSERT INTO PESSOA (idPessoa, nome, dataNascimento, morada, telefone, nif) VALUES (14, 'Domingos Soares', '1950-02-23', 'Viana do Castelo, Rua Aquilino Ribeiro', 968219888, 100000015);
INSERT INTO PESSOA (idPessoa, nome, dataNascimento, morada, telefone, nif) VALUES (15, 'Rosa Maria Torres', '1955-03-09', 'Gondomar, Rua herois da Pátria', 912368192, 100000016);
INSERT INTO PESSOA (idPessoa, nome, dataNascimento, morada, telefone, nif) VALUES (16, 'Fernando Fernandes Pinheiro', '1981-12-03', 'Valongo, Rua Oliveira Zina', 917391331, 100000017);
INSERT INTO PESSOA (idPessoa, nome, dataNascimento, morada, telefone, nif) VALUES (17, 'Afonso de Guimarães', '1976-09-29', 'Porto, Rua das Fontaínhas', 919383131, 100000018);
INSERT INTO PESSOA (idPessoa, nome, dataNascimento, morada, telefone, nif) VALUES (18, 'Dinis Dias da Silva', '1976-12-08', 'Porto, Rua Sá da Bandeira', 962791600, 100000019);
INSERT INTO PESSOA (idPessoa, nome, dataNascimento, morada, telefone, nif) VALUES (19, 'António Paulo Antunes', '1992-05-21', 'Porto, Rua de Ceuta', 917281931, 100000019);
INSERT INTO PESSOA (idPessoa, nome, dataNascimento, morada, telefone, nif) VALUES (20, 'Rodrigo Guedes', '1993-09-13', 'Porto, Rua 5 de Outubro', 910829121, 100000020);
INSERT INTO PESSOA (idPessoa, nome, dataNascimento, morada, telefone, nif) VALUES (21, 'Paulo Sousa', '1997-12-05', 'Porto, Rua da Constituição', 963819341, 100000021);
INSERT INTO PESSOA (idPessoa, nome, dataNascimento, morada, telefone, nif) VALUES (22, 'Jose Ferreira Dias', '1974-04-25', 'Porto, Rua da Alfândega', 917283013, 100000022);


-- Table: CLIENTE
-- teste: ok

INSERT INTO CLIENTE (idPessoa, dataAdesao) VALUES (5, '2021-01-02');
INSERT INTO CLIENTE (idPessoa, dataAdesao) VALUES (6, '2021-01-02');
INSERT INTO CLIENTE (idPessoa, dataAdesao) VALUES (7, '2021-01-02');
INSERT INTO CLIENTE (idPessoa, dataAdesao) VALUES (8, '2021-01-02');
INSERT INTO CLIENTE (idPessoa, dataAdesao) VALUES (9, '2021-01-02');
INSERT INTO CLIENTE (idPessoa, dataAdesao) VALUES (10, '2021-01-02');
INSERT INTO CLIENTE (idPessoa, dataAdesao) VALUES (11, '2021-01-02');
INSERT INTO CLIENTE (idPessoa, dataAdesao) VALUES (12, '2021-01-02');
INSERT INTO CLIENTE (idPessoa, dataAdesao) VALUES (13, '2021-01-02');
INSERT INTO CLIENTE (idPessoa, dataAdesao) VALUES (14, '2021-01-02');
INSERT INTO CLIENTE (idPessoa, dataAdesao) VALUES (15, '2021-01-02');
INSERT INTO CLIENTE (idPessoa, dataAdesao) VALUES (16, '2021-01-02');
INSERT INTO CLIENTE (idPessoa, dataAdesao) VALUES (17, '2021-01-02');
INSERT INTO CLIENTE (idPessoa, dataAdesao) VALUES (18, '2021-01-02');
INSERT INTO CLIENTE (idPessoa, dataAdesao) VALUES (19, '2021-01-02');
INSERT INTO CLIENTE (idPessoa, dataAdesao) VALUES (20, '2021-01-02');
INSERT INTO CLIENTE (idPessoa, dataAdesao) VALUES (21, '2021-01-02');
INSERT INTO CLIENTE (idPessoa, dataAdesao) VALUES (22, '2021-01-02');


-- Table: FUNCIONARIO
-- teste: ok

INSERT INTO FUNCIONARIO (idPessoa, dataAdmissao, ordenado) VALUES (1, '2020-01-02', 800);
INSERT INTO FUNCIONARIO (idPessoa, dataAdmissao, ordenado) VALUES (2, '2020-01-02', 800);
INSERT INTO FUNCIONARIO (idPessoa, dataAdmissao, ordenado) VALUES (3, '2020-01-02', 705);
INSERT INTO FUNCIONARIO (idPessoa, dataAdmissao, ordenado) VALUES (4, '2021-01-02', 705);


-- Table: HORARIO
-- teste: ok

INSERT INTO HORARIO (idHorario, diaSemana, horaInicio, horaFim) VALUES (1, 'SEGUNDA-FEIRA', '09:00', '20:00');
INSERT INTO HORARIO (idHorario, diaSemana, horaInicio, horaFim) VALUES (2, 'TERCA-FEIRA', '09:00', '20:00');
INSERT INTO HORARIO (idHorario, diaSemana, horaInicio, horaFim) VALUES (3, 'QUARTA-FEIRA', '09:00', '20:00');
INSERT INTO HORARIO (idHorario, diaSemana, horaInicio, horaFim) VALUES (4, 'QUINTA-FEIRA', '09:00', '20:00');
INSERT INTO HORARIO (idHorario, diaSemana, horaInicio, horaFim) VALUES (5, 'SEXTA-FEIRA', '09:00', '20:00');
INSERT INTO HORARIO (idHorario, diaSemana, horaInicio, horaFim) VALUES (6, 'SABADO', '09:00', '20:00');
INSERT INTO HORARIO (idHorario, diaSemana, horaInicio, horaFim) VALUES (7, 'DOMINGO', '09:00', '15:00');


-- Table: LOJA
-- teste: ok

INSERT INTO LOJA (idLoja, morada, telefone, idResponsavel) VALUES (1, 'Porto, Rua do Alamda', 123456789, 1);
INSERT INTO LOJA (idLoja, morada, telefone, idResponsavel) VALUES (2, 'Matosinhos, Rua Álvaro Castelões', 123456789, 2);


-- Table: FERRAMENTA
-- teste: ok

INSERT INTO FERRAMENTA (idFerramenta, nome, data, precoAluguer, franquia, multaAtraso, peso, altura, largura, comprimento) VALUES (1, 'Chave inglesa', '2020-03-05', 0.60, 7, 2, 1.4, 20, 40, 170);
INSERT INTO FERRAMENTA (idFerramenta, nome, data, precoAluguer, franquia, multaAtraso, peso, altura, largura, comprimento) VALUES (2, 'Conjunto chaves combinadas', '2020-03-06', 2, 10, 5, 1.27, 40, 200, 150);
INSERT INTO FERRAMENTA (idFerramenta, nome, data, precoAluguer, franquia, multaAtraso, peso, altura, largura, comprimento) VALUES (3, 'Serrote fino', '2020-03-06', 3, 20, 8, 0.43, 30, 250, 550);
INSERT INTO FERRAMENTA (idFerramenta, nome, data, precoAluguer, franquia, multaAtraso, peso, altura, largura, comprimento) VALUES (4, 'Martelo carpinteiro', '2020-03-07', 1, 9, 2.5, 1.91, 30, 33, 340);
INSERT INTO FERRAMENTA (idFerramenta, nome, data, precoAluguer, franquia, multaAtraso, peso, altura, largura, comprimento) VALUES (5, 'Alicate de cravar', '2020-03-07', 0.75, 8, 2, 0.7, 30, 70, 220);
INSERT INTO FERRAMENTA (idFerramenta, nome, data, precoAluguer, franquia, multaAtraso, peso, altura, largura, comprimento) VALUES (6, 'Berbequim sem fio', '2020-04-05', 8, 40, 15, 2.1, 7, 200, 350);
INSERT INTO FERRAMENTA (idFerramenta, nome, data, precoAluguer, franquia, multaAtraso, peso, altura, largura, comprimento) VALUES (7, 'Lixadora vibratoria', '2020-04-05', 10, 75, 19, 1.82, 100, 92, 300);
INSERT INTO FERRAMENTA (idFerramenta, nome, data, precoAluguer, franquia, multaAtraso, peso, altura, largura, comprimento) VALUES (8, 'Serra circular', '2020-04-05', 15, 100, 30, 4, 200, 250, 310);
INSERT INTO FERRAMENTA (idFerramenta, nome, data, precoAluguer, franquia, multaAtraso, peso, altura, largura, comprimento) VALUES (9, 'Aparafusadora sem fio', '2020-04-05', 10, 75, 19, 4.27, 110, 270, 350);
INSERT INTO FERRAMENTA (idFerramenta, nome, data, precoAluguer, franquia, multaAtraso, peso, altura, largura, comprimento) VALUES (10, 'Plaina fixa', '2020-04-05', 15, 135, 25, 29, 440, 540, 820);
INSERT INTO FERRAMENTA (idFerramenta, nome, data, precoAluguer, franquia, multaAtraso, peso, altura, largura, comprimento) VALUES (11, 'Motoserra', '2020-03-15', 20, 200, 30, 8, 300, 950, 330);
INSERT INTO FERRAMENTA (idFerramenta, nome, data, precoAluguer, franquia, multaAtraso, peso, altura, largura, comprimento) VALUES (12, 'Roçadora', '2020-03-16', 20, 200, 30, 14, 320, 420, 189);
INSERT INTO FERRAMENTA (idFerramenta, nome, data, precoAluguer, franquia, multaAtraso, peso, altura, largura, comprimento) VALUES (13, 'Gerador', '2020-03-18', 100, 2300, 350, 100, 610, 730, 550);
INSERT INTO FERRAMENTA (idFerramenta, nome, data, precoAluguer, franquia, multaAtraso, peso, altura, largura, comprimento) VALUES (14, 'Betoneira gasolina', '2020-05-1', 80, 1500, 240, 170, 1470, 910, 1670);
INSERT INTO FERRAMENTA (idFerramenta, nome, data, precoAluguer, franquia, multaAtraso, peso, altura, largura, comprimento) VALUES (15, 'Corta relvas', '2020-03-05', 25, 230, 80, 34, 570, 800, 440);
INSERT INTO FERRAMENTA (idFerramenta, nome, data, precoAluguer, franquia, multaAtraso, peso, altura, largura, comprimento) VALUES (16, 'Berbequim com fio BLACK + DECKER BEH200-QS 500W', '2021-01-02', 10, 50, 5, 1.7, 270, 90, 280);
INSERT INTO FERRAMENTA (idFerramenta, nome, data, precoAluguer, franquia, multaAtraso, peso, altura, largura, comprimento) VALUES (17, 'Berbequim com fio BOSCH PRO GSB 13RE', '2021-01-02', 10, 50, 5, 1.9, 263, 75, 263);


-- Table: MANUAL
-- teste: ok

INSERT INTO MANUAL (idFerramenta, materialCabo, materialPrincipal) VALUES (1, 'metálico', 'aço');
INSERT INTO MANUAL (idFerramenta, materialCabo, materialPrincipal) VALUES (2, 'metálico', 'cromo vanadium');
INSERT INTO MANUAL (idFerramenta, materialCabo, materialPrincipal) VALUES (3, 'madeira', 'aço');
INSERT INTO MANUAL (idFerramenta, materialCabo, materialPrincipal) VALUES (4, 'madeira', 'ferro');
INSERT INTO MANUAL (idFerramenta, materialCabo, materialPrincipal) VALUES (5, 'metalico', 'cromo vanadium');


-- Table: ELETRICA
-- teste: ok

INSERT INTO ELETRICA (idFerramenta, volt, amperagem, alimentacao, potencia) VALUES (6, 24, 6, 'bateria', 100);
INSERT INTO ELETRICA (idFerramenta, volt, amperagem, alimentacao, potencia) VALUES (7, 220, 16, 'corrente', 500);
INSERT INTO ELETRICA (idFerramenta, volt, amperagem, alimentacao, potencia) VALUES (8, 220, 12, 'corrente', 600);
INSERT INTO ELETRICA (idFerramenta, volt, amperagem, alimentacao, potencia) VALUES (9, 24, 6, 'bateria', 100);
INSERT INTO ELETRICA (idFerramenta, volt, amperagem, alimentacao, potencia) VALUES (10, 220, 6, 'corrente', 400);
INSERT INTO ELETRICA (idFerramenta, volt, amperagem, alimentacao, potencia) VALUES (16, 220, 16, 'corrente', 500);
INSERT INTO ELETRICA (idFerramenta, volt, amperagem, alimentacao, potencia) VALUES (17, 220, 16, 'corrente', 600);


-- Table: MOTOR
-- teste: ok

INSERT INTO MOTOR (idFerramenta, combustivel, cilindrada, motor, potencia) VALUES (11, 'gasolina', 35, '2 tempos', 1.2);
INSERT INTO MOTOR (idFerramenta, combustivel, cilindrada, motor, potencia) VALUES (12, 'gasolina', 35, '2 tempos', 1.2);
INSERT INTO MOTOR (idFerramenta, combustivel, cilindrada, motor, potencia) VALUES (13, 'gasolina', 125, "4 tempos", 4.5);
INSERT INTO MOTOR (idFerramenta, combustivel, cilindrada, motor, potencia) VALUES (14, 'gasolina', 43, "2 tempos", 1.3);
INSERT INTO MOTOR (idFerramenta, combustivel, cilindrada, motor, potencia) VALUES (15, 'gasolina', 35, "2 tempos", 1.3);


-- Table: STOCK
-- teste: ok

INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(1, 1, 2);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(1, 2, 2);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(1, 3, 2);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(1, 4, 2);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(1, 5, 2);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(1, 6, 2);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(1, 7, 2);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(1, 8, 1);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(1, 9, 1);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(1, 10, 2);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(1, 11, 2);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(1, 12, 2);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(1, 13, 2);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(1, 14, 2);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(1, 15, 2);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(1, 16, 2);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(1, 17, 2);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(2, 1, 1);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(2, 2, 1);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(2, 3, 2);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(2, 4, 2);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(2, 5, 0);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(2, 6, 2);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(2, 7, 1);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(2, 8, 2);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(2, 9, 2);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(2, 10, 2);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(2, 11, 2);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(2, 12, 2);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(2, 13, 2);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(2, 14, 2);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(2, 15, 2);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(2, 16, 2);
INSERT INTO STOCK(idLoja, idFerramenta, quantidade) VALUES(2, 17, 2);


--Table: RESERVA
--teste: ok

INSERT INTO RESERVA (idReserva, idCliente, idFuncionario, idFerramenta, dataReserva, dataInicio, dataFim) VALUES (1, 5, 1, 5, '2021-11-01', '2021-11-10', '2021-11-20');
INSERT INTO RESERVA (idReserva, idCliente, idFuncionario, idFerramenta, dataReserva, dataInicio, dataFim) VALUES (2, 6, 2, 10, '2021-11-01', '2021-11-11', '2021-11-20');
INSERT INTO RESERVA (idReserva, idCliente, idFuncionario, idFerramenta, dataReserva, dataInicio, dataFim) VALUES (3, 7, 2, 1,'2021-11-01', '2021-11-11','2021-11-20');
INSERT INTO RESERVA (idReserva, idCliente, idFuncionario, idFerramenta, dataReserva, dataInicio, dataFim) VALUES (4, 8, 3, 16,'2021-11-01', '2021-11-12', '2021-11-20');
INSERT INTO RESERVA (idReserva, idCliente, idFuncionario, idFerramenta, dataReserva, dataInicio, dataFim) VALUES (5, 9, 4, 11,'2021-11-01', '2021-11-12','2021-11-20');
INSERT INTO RESERVA (idReserva, idCliente, idFuncionario, idFerramenta, dataReserva, dataInicio, dataFim) VALUES (6, 21, 1, 17, '2022-01-01', '2022-01-31', '2022-02-11');
INSERT INTO RESERVA (idReserva, idCliente, idFuncionario, idFerramenta, dataReserva, dataInicio, dataFim) VALUES (7, 18, 2, 8, '2022-01-11', '2022-01-31', '2022-02-12');
INSERT INTO RESERVA (idReserva, idCliente, idFuncionario, idFerramenta, dataReserva, dataInicio, dataFim) VALUES (8, 16, 2, 10,'2022-01-17', '2022-01-31','2022-02-13');
INSERT INTO RESERVA (idReserva, idCliente, idFuncionario, idFerramenta, dataReserva, dataInicio, dataFim) VALUES (9, 15, 3, 6,'2022-01-18', '2022-01-31', '2022-02-14');
INSERT INTO RESERVA (idReserva, idCliente, idFuncionario, idFerramenta, dataReserva, dataInicio, dataFim) VALUES (10, 10, 4, 2,'2022-01-21', '2022-01-31','2022-02-15');


--Table: LOJARESERVA
--teste: ok

INSERT INTO LOJARESERVA (idLoja, idReserva) VALUES (1, 1);
INSERT INTO LOJARESERVA (idLoja, idReserva) VALUES (1, 2);
INSERT INTO LOJARESERVA (idLoja, idReserva) VALUES (1, 3);
INSERT INTO LOJARESERVA (idLoja, idReserva) VALUES (1, 4);
INSERT INTO LOJARESERVA (idLoja, idReserva) VALUES (1, 5);
INSERT INTO LOJARESERVA (idLoja, idReserva) VALUES (2, 6);
INSERT INTO LOJARESERVA (idLoja, idReserva) VALUES (2, 7);
INSERT INTO LOJARESERVA (idLoja, idReserva) VALUES (2, 8);
INSERT INTO LOJARESERVA (idLoja, idReserva) VALUES (1, 9);
INSERT INTO LOJARESERVA (idLoja, idReserva) VALUES (1, 10);


-- Table: ALUGUER
-- teste: ok

INSERT INTO ALUGUER (idAluguer, idCliente, idFuncionario, dataAluguer, dataInicio, dataFim, dataEntrega) VALUES (1, 5, 1, '2021-11-10', '2021-11-10', '2021-11-20', '2021-11-20');
INSERT INTO ALUGUER (idAluguer, idCliente, idFuncionario, dataAluguer, dataInicio, dataFim, dataEntrega) VALUES (2, 6, 2, '2021-11-11', '2021-11-11', '2021-11-20', '2021-11-21');
INSERT INTO ALUGUER (idAluguer, idCliente, idFuncionario, dataAluguer, dataInicio, dataFim, dataEntrega) VALUES (3, 9, 2, '2021-11-11', '2021-11-11','2021-11-20', '2021-11-21');
INSERT INTO ALUGUER (idAluguer, idCliente, idFuncionario, dataAluguer, dataInicio, dataFim, dataEntrega) VALUES (4, 8, 3, '2021-11-12', '2021-11-12', '2021-11-20', '2021-11-20');
INSERT INTO ALUGUER (idAluguer, idCliente, idFuncionario, dataAluguer, dataInicio, dataFim, dataEntrega) VALUES (5, 9, 4, '2021-11-12', '2021-11-12','2021-11-20', '2021-11-20');
INSERT INTO ALUGUER (idAluguer, idCliente, idFuncionario, dataAluguer, dataInicio, dataFim, dataEntrega) VALUES (6, 5, 1, '2021-11-02', '2021-11-03', '2021-11-05', '2021-11-05');
INSERT INTO ALUGUER (idAluguer, idCliente, idFuncionario, dataAluguer, dataInicio, dataFim, dataEntrega) VALUES (7, 12, 4, '2021-11-02', '2021-11-03', '2021-11-05', '2021-11-05');
INSERT INTO ALUGUER (idAluguer, idCliente, idFuncionario, dataAluguer, dataInicio, dataFim, dataEntrega) VALUES (8, 18, 4, '2021-11-02', '2021-11-03', '2021-11-05', '2021-11-05');
INSERT INTO ALUGUER (idAluguer, idCliente, idFuncionario, dataAluguer, dataInicio, dataFim, dataEntrega) VALUES (9, 19, 4, '2022-01-03', '2022-01-03', '2022-01-15', null);
INSERT INTO ALUGUER (idAluguer, idCliente, idFuncionario, dataAluguer, dataInicio, dataFim, dataEntrega) VALUES (10, 5, 4, '2022-01-13', '2022-01-13', '2022-01-17', null);
INSERT INTO ALUGUER (idAluguer, idCliente, idFuncionario, dataAluguer, dataInicio, dataFim, dataEntrega) VALUES (11, 22, 1, '2022-01-20', '2022-01-20', '2022-01-31', null);
INSERT INTO ALUGUER (idAluguer, idCliente, idFuncionario, dataAluguer, dataInicio, dataFim, dataEntrega) VALUES (12, 15, 1, '2022-01-21', '2022-01-21', '2022-01-31', null);
INSERT INTO ALUGUER (idAluguer, idCliente, idFuncionario, dataAluguer, dataInicio, dataFim, dataEntrega) VALUES (13, 14, 3, '2022-01-25', '2022-01-25', '2022-02-07', null);
INSERT INTO ALUGUER (idAluguer, idCliente, idFuncionario, dataAluguer, dataInicio, dataFim, dataEntrega) VALUES (14, 13, 2, '2022-01-24', '2022-01-24', '2022-02-05', null);
INSERT INTO ALUGUER (idAluguer, idCliente, idFuncionario, dataAluguer, dataInicio, dataFim, dataEntrega) VALUES (15, 11, 3, '2022-01-22', '2022-01-22', '2022-02-01', null);
INSERT INTO ALUGUER (idAluguer, idCliente, idFuncionario, dataAluguer, dataInicio, dataFim, dataEntrega) VALUES (16, 21, 1, '2022-01-31', '2022-01-31', '2022-02-11', null);
INSERT INTO ALUGUER (idAluguer, idCliente, idFuncionario, dataAluguer, dataInicio, dataFim, dataEntrega) VALUES (17, 18, 2, '2022-01-31', '2022-01-31', '2022-02-12', null);
INSERT INTO ALUGUER (idAluguer, idCliente, idFuncionario, dataAluguer, dataInicio, dataFim, dataEntrega) VALUES (18, 16, 2, '2022-01-31', '2022-01-31', '2022-02-13', null);
INSERT INTO ALUGUER (idAluguer, idCliente, idFuncionario, dataAluguer, dataInicio, dataFim, dataEntrega) VALUES (19, 15, 3, '2022-01-31', '2022-01-31', '2022-02-14', null);
INSERT INTO ALUGUER (idAluguer, idCliente, idFuncionario, dataAluguer, dataInicio, dataFim, dataEntrega) VALUES (20, 10, 4, '2022-01-31', '2022-01-31', '2022-02-15', null);


--Table: LOJAALUGUER
--teste: ok

INSERT INTO LOJAALUGUER (idLoja, idAluguer) VALUES (1, 1);
INSERT INTO LOJAALUGUER (idLoja, idAluguer) VALUES (1, 2);
INSERT INTO LOJAALUGUER (idLoja, idAluguer) VALUES (1, 3);
INSERT INTO LOJAALUGUER (idLoja, idAluguer) VALUES (1, 4);
INSERT INTO LOJAALUGUER (idLoja, idAluguer) VALUES (1, 5);
INSERT INTO LOJAALUGUER (idLoja, idAluguer) VALUES (2, 6);
INSERT INTO LOJAALUGUER (idLoja, idAluguer) VALUES (2, 7);
INSERT INTO LOJAALUGUER (idLoja, idAluguer) VALUES (2, 8);
INSERT INTO LOJAALUGUER (idLoja, idAluguer) VALUES (2, 9);
INSERT INTO LOJAALUGUER (idLoja, idAluguer) VALUES (2, 10);
INSERT INTO LOJAALUGUER (idLoja, idAluguer) VALUES (1, 11);
INSERT INTO LOJAALUGUER (idLoja, idAluguer) VALUES (1, 12);
INSERT INTO LOJAALUGUER (idLoja, idAluguer) VALUES (2, 13);
INSERT INTO LOJAALUGUER (idLoja, idAluguer) VALUES (2, 14);
INSERT INTO LOJAALUGUER (idLoja, idAluguer) VALUES (2, 15);
INSERT INTO LOJAALUGUER (idLoja, idAluguer) VALUES (2, 16);
INSERT INTO LOJAALUGUER (idLoja, idAluguer) VALUES (2, 17);
INSERT INTO LOJAALUGUER (idLoja, idAluguer) VALUES (2, 18);
INSERT INTO LOJAALUGUER (idLoja, idAluguer) VALUES (1, 19);
INSERT INTO LOJAALUGUER (idLoja, idAluguer) VALUES (1, 20);


-- Table: ITENSALUGADOS
-- teste: ok

INSERT INTO ITENSALUGADOS (idAluguer, idFerramenta, quantidade, idFatura) VALUES (1, 5, 1, NULL);
INSERT INTO ITENSALUGADOS (idAluguer, idFerramenta, quantidade, idFatura) VALUES (2, 10, 1, NULL);
INSERT INTO ITENSALUGADOS (idAluguer, idFerramenta, quantidade, idFatura) VALUES (3, 1, 1, NULL);
INSERT INTO ITENSALUGADOS (idAluguer, idFerramenta, quantidade, idFatura) VALUES (4, 16, 1, NULL);
INSERT INTO ITENSALUGADOS (idAluguer, idFerramenta, quantidade, idFatura) VALUES (5, 11, 1, NULL);
INSERT INTO ITENSALUGADOS (idAluguer, idFerramenta, quantidade, idFatura) VALUES (6, 3, 1, NULL);
INSERT INTO ITENSALUGADOS (idAluguer, idFerramenta, quantidade, idFatura) VALUES (7, 4, 1, NULL);
INSERT INTO ITENSALUGADOS (idAluguer, idFerramenta, quantidade, idFatura) VALUES (8, 6, 1, NULL);
INSERT INTO ITENSALUGADOS (idAluguer, idFerramenta, quantidade, idFatura) VALUES (9, 2, 1, NULL);
INSERT INTO ITENSALUGADOS (idAluguer, idFerramenta, quantidade, idFatura) VALUES (10, 7, 1, NULL);
INSERT INTO ITENSALUGADOS (idAluguer, idFerramenta, quantidade, idFatura) VALUES (11, 8, 1, NULL);
INSERT INTO ITENSALUGADOS (idAluguer, idFerramenta, quantidade, idFatura) VALUES (12, 9, 1, NULL);
INSERT INTO ITENSALUGADOS (idAluguer, idFerramenta, quantidade, idFatura) VALUES (13, 1, 1, NULL);
INSERT INTO ITENSALUGADOS (idAluguer, idFerramenta, quantidade, idFatura) VALUES (14, 5, 1, NULL);
INSERT INTO ITENSALUGADOS (idAluguer, idFerramenta, quantidade, idFatura) VALUES (15, 5, 1, NULL);
INSERT INTO ITENSALUGADOS (idAluguer, idFerramenta, quantidade, idFatura) VALUES (16, 17, 1, NULL);
INSERT INTO ITENSALUGADOS (idAluguer, idFerramenta, quantidade, idFatura) VALUES (17, 8, 1, NULL);
INSERT INTO ITENSALUGADOS (idAluguer, idFerramenta, quantidade, idFatura) VALUES (18, 10, 1, NULL);
INSERT INTO ITENSALUGADOS (idAluguer, idFerramenta, quantidade, idFatura) VALUES (19, 6, 1, NULL);
INSERT INTO ITENSALUGADOS (idAluguer, idFerramenta, quantidade, idFatura) VALUES (20, 2, 1, NULL);


-- Table: FATURA
-- teste: ok

INSERT INTO FATURA (idFatura, idAluguer, data, valor) VALUES (1, 1, '2021-11-20', 8.25);
INSERT INTO FATURA (idFatura, idAluguer, data, valor) VALUES (2, 2, '2021-11-21', 175.0);
INSERT INTO FATURA (idFatura, idAluguer, data, valor) VALUES (3, 3, '2021-11-21', 8.0);
INSERT INTO FATURA (idFatura, idAluguer, data, valor) VALUES (4, 4, '2021-11-20', 90.0);
INSERT INTO FATURA (idFatura, idAluguer, data, valor) VALUES (5, 5, '2021-11-20', 180.0);
INSERT INTO FATURA (idFatura, idAluguer, data, valor) VALUES (6, 6, '2021-11-05', 9.0);
INSERT INTO FATURA (idFatura, idAluguer, data, valor) VALUES (7, 7, '2021-11-05', 3.0);
INSERT INTO FATURA (idFatura, idAluguer, data, valor) VALUES (8, 8, '2021-11-05', 24.0);


-- Table: HORARIOFUNCIONARIO
-- teste: ok

INSERT INTO HORARIOFUNCIONARIO(idFuncionario, idHorario) VALUES (1,1);
INSERT INTO HORARIOFUNCIONARIO(idFuncionario, idHorario) VALUES (1,3);
INSERT INTO HORARIOFUNCIONARIO(idFuncionario, idHorario) VALUES (1,5);
INSERT INTO HORARIOFUNCIONARIO(idFuncionario, idHorario) VALUES (1,7);
INSERT INTO HORARIOFUNCIONARIO(idFuncionario, idHorario) VALUES (2,1);
INSERT INTO HORARIOFUNCIONARIO(idFuncionario, idHorario) VALUES (2,2);
INSERT INTO HORARIOFUNCIONARIO(idFuncionario, idHorario) VALUES (2,4);
INSERT INTO HORARIOFUNCIONARIO(idFuncionario, idHorario) VALUES (2,6);
INSERT INTO HORARIOFUNCIONARIO(idFuncionario, idHorario) VALUES (2,7);
INSERT INTO HORARIOFUNCIONARIO(idFuncionario, idHorario) VALUES (3,1);
INSERT INTO HORARIOFUNCIONARIO(idFuncionario, idHorario) VALUES (3,2);
INSERT INTO HORARIOFUNCIONARIO(idFuncionario, idHorario) VALUES (3,3);
INSERT INTO HORARIOFUNCIONARIO(idFuncionario, idHorario) VALUES (3,5);
INSERT INTO HORARIOFUNCIONARIO(idFuncionario, idHorario) VALUES (4,1);
INSERT INTO HORARIOFUNCIONARIO(idFuncionario, idHorario) VALUES (4,3);
INSERT INTO HORARIOFUNCIONARIO(idFuncionario, idHorario) VALUES (4,5);
INSERT INTO HORARIOFUNCIONARIO(idFuncionario, idHorario) VALUES (4,6);
INSERT INTO HORARIOFUNCIONARIO(idFuncionario, idHorario) VALUES (4,7);


-- Table: LOJAHORARIO
-- teste: ok

INSERT INTO LOJAHORARIO(idLoja, idHorario) VALUES (1,1);
INSERT INTO LOJAHORARIO(idLoja, idHorario) VALUES (1,2);
INSERT INTO LOJAHORARIO(idLoja, idHorario) VALUES (1,3);
INSERT INTO LOJAHORARIO(idLoja, idHorario) VALUES (1,4);
INSERT INTO LOJAHORARIO(idLoja, idHorario) VALUES (1,5);
INSERT INTO LOJAHORARIO(idLoja, idHorario) VALUES (1,6);
INSERT INTO LOJAHORARIO(idLoja, idHorario) VALUES (1,7);
INSERT INTO LOJAHORARIO(idLoja, idHorario) VALUES (2,1);
INSERT INTO LOJAHORARIO(idLoja, idHorario) VALUES (2,2);
INSERT INTO LOJAHORARIO(idLoja, idHorario) VALUES (2,3);
INSERT INTO LOJAHORARIO(idLoja, idHorario) VALUES (2,4);
INSERT INTO LOJAHORARIO(idLoja, idHorario) VALUES (2,5);
INSERT INTO LOJAHORARIO(idLoja, idHorario) VALUES (2,6);
INSERT INTO LOJAHORARIO(idLoja, idHorario) VALUES (2,7);


-- Table: LOJAFUNCIONARIO
-- teste: ok

INSERT INTO LOJAFUNCIONARIO (idFuncionario, idLoja) VALUES (1, 1);
INSERT INTO LOJAFUNCIONARIO (idFuncionario, idLoja) VALUES (1, 2);
INSERT INTO LOJAFUNCIONARIO (idFuncionario, idLoja) VALUES (2, 1);
INSERT INTO LOJAFUNCIONARIO (idFuncionario, idLoja) VALUES (2, 2);
INSERT INTO LOJAFUNCIONARIO (idFuncionario, idLoja) VALUES (3, 1);
INSERT INTO LOJAFUNCIONARIO (idFuncionario, idLoja) VALUES (3, 2);
INSERT INTO LOJAFUNCIONARIO (idFuncionario, idLoja) VALUES (4, 1);
INSERT INTO LOJAFUNCIONARIO (idFuncionario, idLoja) VALUES (4, 2);


-- Table: RESERVAALUGUER
-- teste: ok

INSERT INTO RESERVAALUGUER(idReserva, idAluguer) VALUES (1,1);
INSERT INTO RESERVAALUGUER(idReserva, idAluguer) VALUES (2,2);
INSERT INTO RESERVAALUGUER(idReserva, idAluguer) VALUES (3,3);
INSERT INTO RESERVAALUGUER(idReserva, idAluguer) VALUES (4,4);
INSERT INTO RESERVAALUGUER(idReserva, idAluguer) VALUES (5,5);
INSERT INTO RESERVAALUGUER(idReserva, idAluguer) VALUES (6,16);
INSERT INTO RESERVAALUGUER(idReserva, idAluguer) VALUES (7,17);
INSERT INTO RESERVAALUGUER(idReserva, idAluguer) VALUES (8,18);
INSERT INTO RESERVAALUGUER(idReserva, idAluguer) VALUES (9,19);
INSERT INTO RESERVAALUGUER(idReserva, idAluguer) VALUES (10,20);