extends Node 




#func _unhandled_input2(_event: InputEvent) -> void:
#	if Input.is_action_just_pressed("ui_accept"):
#		DialogueManager.show_example_dialogue_balloon(load("res://test/visual_novel/test.dialogue"), "appears")
#		return
#extends ColorRect
#
#export var dialogPath = ""
#export(float) var textSpeed = 0.05
#
#var dialog 
#
#var phraseNum = 0
#var finished = false
#
#func _ready():
#	$Timer.wait_time = textSpeed
#	dialog = getDialog()
#	assert(dialog, "Dialog not found")
#	nextPhrase()
#
#func _process(_delta):
#	$Indicator.visible = finished
#	if Input.is_action_just_pressed("ui_accept"):
#		if finished:
#			nextPhrase()
#		else:
#			$Text.visible_characters = len($Text.text)
#
#func getDialog() -> Array:
#	var f = File.new()
#	assert(f.file_exists(dialogPath), "file path does not exist")
#	nextPhrase()
#
#
#	f.open(dialogPath, File.READ)
#	var json = f.get_as_text()
#
#	var output = parse_jason(json)
#
#	if typeof(output) == TYPE_ARRAY:
#		return output
#	else:
#		return []
## Called every frame. 'delta' is the elapsed time since the previous frame.
#
#
#func nextPhrase() -> void: 
#	if phraseNum >= len(dialog):
#		queue_free()
#		return
#
#	finished = false
#
#	$Name.bbcode_text = dialog[phrasenNum]["Name"]
#	$Text.bbcode_text = dialog[phraseNUm]["Text"]
#
#	$Text.visibile_characters = 0
#
#	while $Text.visible_characters < len($Text.text):
#		$Text.visible_character += 1
#
#		$Timer.start()
#		yield($Timer, "timeout")
#
#	finished = true
#	phraseNum += 1
#	return
#
#
#


