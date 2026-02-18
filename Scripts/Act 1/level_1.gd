extends Node2D

@onready var stars = $Stars
@onready var bg = $Act1Bg
@onready var camera = $CharacterBody2D
var stars_distance: int
var bg_distance: int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	stars_distance = stars.position.x - camera.position.x
	bg_distance = bg.position.x - camera.position.x
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	stars.position.x = camera.position.x + stars_distance
	bg.position.x = camera.position.x + bg_distance
	
