extends KinematicBody2D
var gravetat= 5000
var velocitat := Vector2(0,0)
var accelaracio:Vector2=Vector2(3,5)
export var velocitat_max=400
var contadormonedas=0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _process(delta):
	velocitat=Vector2.ZERO
	velocitat.x= 0
	velocitat.x=Input.get_action_strength("dreta")-Input.get_action_strength("esquerra")
	velocitat.y=Input.get_action_strength("abaix")-Input.get_action_strength("adalt")
	velocitat=velocitat.normalized()*velocitat_max


	velocitat.y +=gravetat*delta
	velocitat= move_and_slide(velocitat, Vector2.UP)
	
	
	
	
	
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



