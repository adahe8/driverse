extends Node


@onready var timer = $Timer

var Pedestrian = preload("res://pedestrian.tscn")

func _ready():
	randomize()

func _on_Timer_timeout():
	spawn_pedestrian() # Replace with function body.

func spawn_pedestrian():
	var pedestrian = Pedestrian.instance()
	add_child(pedestrian)
	# Get a random number between 150 to 500
	pedestrian.position.y = randi()%400+150


func start():
	timer.start()

func stop():
	timer.stop()
