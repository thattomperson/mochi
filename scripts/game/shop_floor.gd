extends Node2D

## Shop floor management. The main game area where rabbits work at stations.


func _ready() -> void:
	# Give the player their starting station and rabbit
	if PlayerData.stations.is_empty():
		PlayerData.add_station("wooden_mortar")
	if PlayerData.rabbits.is_empty():
		var rabbit_id: int = PlayerData.add_rabbit(Globals.RabbitRole.WORKER)
		# Assign the first rabbit to the first station
		PlayerData.rabbits[0]["station_id"] = PlayerData.stations[0]["id"]
