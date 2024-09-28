# PageContainer.gd
extends Control

@onready var vbox = $VBoxContainer  # Reference to the VBoxContainer

func _ready():

	# Loop through the titles and bodies
	for i in range(Global.titles.size()):
		create_page(Global.titles[i], Global.bodies[i])

func create_page(title: String, body: String):
	# Create a new Control for the page
	var page = Control.new()
	
	# Create a Label for the title
	var title_label = Label.new()
	title_label.text = title
	
	# Create a Label for the body
	var body_label = Label.new()
	body_label.text = body
	
	# Add the labels to the page
	page.add_child(title_label)
	page.add_child(body_label)

	# Add the page to the VBoxContainer
	vbox.add_child(page)
