CREATE VIEW faturamento_atual AS
SELECT 
ROUND(MIN(p.price), 2) AS 'faturamento_minimo',
ROUND(MAX(p.price), 2) AS 'faturamento_maximo',
ROUND(AVG(p.price), 2) AS 'faturamento_medio',
ROUND(SUM(p.price), 2) AS 'faturamento_total'
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.plan AS p
ON u.plan_id=p.plan_id;
