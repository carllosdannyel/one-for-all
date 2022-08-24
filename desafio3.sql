SELECT
  us.nome AS usuario,
  COUNT(hi.cancao_id) AS qt_de_musicas_ouvidas,
  ROUND(SUM(ca.duracao_segundos) / 60, 2) AS total_minutos
FROM SpotifyClone.historico_de_reproducao AS hi
INNER JOIN SpotifyClone.cancao AS ca
ON hi.cancao_id = ca.id
INNER JOIN SpotifyClone.usuario AS us
ON us.id = hi.usuario_id
GROUP BY us.nome
ORDER BY us.nome ASC;