# script attached to the main node of the createPost scene
extends Node2D

@onready var post_title_box: LineEdit = $postTitleBox
@onready var submit_button: Button = $submit

func _ready():
	# Connect the button's pressed signal to the _on_submit_button_pressed function
	submit_button.pressed.connect(_on_submit_pressed)

# func _on_submit_button_pressed():
		# Update the global variable with the text from postTitleBox
# 	Global.post_title = post_title_box.text
	# Optionally, you can print or use the value for something else
# 	print("Post Title Submitted: ", Global.post_title)



func _on_submit_pressed():
	Global.post_title = post_title_box.text
	print("Post Title Submitted: ", Global.post_title)
	get_tree().change_scene_to_file("res://app/posted.tscn")


func _on_back_pressed():
	get_tree().change_scene_to_file("res://app/forums.tscn")
