SELECT
	art.artista,
	alb.album
FROM
	SpotifyClone.albuns AS alb
		INNER JOIN
	SpotifyClone.artistas AS art ON alb.artista = art.artista_id
WHERE
	art.artista = "Walter Phoenix"
ORDER BY album;