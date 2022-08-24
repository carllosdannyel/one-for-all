SELECT
	ar.nome AS artista,
  al.nome AS album
FROM SpotifyClone.artista AS ar
INNER JOIN SpotifyClone.album AS al
ON al.artista_id = ar.id
WHERE ar.nome = 'Elis Regina'
ORDER BY album; 