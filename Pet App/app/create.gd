extends Control


var ButtonScene = preload("res://app/more.tscn")  # Adjust the path as necessary

# Function to create a button
func button_create(title: String, post_id: int):
	var button_instance = ButtonScene.instance()  # Create an instance of the button scene
	button_instance.init_button(title, post_id)  # Initialize the button with title and ID
	add_child(button_instance)  # Add the button to the current scene


func _on_back_pressed():
	get_tree().change_scene_to_file("res://app/forums.tscn")


func _on_submit_pressed():
	Global.title = $postTitleBox.text
	Global.body = $postBodyBox.text
	Global.add_post(Global.title, Global.body)
	
	Global.post.append(Global.title)
	
	button_create(Global.titles, 1)  # Creating a button for post ID 1
	get_tree().change_scene_to_file("res://app/posted.tscn")
