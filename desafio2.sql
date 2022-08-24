SELECT
  COUNT(ca.id) AS cancoes,
  COUNT(DISTINCT ar.id) AS artistas,
  COUNT(DISTINCT al.id) AS albuns
FROM SpotifyClone.cancao AS ca
INNER JOIN SpotifyClone.album AS al
ON al.id = ca.album_id
INNER JOIN SpotifyClone.artista AS ar
ON ar.id = al.artista_id;