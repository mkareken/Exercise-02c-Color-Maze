extends Node2D

var grid = 64
var Obstacle = preload("res://Obstacle/Obstacle.tscn")

func _ready():
	var width = floor(get_viewport().size.x / grid)
	var height = floor(get_viewport().size.y / grid)
	for x in range(width):
		for y in range(height):
			if x == 1 and y == 1:
				pass
			else:
				var o = Obstacle.instance()
				o.position.x = x*grid
				o.position.y = y*grid
				add_child(o)


func _on_Reload_timeout():
	pass # Replace with function body.
