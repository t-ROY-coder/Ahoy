extends HBoxContainer

func update_hearts(hp):
	if hp >= 1:
		get_node("Heart").texture.region = Rect2(0, 0, 32, 32)
		if hp >= 2:
			get_node("Heart2").texture.region = Rect2(0, 0, 32, 32)
			if hp >= 3:
				get_node("Heart3").texture.region = Rect2(0, 0, 32, 32)
