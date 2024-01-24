extends Camera2D

var camera_speed = 0.01

func _process(delta):
	# Get a vector from the camera's center point to the mouse
	var cam_to_mouse = get_global_mouse_position() - global_position
	
	# If the length of that vector is above a certain value, 
	# move the camera's position towards that vector on the X axis
	if cam_to_mouse.length() > 200:
		global_position.x += cam_to_mouse.x * camera_speed
		
	# Make sure the camera's x position stays between a min and max value
	if global_position.x < -125:
		global_position.x = -125
	if global_position.x > 125:
		global_position.x = 125
