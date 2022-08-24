SELECT
  nome AS nome_musica,
CASE
WHEN nome LIKE '%Amar%' THEN REPLACE(nome, 'Amar', 'Code Review')
WHEN nome LIKE '%SUPERSTAR%' THEN REPLACE(nome, 'SUPERSTAR', 'SUPERDEV')
WHEN nome LIKE '%Bard%' THEN REPLACE(nome, 'Bard', 'QA')
WHEN nome LIKE '%SOUL%' THEN REPLACE(nome, 'SOUL', 'CODE')
WHEN nome LIKE '%Pais%' THEN REPLACE(nome, 'Pais', 'Pull Requests')
END AS novo_nome
FROM SpotifyClone.cancao
WHERE nome LIKE '%Amar%'
OR nome LIKE '%SUPERSTAR%'
OR nome LIKE '%Bard%'
OR nome LIKE '%SOUL%'
OR nome LIKE '%Pais%'
ORDER BY nome DESC;  