extends Node2D

func _on_home_pressed():
	get_tree().change_scene_to_file("res://scenes/main screen.tscn")

var msg : String

func _ready():
	var peer = ENetMultiplayerPeer.new()
	peer.create_server(1027)
	get_tree().set_multiplayer(SceneMultiplayer.new(), self.get_path())
	multiplayer.multiplayer_peer = peer
	$Meshes/connect.visible = true
	$Meshes/post.visible = false
	$"Meshes/no one has posted".visible = true
	$Meshes/posts.visible = false
	

func _on_connect_pressed():
	var peer = ENetMultiplayerPeer.new()
	peer.create_client("127.0.0.1", 1027)
	get_tree().set_multiplayer(SceneMultiplayer.new(), self.get_path())
	multiplayer.multiplayer_peer = peer
	joined()

func joined():
	$Meshes/connect.visible = false
	$Meshes/post.visible = true
	$"Meshes/no one has posted".visible = false
	$Meshes/posts.visible = true


func _on_post_pressed():
	rpc("msg_rpc", $info.text).

@rpc ("any_peer", "call_local")
func msg_rpc(data):
	$Posts.text += str(data, "\n")
