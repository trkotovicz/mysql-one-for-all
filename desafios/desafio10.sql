SELECT
	songs.cancao AS nome,
    COUNT(*) AS reproducoes
FROM
	SpotifyClone.cancoes songs
		INNER JOIN
	SpotifyClone.historico_reproducoes hist
		ON songs.cancao_id = hist.cancao_id
        INNER JOIN
	SpotifyClone.usuarios user
		ON hist.usuario_id = user.usuario_id
WHERE
	user.plano = 1 OR user.plano = 4
GROUP BY nome
ORDER BY nome;