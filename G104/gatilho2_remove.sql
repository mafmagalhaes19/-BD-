.mode columns
.headers on

PRAGMA foreign_keys = ON;

DROP TRIGGER stockDisponivelReserva;
DROP TRIGGER stockIndisponivelReserva;
DROP TRIGGER atualizaStockReserva;
DROP TRIGGER criaAluguer;