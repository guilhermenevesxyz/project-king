extends MarginContainer

func _process(_delta):
	self.set_size(Vector2(self.get_viewport_rect().size.x, self.get_viewport_rect().size.y))
