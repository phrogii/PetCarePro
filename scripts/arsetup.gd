func _ready():
	var interface = XRServer.find_interface("name of the plugin")
	if interface and interface.initialize():
		# turn the main viewport into an ARVR viewport:
		get_viewport().arvr = true

		# turn off v-sync
		OS.vsync_enabled = false

		# put our physics in sync with our expected frame rate:
		Engine.iterations_per_second= 90
