extends Node2D

var api_key : String = "sk-5bdNI30J4Ovm8MzfJjOyPKgnukit_8yhCDZJ5hbUXhT3BlbkFJVGG4XxhuBVYZsgzkzxBXy2KzbpvUovdl4cB0FR09wA"
var url : String = "https://api.openai.com/v1/chat/completions"
var temperature : float = 0.5
var max_tokens : int = 1024
var headers = ["Content-type: application/json", "Authorization: Bearer " + api_key]
var model : String = ""
var messages = []
var request = HTTPRequest

# Called when the node enters the scene tree for the first time.
func _ready ():
	request = HTTPRequest.new()
	add_child(request)
	request.connect("request_completed", _on_request_completed)
	
func dialogue_request (player_dialogue):
	
func _on_request_completed (result, response_code, headers, body):
	pass
