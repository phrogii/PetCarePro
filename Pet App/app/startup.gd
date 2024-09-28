extends Control


func _on_create_new_pressed():
	get_tree().change_scene_to_file("res://app/createNew.tscn")


func _on_view_pressed():
	get_tree().change_scene_to_file("res://app/posts.tscn")


func _on_homepage_pressed():
	get_tree().change_scene_to_file("res://app/homepage.tscn")
