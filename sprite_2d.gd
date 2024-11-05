extends Sprite2D


func reposicionar():
	var viewport_rect = get_viewport_rect()
	var largura_tela = viewport_rect.size.x
	var altura_tela = viewport_rect.size.y
	
	var nova_posicao_x = randf() * largura_tela
	var nova_posicao_y = randf() * altura_tela
	position = Vector2(nova_posicao_x, nova_posicao_y)
