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
func _save_game():
	var saved_game:SavedGame = SavedGame.new()
	#saved_game.player_location = WorldRoot
	
	
	ResourceSaver.save(saved_game, "user://savegame.tres")
	pass
#load saved game when a child instructs main to do so
func _load_game():
	var saved_game:SavedGame = load("user://savegame.tres") as SavedGame
	pass
