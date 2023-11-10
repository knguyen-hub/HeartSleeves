extends CanvasLayer

@onready var textbox_container = $TextboxContainer
@onready var start_symbol = $TextboxContainer/MarginContainer/HBoxContainer/StartSymbol
@onready var text_message = $TextboxContainer/MarginContainer/HBoxContainer/TextMessage

enum State {
	READY,
	READING, 
	FINISHED
}

var current_state = State.READY
var text_queue = []
var next_text = text_queue.pop_front()

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Starting state: State.READY")
	hide_textMessage()
	add_text("This is a test!")

	
#func _process(_delta):
#	match current_state:
#		State.READY:
#			if !text_queue.is_empty():
#				add_text("Text")
#		State.READING:
#			if Input.is_action_just_pressed("ui_accept"):
#				text_message.visible_characters = 1.0
#				change_state(State.FINISHED)
#		State.FINISHED:
#			if Input.is_action_just_pressed("ui_accept"):
#				change_state(State.READY)
#				hide_textMessage()


func add_text(next_text):
	text_message.text = next_text
	show_textMessage()
	while text_message.visible_characters <= len(next_text):
			if text_message.visible_characters == -1:
				break
			text_message.visible_characters += 1
			await get_tree().create_timer(0.02).timeout
			if text_message.visible_characters > len(next_text[2]) || text_message.visible_characters == -1:
				current_state = State.FINISHED

#func queue_text(next_text):
#	text_queue.push_back(next_text)
	
func hide_textMessage():
	start_symbol.text = ""
	text_message.text = ""
	textbox_container.hide()
	
func show_textMessage():
	start_symbol.text ="*"
	textbox_container.show()
	
#func display_text():
#	text_message.text = next_text
#	while text_message.visible_characters <= len(next_text):
#			if text_message.visible_characters == -1:
#				break
#			text_message.visible_characters += 1
#			await get_tree().create_timer(0.02).timeout
#			if text_message.visible_characters > len(next_text[2]) || text_message.visible_characters == -1:
#				current_state = State.FINISHED
#	show_textMessage()
	
#func change_state(next_state):
#	current_state = next_state
#	match current_state:
#		State.READY:
#			print("Changing state to: State.READY")
#		State.READING:
#			print("Changing state to: State.READING")
#		State.FINISHED:
#			print("Changing state to :State.FINISHED")
#
#func _on_Tween_tween_completed(_object, _key):
#	change_state(State.FINISHED)
