extends Control


func update_labels():
	$title.text = Global.title
	$body.text = Global.body


func _ready():
	update_labels()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_back_pressed():
	get_tree().change_scene_to_file("res://app/homepage.tscn")
