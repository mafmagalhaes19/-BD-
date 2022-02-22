-- Grupo 104

PRAGMA FOREIGN_KEYS=ON;

--ELIMINA AS TABELAS SE EXISTIREM

DROP TABLE IF EXISTS PESSOA;
DROP TABLE IF EXISTS CLIENTE;
DROP TABLE IF EXISTS FUNCIONARIO;
DROP TABLE IF EXISTS HORARIO;
DROP TABLE IF EXISTS LOJA;
DROP TABLE IF EXISTS FERRAMENTA;
DROP TABLE IF EXISTS MANUAL;
DROP TABLE IF EXISTS MOTOR;
DROP TABLE IF EXISTS ELETRICA;
DROP TABLE IF EXISTS STOCK;
DROP TABLE IF EXISTS RESERVA;
DROP TABLE IF EXISTS LOJARESERVA;
DROP TABLE IF EXISTS ALUGUER;
DROP TABLE IF EXISTS LOJAALUGUER;
DROP TABLE IF EXISTS ITENSALUGADOS;
DROP TABLE IF EXISTS FATURA;
DROP TABLE IF EXISTS HORARIOFUNCIONARIO;
DROP TABLE IF EXISTS LOJAHORARIO;
DROP TABLE IF EXISTS LOJAFUNCIONARIO;
DROP TABLE IF EXISTS RESERVAALUGUER;


--CRIA CADA UMA DAS TABELAS

--Tabela: Pessoa

CREATE TABLE PESSOA (
    idPessoa       INTEGER CONSTRAINT pessoa_id NOT NULL,
    nome           TEXT CONSTRAINT nn_pessoa_nome NOT NULL,
    dataNascimento DATE CONSTRAINT nn_pessoa_datanascimento NOT NULL CHECK (dataNascimento <= CURRENT_DATE),
    morada         TEXT CONSTRAINT nn_pessoa_morada NOT NULL,
    telefone       INTEGER CONSTRAINT nn_pessoa_telefone NOT NULL CHECK (telefone < 1000000000 AND telefone >= 100000000),
    nif            INTEGER CONSTRAINT nn_pessoa_nif NOT NULL CHECK (nif >= 100000000 AND nif <= 999999999),
    PRIMARY KEY (idPessoa) 
                           
);


--Tabela: Cliente

CREATE TABLE CLIENTE (
    idPessoa        INTEGER CONSTRAINT cliente_id NOT NULL UNIQUE,
    dataAdesao      DATE CONSTRAINT nn_cliente_data NOT NULL CHECK (dataAdesao <= CURRENT_DATE),
    PRIMARY KEY (idPessoa),
    FOREIGN KEY (idPessoa) REFERENCES PESSOA (idPessoa) ON DELETE CASCADE ON UPDATE CASCADE
);


--Tabela: Funcionario

CREATE TABLE FUNCIONARIO (
    idPessoa     INTEGER CONSTRAINT funcionario_id UNIQUE NOT NULL,
    dataAdmissao DATE CONSTRAINT funcionario_data NOT NULL CHECK (dataAdmissao <= CURRENT_DATE),
    ordenado     INTEGER CONSTRAINT funcionario_ordenado NOT NULL CHECK (ordenado >= 705),
    PRIMARY KEY (idPessoa),
    FOREIGN KEY (idPessoa) REFERENCES PESSOA (idPessoa) ON DELETE CASCADE ON UPDATE CASCADE
);


--Tabela: Horario

CREATE TABLE HORARIO (
    idHorario   INTEGER CONSTRAINT horario_id NOT NULL,
    diaSemana   TEXT CONSTRAINT check_horario_diasemana CHECK ( (diaSemana = "SEGUNDA-FEIRA" OR 
                                                                   diaSemana = "TERCA-FEIRA" OR 
                                                                   diaSemana = "QUARTA-FEIRA" OR 
                                                                   diaSemana = "QUINTA-FEIRA" OR 
                                                                   diaSemana = "SEXTA-FEIRA" OR 
                                                                   diaSemana = "SABADO" OR 
                                                                   diaSemana = "DOMINGO") ) CONSTRAINT nn_horario_diasemana NOT NULL,
    horaInicio  TIME CONSTRAINT nn_horario_horainicio NOT NULL,
    horaFim     TIME CONSTRAINT nn_horario_horafim NOT NULL,
    CONSTRAINT unique_horario_dia_horas UNIQUE (diaSemana,horaInicio,horaFim),
    CONSTRAINT check_horario_horas CHECK (horaFim > horaInicio),
    PRIMARY KEY (idHorario)
);


--Tabela: HorarioFuncionario

CREATE TABLE HORARIOFUNCIONARIO (
    idFuncionario  INTEGER REFERENCES FUNCIONARIO (idPessoa) ON DELETE CASCADE ON UPDATE CASCADE,
    idHorario      INTEGER REFERENCES HORARIO (idHorario) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idFuncionario, idHorario)
);


--Tabela: Loja

CREATE TABLE LOJA (
    idLoja          INTEGER CONSTRAINT loja_id NOT NULL,
    morada          TEXT CONSTRAINT loja_morada NOT NULL,
    telefone        INTEGER CONSTRAINT loja_telefone NOT NULL CHECK (telefone >= 100000000 AND telefone <= 1000000000),
    idResponsavel   INTEGER CONSTRAINT loja_responsavel NOT NULL REFERENCES FUNCIONARIO (idPessoa) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idLoja)
);


--Tabela: Ferramenta

CREATE TABLE FERRAMENTA (
    idFerramenta INTEGER CONSTRAINT ferramenta_id NOT NULL,
    nome         TEXT CONSTRAINT ferramenta_nome NOT NULL,
    data         DATE CONSTRAINT ferramenta_data NOT NULL CHECK (data <= CURRENT_DATE),
    precoAluguer INTEGER CONSTRAINT ferramenta_preco NOT NULL,
    franquia     INTEGER CONSTRAINT ferramenta_franquia NOT NULL,
    multaAtraso  INTEGER CONSTRAINT ferramenta_multa  NOT NULL,
    peso         DECIMAL CONSTRAINT ferramenta_peso NOT NULL,
    altura       INTEGER CONSTRAINT ferramenta_altura NOT NULL,
    largura      INTEGER CONSTRAINT ferramenta_largura NOT NULL,
    comprimento  INTEGER CONSTRAINT ferramenta_comprimento NOT NULL,
    PRIMARY KEY (idFerramenta)
);


--Tabela: Manual

CREATE TABLE MANUAL (
    idFerramenta        INTEGER CONSTRAINT manual_ferramenta NOT NULL REFERENCES FERRAMENTA (idFerramenta) ON DELETE CASCADE ON UPDATE CASCADE,
    materialCabo        TEXT CONSTRAINT manual_material_cabo NOT NULL,
    materialPrincipal   TEXT CONSTRAINT manual_material_principal NOT NULL,
    PRIMARY KEY (idFerramenta)
);


--Tabela: Motor

CREATE TABLE MOTOR (
    idFerramenta    INTEGER CONSTRAINT motor_ferramenta NOT NULL REFERENCES FERRAMENTA (idFerramenta) ON DELETE CASCADE ON UPDATE CASCADE,
    combustivel     TEXT CONSTRAINT motor_combustivel NOT NULL CHECK (combustivel = "gasolina" OR combustivel = "gasoleo"),
    cilindrada      INTEGER CONSTRAINT motor_cilindrada NOT NULL,
    motor           TEXT CONSTRAINT motor_motor NOT NULL CHECK (motor = "2 tempos" OR motor = "4 tempos"),
    potencia        INTEGER CONSTRAINT motor_potencia NOT NULL,
    PRIMARY KEY (idFerramenta)
);


--Tabela: Eletrica

CREATE TABLE ELETRICA (
    idFerramenta    INTEGER CONSTRAINT eletrica_ferramenta NOT NULL REFERENCES FERRAMENTA (idFerramenta) ON DELETE CASCADE ON UPDATE CASCADE,
    volt            INTEGER CONSTRAINT eletrica_volt NOT NULL,
    amperagem       INTEGER CONSTRAINT eletrica_amperagem NOT NULL,
    alimentacao     TEXT CONSTRAINT eletrica_alimentacao NOT NULL CHECK (alimentacao = "bateria" OR alimentacao = "corrente"),
    potencia        INTEGER CONSTRAINT eletrica_potencia NOT NULL,
    PRIMARY KEY (idFerramenta)
);


--Tabela: Stock

CREATE TABLE STOCK (
    idLoja       INTEGER CONSTRAINT stock_loja NOT NULL REFERENCES LOJA (idLoja) ON DELETE CASCADE ON UPDATE CASCADE,
    idFerramenta INTEGER CONSTRAINT stock_ferramenta NOT NULL REFERENCES FERRAMENTA (idFerramenta) ON DELETE CASCADE ON UPDATE CASCADE,
    quantidade   INTEGER CONSTRAINT stock_quantidade NOT NULL CHECK (quantidade >= 0),
    PRIMARY KEY (idLoja, idFerramenta)
);


--Tabela: Reserva

CREATE TABLE RESERVA (
    idReserva       INTEGER CONSTRAINT reserva_id NOT NULL,
    idCliente       INTEGER CONSTRAINT reserva_cliente NOT NULL REFERENCES CLIENTE (idPessoa) ON DELETE CASCADE ON UPDATE CASCADE,
    idFuncionario   INTEGER CONSTRAINT reserva_funcionario NOT NULL REFERENCES FUNCIONARIO (idPessoa) ON DELETE CASCADE ON UPDATE CASCADE,
    idFerramenta    INTEGER CONSTRAINT reserva_ferramenta NOT NULL  REFERENCES FERRAMENTA (idFerramenta) ON DELETE CASCADE ON UPDATE CASCADE,
    dataReserva     DATE CONSTRAINT reserva_data NOT NULL CHECK (dataReserva <= CURRENT_DATE),
    dataInicio      DATE CONSTRAINT reserva_data_inicio NOT NULL CHECK (dataInicio >= dataReserva),
    dataFim         DATE CONSTRAINT reserva_data_fim NOT NULL CHECK (dataFim >= dataInicio),
    PRIMARY KEY (idReserva) 
);


--Tabela: LojaReserva

CREATE TABLE LOJARESERVA (
    idLoja      INTEGER CONSTRAINT loja_reserva_loja NOT NULL REFERENCES LOJA (idLoja) ON DELETE CASCADE ON UPDATE CASCADE,
    idReserva   INTEGER CONSTRAINT loja_reserva_reserva NOT NULL REFERENCES RESERVA (idReserva) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idLoja, idReserva)
);


--Tabela: Aluguer

CREATE TABLE ALUGUER (
    idAluguer       INTEGER CONSTRAINT aluguer_id NOT NULL,
    idCliente       INTEGER CONSTRAINT aluguer_cliente NOT NULL REFERENCES CLIENTE (idPessoa) ON DELETE CASCADE ON UPDATE CASCADE,
    idFuncionario   INTEGER CONSTRAINT aluguer_funcionario NOT NULL REFERENCES FUNCIONARIO (idPessoa) ON DELETE CASCADE ON UPDATE CASCADE,
    dataAluguer     DATE CONSTRAINT aluguer_data NOT NULL,
    dataInicio      DATE CONSTRAINT aluguer_data_inicio NOT NULL CHECK (dataInicio >= dataAluguer),
    dataFim         DATE CONSTRAINT aluguer_data_fim NOT NULL CHECK (dataFim >= dataInicio),
    dataEntrega     DATE CONSTRAINT aluguer_data_entrega CHECK (dataEntrega >= dataInicio),
    PRIMARY KEY (idAluguer) 
);


--Tabela: LojaAluguer

CREATE TABLE LOJAALUGUER (
    idLoja      INTEGER CONSTRAINT loja_aluguer_loja NOT NULL REFERENCES LOJA (idLoja) ON DELETE CASCADE ON UPDATE CASCADE,
    idAluguer   INTEGER CONSTRAINT loja_aluguer_aluguer NOT NULL REFERENCES ALUGUER (idAluguer) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idLoja, idAluguer)
);


--Tabela: ItensAlugados

CREATE TABLE ITENSALUGADOS (
    idAluguer       INTEGER CONSTRAINT itens_alugados_aluguer NOT NULL REFERENCES ALUGUER (idAluguer) ON DELETE CASCADE ON UPDATE CASCADE,
    idFerramenta    INTEGER CONSTRAINT itens_alugados_ferramenta NOT NULL REFERENCES FERRAMENTA (idFerramenta) ON DELETE CASCADE ON UPDATE CASCADE,
    quantidade      INTEGER CONSTRAINT itens_alugados_quantidade NOT NULL CHECK (quantidade >= 1),
    idFatura        INTEGER CONSTRAINT itens_alugados_fatura REFERENCES FATURA (idFatura) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idAluguer, idFerramenta)
);


--Tabela: Fatura

CREATE TABLE FATURA (
    idFatura    INTEGER CONSTRAINT fatura_id NOT NULL,
    idAluguer   INTEGER CONSTRAINT fatura_aluguer NOT NULL REFERENCES ALUGUER (idAluguer) ON DELETE CASCADE ON UPDATE CASCADE,
    data        DATE CONSTRAINT fatura_data NOT NULL CHECK (data <= CURRENT_DATE),
    valor       REAL CONSTRAINT fatura_valor NOT NULL,
    PRIMARY KEY (idFatura)
);


--Tabela: LojaHorario

CREATE TABLE LOJAHORARIO (
    idLoja      INTEGER CONSTRAINT loja_horario_loja NOT NULL REFERENCES LOJA (idLoja) ON DELETE CASCADE ON UPDATE CASCADE,
    idHorario   INTEGER CONSTRAINT loja_horario_horario NOT NULL REFERENCES HORARIO (idHorario) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idLoja, idHorario)
);


--Tabela: LojaFuncionario

CREATE TABLE LOJAFUNCIONARIO (
    idFuncionario   INTEGER CONSTRAINT loja_funcionario_funcionario NOT NULL REFERENCES FUNCIONARIO (idPessoa) ON DELETE CASCADE ON UPDATE CASCADE,
    idLoja          INTEGER CONSTRAINT loja_funcionario_loja NOT NULL REFERENCES LOJA (idLoja) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idFuncionario, idLoja)
);


--Tabela: ReservaAluguer

CREATE TABLE RESERVAALUGUER (
    idReserva   INTEGER REFERENCES RESERVA (idReserva) ON DELETE CASCADE ON UPDATE CASCADE,
    idAluguer   INTEGER REFERENCES ALUGUER (idAluguer) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (idReserva, idAluguer)
);