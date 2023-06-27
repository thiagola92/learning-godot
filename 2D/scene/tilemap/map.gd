extends Node2D


@export var sprite: Sprite2D
@export var sprite2: Sprite2D
@export var tilemap: TileMap


func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.is_action_pressed("lclick"):
			printt("--- Before ---")
			printt("Map position (zero because it is at the center)", position)
			printt("Map global position (zero because it is at the center)", global_position)
			printt("TileMap position (used grid snap to move exactly 128x128)", tilemap.position)
			printt("TileMap global position (same as position because map is at the center)", tilemap.global_position)
			printt("Without grid snap i could put the tilemap start at any position, his tiles would respect the distance between them after knowing the start")
			printt("Sprite position (used grid snap to move exactly 128x128 from TileMap)", sprite.position)
			printt("Sprite global position (is 128x128 from TileMap and the TileMap is 128x128 from Map, so it's 256x256)", sprite.global_position)
			printt("Tiles draw through TileMap are NOT centered (their pivot is not at 64x64, but at 0x0)")
			printt("Sprites can have their pivot at 0x0 but this will cause problems later (you can do this by unchecking 'centered')")
			printt("--- Convert ---")
			printt("'local_to_map()' convert a local coordinate to grid coordinate (local coordinate == node position relative to parent)")
			printt("Map position -> grid coordinate", position, tilemap.local_to_map(position))
			printt("Map global position -> grid coordinate", global_position, tilemap.local_to_map(global_position))
			printt("TileMap position -> grid coordinate", tilemap.position, tilemap.local_to_map(tilemap.position))
			printt("TileMap global position -> grid coordinate", tilemap.global_position, tilemap.local_to_map(tilemap.global_position))
			printt("Sprite position -> grid coordinate", sprite.position, tilemap.local_to_map(sprite.position))
			printt("Sprite global position -> grid coordinate", sprite.global_position, tilemap.local_to_map(sprite.global_position))
			printt("--- to_local ---")
			printt("If you have a node X that is not a child of node Y but you want to know the position as if they were child and parent")
			printt("Sprite to_local should give the same value as position", sprite.position, tilemap.to_local(sprite.global_position))
			printt("Sprite 2 is not a child from TileMap, but you can get the position as if they were (it's 256x0 from TileMap center)", tilemap.to_local(sprite2.global_position))
			printt("Is not the same as using position and globla position", sprite2.position, sprite2.global_position)
			printt("--- to_global ---")
			printt("Given a child position, you can get the global position (not much different from using global_position)")
			printt("Sprite to_global should give the same value as global position", sprite.global_position, tilemap.to_global(sprite.position))
			printt("--- Convert 2 ---")
			printt("'map_to_local()' convert a grid coordinate to a local coordinate (so it's the position relative to TileMap center)")
			printt("But there is an important detail... the position will be the CENTER of the tile")
			printt("Using tiles with size 128x128, if you give the coordinate 0x0, the local coordinate will be 64x64")
			printt("Remember when i said that Sprite not centered would cause problems? If they are NOT centered, moving them to this position would make them not be in the tile center")
			printt("Showing that grid 0x0 will give position 64x64", tilemap.map_to_local(Vector2i(0,0)))
			printt("Showing that position 0x0, converted to grid and converted to position will give 64x64", tilemap.map_to_local(tilemap.local_to_map(Vector2(0, 0))))
			printt("--- After  ---")
			sprite.global_position = get_global_mouse_position()
