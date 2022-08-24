SELECT
	COUNT(hi.usuario_id) AS quantidade_musicas_no_historico
FROM 
	SpotifyClone.historico_de_reproducao AS hi
INNER JOIN
	SpotifyClone.usuario AS us
  ON us.id = hi.usuario_id
WHERE us.nome = 'Barbara Liskov'
GROUP BY us.nome; 