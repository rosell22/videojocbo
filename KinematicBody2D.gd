extends KinematicBody2D

var velocitat := Vector2(0,0)
var accelaracio:Vector2=Vector2(3,5)
export var velocitat_max=100
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _process(delta):
	velocitat=Vector2.ZERO
	velocitat.x=Input.get_action_strength("dreta")-Input.get_action_strength("esquerra")
	velocitat.y=Input.get_action_strength("abaix")-Input.get_action_strength("adalt")
	velocitat=velocitat.normalized()*velocitat_max
	move_and_slide(velocitat)
	if is_on_floor():
		$AnimatedSprite.play('quiet')
	if Input.is_action_pressed("dreta"):
		$AnimatedSprite.play('caminant') 
	if Input.is_action_just_pressed('adalt'):
		$AnimatedSprite.play('saltant')
	if Input.is_action_just_pressed('abaix'):
		$AnimatedSprite.play('saltant')
	
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
