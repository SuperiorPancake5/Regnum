class_name SaveManager
extends Node

@onready var _config:Config = Config.new()

#report current config settings
func initialize_config():
	if _config:
		return _config
	else:
		push_error("Config resource not found or not initialized")
		return null
#change config settings
func set_config():
	pass
