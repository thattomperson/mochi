extends Node2D

## Mochi production logic for a single station.
## Produces mochi on a timer when a rabbit is assigned.

@export var station_index: int = 0

var _production_timer: float = 0.0
var _current_recipe: int = Globals.MochiType.PLAIN_WHITE


func _ready() -> void:
	GameManager.register_station(self)
	Events.mochi_produced.connect(_on_mochi_produced)


func _exit_tree() -> void:
	GameManager.unregister_station(self)


func get_station_data() -> Dictionary:
	if station_index < PlayerData.stations.size():
		return PlayerData.stations[station_index]
	return {}


func get_assigned_rabbits() -> Array:
	var station_data: Dictionary = get_station_data()
	if station_data.is_empty():
		return []
	var assigned: Array = []
	for rabbit in PlayerData.rabbits:
		if rabbit["station_id"] == station_data["id"]:
			assigned.append(rabbit)
	return assigned


func get_production_time() -> float:
	var recipe: Dictionary = GameData.get_recipe(_current_recipe)
	if recipe.is_empty():
		return 999.0
	var base_time: float = recipe["production_time"]
	# Apply speed upgrade multiplier
	var speed_level: int = PlayerData.get_upgrade_level("production_speed")
	var speed_mult: float = 1.0 + speed_level * GameData.get_upgrade("production_speed").get("effect_per_level", 0.0)
	return base_time / speed_mult


func tick() -> void:
	var rabbits: Array = get_assigned_rabbits()
	if rabbits.is_empty():
		return

	var production_time: float = get_production_time()
	_production_timer += Globals.TICK_INTERVAL * rabbits.size()

	if _production_timer >= production_time:
		var batches: int = int(_production_timer / production_time)
		_production_timer -= batches * production_time
		PlayerData.add_mochi(_current_recipe, batches)
		Events.mochi_produced.emit(_current_recipe, batches)


func _on_mochi_produced(_mochi_type: int, _amount: int) -> void:
	_update_display()


func get_mochi_per_second() -> float:
	var rabbits: Array = get_assigned_rabbits()
	if rabbits.is_empty():
		return 0.0
	var production_time: float = get_production_time()
	if production_time <= 0.0:
		return 0.0
	return rabbits.size() / production_time


func _update_display() -> void:
	if has_node("StationLabel"):
		var rabbits: Array = get_assigned_rabbits()
		var mps: float = get_mochi_per_second()
		$StationLabel.text = "Station %d\n%d rabbit(s)\n%.2f mochi/s" % [
			station_index + 1, rabbits.size(), mps
		]
