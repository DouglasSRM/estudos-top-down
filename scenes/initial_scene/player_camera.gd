extends Camera2D

@export var tilemap: TileMapLayer

func _ready() -> void:
	# Makes the camera follow the player respecting the world barriers
	# it calculates the size of the world for the x and y axis and sets those values as the limits for the camera
	var map_rect: Rect2i = tilemap.get_used_rect()
	var tile_size: int = tilemap.rendering_quadrant_size
	var world_size_in_pixels: Vector2i = map_rect.size * tile_size
	limit_right = world_size_in_pixels.x
	limit_bottom = world_size_in_pixels.y
