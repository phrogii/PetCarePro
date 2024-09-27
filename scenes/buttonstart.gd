extends Node2D


func _on_explore_pressed():
	get_tree().change_scene_to_file("res://scenes/explore.tscn")


func _on_news_pressed():
	get_tree().change_scene_to_file("res://scenes/news.tscn")




func _on_started_pressed():
	get_tree().change_scene_to_file("res://scenes/started.tscn")
