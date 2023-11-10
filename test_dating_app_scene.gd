extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_new_left_barrier_body_entered(body):
	if body.is_in_group("CharacterGroup"):
		get_tree().change_scene_to_file("res://Jaime_dating_app.tscn")


func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		DialogueManager.show_example_dialogue_balloon(load("res://dating_app_dialogue/alex_dialogue.dialogue"), "alex_start")
		return
