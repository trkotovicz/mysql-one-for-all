SELECT
	COUNT(*) AS quantidade_musicas_no_historico
FROM
	SpotifyClone.historico_reproducoes AS hist
		INNER JOIN
	SpotifyClone.usuarios AS u ON u.usuario_id = hist.usuario_id
WHERE
	u.usuario = "Bill";