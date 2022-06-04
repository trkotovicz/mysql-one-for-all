SELECT user.usuario AS usuario,
    IF(MAX(YEAR(hist.data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM
	SpotifyClone.usuarios user
		INNER JOIN
    SpotifyClone.historico_reproducoes hist
		ON user.usuario_id = hist.usuario_id
GROUP BY usuario
ORDER BY usuario;