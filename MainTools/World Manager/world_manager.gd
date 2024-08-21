class_name WorldManager
extends Node

@onready var _world_root = %WorldRoot

@export var manager_resolution:Vector2 = Vector2(1920, 1280)
@export var manager_camera_move_speed:int = 800
@export var manager_audio:int = 5
@export var manager_difficulty:int = 0

@export var is_loaded = false

func _on_startup(_config):
	if _config != null:
		manager_resolution = _config.config_resolution
		manager_camera_move_speed = _config.config_camera_move_speed
		manager_audio = _config.config_audio
		manager_difficulty = _config.config_difficulty
	else:
		push_warning("Warning! Config file empty or not found. Using default settings.")
		
	is_loaded = true
		
	_world_root._load_main_menu(manager_audio, manager_camera_move_speed, manager_difficulty, manager_resolution)
	
	
		
