SELECT
	COUNT(cancoes.cancao) AS cancoes,
    COUNT(DISTINCT albuns.artista) AS artistas,
	COUNT(DISTINCT cancoes.album_id) AS albuns    
FROM SpotifyClone.cancoes
INNER JOIN SpotifyClone.albuns
ON cancoes.album_id = albuns.album_id;