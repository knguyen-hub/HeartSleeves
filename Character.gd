extends CharacterBody2D

@onready var _animated_sprite = $TestCharacterSprite
var speed = 100
# Called when the node enters the scene tree for the first time.
func _ready():
	pass 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	#_animated_sprite.play("run")
	if Input.is_action_pressed("ui_down"):
		_animated_sprite.play("down")
		velocity.y = speed
		velocity.x = 0
	elif Input.is_action_pressed("ui_up"):
		_animated_sprite.play("up")
		velocity.y = - speed
		velocity.x = 0
	elif Input.is_action_pressed("ui_right"):
		_animated_sprite.play("sideways")
		_animated_sprite.flip_h = false
		velocity.x = speed
		velocity.y = 0
	elif Input.is_action_pressed("ui_left"):
		_animated_sprite.play("sideways")
		_animated_sprite.flip_h = true
		velocity.x = - speed
		velocity.y = 0
	else:
		velocity.x = 0
		velocity.y = 0
		_animated_sprite.play("idle")
		
	move_and_slide()
#hellooo :)) 

#PLEASE WORK t-t

func _unhandled_input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/main.dialogue"), "start")
		return
