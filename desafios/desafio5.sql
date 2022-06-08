SELECT
    cancoes.cancao,
    COUNT(hist.cancao_id) AS reproducoes
FROM
	SpotifyClone.historico_reproducoes hist
		INNER JOIN
	SpotifyClone.cancoes cancoes
		ON hist.cancao_id = cancoes.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;