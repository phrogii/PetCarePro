extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_go_back_pressed():
	get_tree().change_scene_to_file("res://app/homepage.tscn")


func _on_submit_pressed():
	# Change the label text to the text from the ReplyBox
	$reply.text = $ReplyBox.text
	
	# Optionally clear the ReplyBox after submission
	$ReplyBox.clear()
