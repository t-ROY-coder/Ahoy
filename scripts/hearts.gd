extends HBoxContainer

func update_hearts(hp):
	if hp >= 1:
		get_node("Heart").visible = true
		if hp >= 2:
			get_node("Heart2").visible = true
			if hp >= 3:
				get_node("Heart3").visible = true
