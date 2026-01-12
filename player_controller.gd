extends CharacterBody2D

const SPEED = 30

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	
	#get input
	var h_direction = Input.get_axis("left", "right")
	var v_direction = Input.get_axis("up", "down")
	
	print("test")
	
	#move horizontal
	if h_direction:
		position.x += h_direction * SPEED
	
	#move vertical
	if v_direction:
		position.y += v_direction * SPEED
