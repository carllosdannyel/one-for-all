SELECT
  ar.nome AS artista,
  al.nome AS album,
  COUNT(seg.usuario_id) AS seguidores
FROM SpotifyClone.artista AS ar
INNER JOIN SpotifyClone.album AS al
ON al.artista_id = ar.id
INNER JOIN SpotifyClone.seguindo_artista AS seg
ON seg.artista_id = ar.id
GROUP BY al.nome, ar.nome
ORDER BY seguidores DESC, artista, album;