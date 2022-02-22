.mode columns
.headers on
.nullvalue NULL

-- Número de horas de trabalho de cada Funcionário por semana

SELECT idPessoa, nome, ordenado, (sum(abs(strftime('%s', horaFim) - strftime('%s', horaInicio)))) / 3600 as totalHoras
    FROM   (Funcionario JOIN HorarioFuncionario ON idPessoa = idFuncionario) NATURAL JOIN Horario NATURAL JOIN Pessoa
    GROUP BY idPessoa ORDER BY totalHoras DESC;