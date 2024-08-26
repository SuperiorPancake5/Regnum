class_name SavedGame
extends Resource

@export var player_location:Vector2 = Vector2(0,0)
@export var player_items = {
	"slot1": "",
	"slot2": "",
	"slot3": "",
	"slot4": "",
	"slot5": "",
	"slot6": "",
	"slot7": "",
	"slot8": ""
}
@export var player_experience = 0
@export var player_faction_alignment = {
	"Archaea": [0,0,0],
	"Salmist": [0,0,0],
	"Chorestia": [0,0,0],
	"Velhammer": [0,0,0]
}
@export var player_resources = {
	"lumber": 0,
	"ream_steel": 0,
	"flurium": 0
}
@export var global_accomplished_missions = {}
@export var global_time = 0
