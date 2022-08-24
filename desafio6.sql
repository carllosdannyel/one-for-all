SELECT
  MIN(pl.valor) AS faturamento_minimo,
  MAX(pl.valor) AS faturamento_maximo,
  ROUND(AVG(pl.valor), 2) AS faturamento_medio,
  SUM(pl.valor) AS faturamento_total
FROM  SpotifyClone.plano AS pl
INNER JOIN SpotifyClone.usuario AS us
ON us.plano_id = pl.id;