class_name WorldRoot
extends Node2D

@export var root_audio:int = 5
@export var root_resolution:Vector2 = Vector2(1920, 1280)
@export var root_camera_move_speed:int = 800

@onready var _main_menu:MainMenu = %MainMenu

func _ready():
	pass
	
func _load_main_menu(manager_audio, manager_camera_move_speed, manager_difficulty, manager_resolution):
	if get_node("MainMenu") != null:
		_main_menu._on_create(manager_resolution)
		_main_menu.visible = true
		_load_next_level()
	else:
		for child in get_children():
			child.queue_free()
		add_child(_main_menu.instantiate())
		_main_menu._on_create(manager_resolution)
		_main_menu.visible = true
		
func _load_next_level():
	var level = load("res://MapLayout/Level_1/level_1.tscn")
	level = level.instantiate()
	add_child(level)
	for child in get_children():
		if child.name != level.name:
			child.queue_free()
		else:
			child.visible = true


