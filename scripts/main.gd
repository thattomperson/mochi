extends Node2D

## Root scene controller. Sets up the initial game state.


func _ready() -> void:
	# Milestone 1 (Rickety Cart) is granted at start
	if 1 not in PlayerData.milestones_reached:
		PlayerData.milestones_reached.append(1)
		Events.milestone_reached.emit(1)
