extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_notif("a")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func add_notif(image):
	var new_image_sprite: Sprite2D = Sprite2D.new() 
	new_image_sprite.texture = load("res://icon.svg")
	add_child(new_image_sprite)
	await get_tree().create_timer(2).timeout
	new_image_sprite.queue_free()
