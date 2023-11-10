extends Node2D


# Called when the node enters the scene tree for the first time.
func _unhandled_input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		DialogueManager.show_example_dialogue_balloon(load("res://test/visual_novel/test.dialogue"), "start")
		return




#func _unhandled_input2(_event: InputEvent) -> void:
#	if Input.is_action_just_pressed("ui_accept"):
#		DialogueManager.show_example_dialogue_balloon(load("res://test/visual_novel/test.dialogue"), "choicedos")
#		return
