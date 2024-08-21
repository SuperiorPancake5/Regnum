class_name Main
extends Node

@onready var _world_manager:WorldManager = %WorldManager
@onready var _save_manager:SaveManager = %SaveManager

#initialize config settings and display the menu (with these settings)
func _ready():
	#load default configuration settings and send to the world_root
	var _config = _save_manager.initialize_config() as Config
	#Configure the WorldManager and initialize the menu
	_world_manager._on_startup(_config)

#save game state when a child instructs main to do so
func _on_save_game():
	pass
#load saved game when a child instructs main to do so
func _on_load_game():
	pass
