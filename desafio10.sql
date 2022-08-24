SELECT
  ca.nome AS nome,
  COUNT(DISTINCT us.nome) AS reproducoes
FROM SpotifyClone.historico_de_reproducao AS hi
INNER JOIN SpotifyClone.cancao AS ca
ON ca.id = hi.cancao_id
INNER JOIN SpotifyClone.usuario AS us
ON hi.usuario_id = us.id
WHERE us.plano_id = 1 OR us.plano_id = 4
GROUP BY ca.nome
ORDER BY nome; 