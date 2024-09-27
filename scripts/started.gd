extends Node2D

func _on_home_pressed():
	get_tree().change_scene_to_file("res://scenes/main screen.tscn")


func _on_reload_pressed():
	$Button2.set_visible(true)
	$"AI Thingy/aiprompt".set_visible(true)
	$"AI Thingy/aians".set_visible(false)
	$"AI Thingy/aiprompt".text = ""
	$"AI Thingy/aians".text = ""
