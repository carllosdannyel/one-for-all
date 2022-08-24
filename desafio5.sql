SELECT ca.nome AS cancao, COUNT(hi.cancao_id) AS reproducoes
FROM SpotifyClone.historico_de_reproducao AS hi
INNER JOIN SpotifyClone.cancao AS ca
ON hi.cancao_id = ca.id
GROUP BY hi.cancao_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;