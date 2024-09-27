extends Node

var api_key : String = "sk-5bdNI30J4Ovm8MzfJjOyPKgnukit_8yhCDZJ5hbUXhT3BlbkFJVGG4XxhuBVYZsgzkzxBXy2KzbpvUovdl4cB0FR09wA"
var url : String = "https://api.openai.com/v1/chat/completions"
var temp : float = 0.5
var max_tokens : int = 1024
var headers = ["Content-type: application/json", "Authorization: Bearer " + api_key]
var model : String = "gpt-3.5-turbo"
var messages = []
var request : HTTPRequest
var text : String = ""
var msg : String = ""
func _ready():
	request = HTTPRequest.new()
	add_child(request)
	request.connect("request_completed", _on_request_completed)
	
func dialogue_request(player_dialogue):
	messages.append({
		"role": "user",
		"content" : player_dialogue
		})
		
	var body = JSON.new().stringify({
		"messages" : messages,
		"temperature": temp,
		"max_tokens": max_tokens,
		"model" : model
	})
	
	var send_request = request.request(url, headers, HTTPClient.METHOD_POST, body)
	
	if send_request != OK:
		print("there was an error")
	
func _on_request_completed (result, response_code, headers, body):
	var json = JSON.new()
	json.parse(body.get_string_from_utf8())
	var response = json.get_data()
	var message = response["choices"][0]["message"]["content"]
	msg = message
	$aians.text = msg
	
func _on_button_2_pressed():
	text = $aiprompt.text
	dialogue_request(text)
	
	$"../Button2".set_visible(false)
	$aiprompt.set_visible(false)
	$aians.set_visible(true)

