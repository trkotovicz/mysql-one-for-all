SELECT
	art.artista,
	alb.album,
    COUNT(seg.usuario_id) AS seguidores
FROM
	SpotifyClone.albuns AS alb
		INNER JOIN
	SpotifyClone.artistas AS art ON alb.artista = art.artista_id
		INNER JOIN
	SpotifyClone.seguindo_artistas AS seg ON alb.artista = seg.artista
GROUP BY art.artista, alb.album
ORDER BY seguidores DESC, art.artista, alb.album;