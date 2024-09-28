extends LineEdit


func _ready():
	pass

func _process(delta):
	pass

func _on_LineEdit_text_entered(new_text):
	print("Entered Pressed!")


func _on_LineEdit_text_changed(new_text):
	print("Text changed!")
	print($LineEdit.text)


func _on_Button_button_down():
	var text = int($LineEdit.text)
	if text != 0:
		print("The number ", text, " was entered.")
		$LineEdit.hide()
		#Do somethihng with this number
	else:
		$LineEdit/error.show()
