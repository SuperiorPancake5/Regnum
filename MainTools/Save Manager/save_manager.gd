class_name SaveManager
extends Node

@onready var _config:Config = %Config

#report current config settings
func initialize_config():
	if _config:
		return _config
	else:
		push_error("Config node not found or not initialized")
		return null
#change config settings
func set_config():
	pass
