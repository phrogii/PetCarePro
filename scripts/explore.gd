extends Node2D

func _ready():
	$Meshes/cat.visible = true
	$Meshes/dog.visible = true
	$Meshes/Label5.visible = true
	$Meshes/Cat2.visible = false
	$"Meshes/cat button".visible = false
	$Meshes/Dog2.visible = false
	$"Meshes/dog button".visible = false
	$Meshes/oldCat2.visible = false
	$Meshes/oldDog2.visible = false
	$Meshes/youngcatbutton.visible = false
	$Meshes/youngdogbutton.visible = false

func _on_home_pressed():
	get_tree().change_scene_to_file("res://scenes/main screen.tscn")


func _on_cat_pressed():
	$Meshes/cat.visible = false
	$Meshes/dog.visible = false
	$Meshes/Label5.visible = false
	$Meshes/Cat2.visible = true
	$"Meshes/cat button".visible = true

func _on_dog_button_pressed():
	$Meshes/oldDog2.visible = true
	$Meshes/Dog2.visible = false
	$"Meshes/dog button".visible = false
	$Meshes/youngdogbutton.visible = true


func _on_cat_button_pressed():
	$Meshes/oldCat2.visible = true
	$Meshes/Cat2.visible = false
	$"Meshes/cat button".visible = false
	$Meshes/youngcatbutton.visible = true



func _on_youngdogbutton_pressed():
	$Meshes/oldDog2.visible = false
	$Meshes/Dog2.visible = true
	$"Meshes/dog button".visible = true
	$Meshes/youngdogbutton.visible = false



func _on_youngcatbutton_pressed():
	$Meshes/oldCat2.visible = false
	$Meshes/Cat2.visible = true
	$"Meshes/cat button".visible = true
	$Meshes/youngcatbutton.visible = false



func _on_dog_pressed():
	$Meshes/cat.visible = false
	$Meshes/dog.visible = false
	$Meshes/Label5.visible = false
	$Meshes/Dog2.visible = true
	$"Meshes/dog button".visible = true
