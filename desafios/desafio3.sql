SELECT
	user.usuario AS usuario,
    COUNT(*) AS qtde_musicas_ouvidas,
	ROUND(SUM(songs.duracao_segundos) / 60, 2) AS total_minutos
FROM
	SpotifyClone.usuarios user
		INNER JOIN
	SpotifyClone.historico_reproducoes hist ON user.usuario_id = hist.usuario_id
		INNER JOIN
	SpotifyClone.cancoes songs ON songs.cancao_id = hist.cancao_id
GROUP BY user.usuario
ORDER BY user.usuario;