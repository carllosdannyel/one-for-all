SELECT us.nome AS usuario,
	IF(YEAR(MAX(hi.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.usuario AS us
INNER JOIN SpotifyClone.historico_de_reproducao AS hi
ON hi.usuario_id = us.id
GROUP BY us.nome
ORDER BY us.nome;