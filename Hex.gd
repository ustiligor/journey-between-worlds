extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func make_ngon(n, center, radius):
	var points = PoolVector2Array()
	
	for i in range(n + 1):
		var angle = i * (2 * PI/n)
		var direction = Vector2(cos(angle), sin(angle)) * radius
		points.push_back(center + direction)
	return points
	
func draw_points(points, color):
	var colors = PoolColorArray([color])
	draw_polygon(points, colors)
	
func draw_grid(center, rings, space_radius, color):
	var points = PoolVector2Array()
	points.append(center)
	for ring in range(rings):
		pass
	

func _draw():
	var ngon = make_ngon(6, Vector2(500, 300), 200)
	draw_points(ngon, Color(0.9, 0.5, 0.3))
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
