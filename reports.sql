USE FeriasDB;

-- 1 Relatório com agenda de compromissos, mostrando dia a dia cada um dos compromissos ordenado por data e hora
SELECT Despesa.dataHoraEvento, PontoTuristico.nome, Despesa.descricao, Ferias.nomeFerias FROM Despesa
LEFT JOIN PontoTuristico ON (Despesa.PontoTuristico_idPontoTuristico = PontoTuristico.idPontoTuristico)
JOIN Ferias ON (Despesa.Ferias_idFerias = Ferias.idFerias)
-- WHERE Ferias.idFerias=1
ORDER BY dataHoraEvento;

-- 2 Todos os Pontos Turísticos que não tem acessbilidade alguma
SELECT idPontoTuristico, nome FROM PontoTuristico
WHERE PontoTuristico.idPontoTuristico NOT IN (
	SELECT  PontoTuristico_idPontoTuristico FROM PontoTuristico_has_NecessidadeEspecial
);

-- 3 Gastos totais na viagem agrupados por tipo, quantidade de pessoas, valor relativo por pessoa
SELECT Ferias.nomeFerias, tipoDespesa, SUM(Despesa.valor) AS 'Total',
(	SELECT count(Pessoa_has_Ferias.Pessoa_idPessoa)
    FROM Pessoa_has_Ferias
    WHERE Pessoa_has_Ferias.Ferias_idFerias =  Ferias.idFerias
) AS 'Total de Pessoas',
SUM(Despesa.valor)/(
	SELECT count(Pessoa_has_Ferias.Pessoa_idPessoa)
    FROM Pessoa_has_Ferias
    WHERE Pessoa_has_Ferias.Ferias_idFerias =  Ferias.idFerias
) AS 'Total por Pessoa'
FROM TipoDespesa
JOIN Despesa ON (Despesa.TipoDespesa_idTipoDespesa = TipoDespesa.idTipoDespesa)
JOIN Ferias ON (Ferias.idFerias = Despesa.Ferias_idFerias)
-- WHERE Ferias.idFerias=1
GROUP BY TipoDespesa.idTipoDespesa, Ferias.idFerias;

-- 4 Quantas viagens foram feitas, gasto total de cada viagem, quantas pessoas foram
SELECT Ferias.nomeFerias, SUM(valor) AS 'Total',
(	SELECT count(Pessoa_has_Ferias.Pessoa_idPessoa)
    FROM Pessoa_has_Ferias
    WHERE Pessoa_has_Ferias.Ferias_idFerias =  Ferias.idFerias
) AS 'Total de Pessoas'
FROM TipoDespesa
JOIN Despesa ON (Despesa.TipoDespesa_idTipoDespesa = TipoDespesa.idTipoDespesa)
JOIN Ferias ON (Ferias.idFerias = Despesa.Ferias_idFerias)
-- WHERE Ferias.idFerias=1
GROUP BY Ferias.idFerias;
