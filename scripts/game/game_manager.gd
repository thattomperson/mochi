extends Node

## Central game state and tick logic.
## Manages the idle production loop and offline progress calculation.

var tick_timer: Timer
var _stations: Array = []  # References to MochiStation nodes


func _ready() -> void:
	tick_timer = Timer.new()
	tick_timer.wait_time = Globals.TICK_INTERVAL
	tick_timer.autostart = true
	tick_timer.timeout.connect(_on_tick)
	add_child(tick_timer)


func register_station(station_node: Node) -> void:
	if station_node not in _stations:
		_stations.append(station_node)


func unregister_station(station_node: Node) -> void:
	_stations.erase(station_node)


func _on_tick() -> void:
	for station in _stations:
		if is_instance_valid(station) and station.has_method("tick"):
			station.tick()
	_try_auto_sell()


func _try_auto_sell() -> void:
	# Auto-sell is unlocked at milestone 3 (Word of Mouth)
	if 3 not in PlayerData.milestones_reached:
		return
	for mochi_type in PlayerData.mochi_inventory.keys():
		var count: int = PlayerData.mochi_inventory[mochi_type]
		if count <= 0:
			continue
		var recipe: Dictionary = GameData.get_recipe(mochi_type)
		if recipe.is_empty():
			continue
		var coins: int = get_mochi_sell_value(mochi_type) * count
		PlayerData.remove_mochi(mochi_type, count)
		PlayerData.add_coins(coins)
		Events.mochi_sold.emit(mochi_type, count, coins)


func sell_all_mochi() -> int:
	var total_coins: int = 0
	for mochi_type in PlayerData.mochi_inventory.keys():
		var count: int = PlayerData.mochi_inventory[mochi_type]
		if count <= 0:
			continue
		var coins: int = get_mochi_sell_value(mochi_type) * count
		PlayerData.remove_mochi(mochi_type, count)
		PlayerData.add_coins(coins)
		Events.mochi_sold.emit(mochi_type, count, coins)
		total_coins += coins
	return total_coins


func get_mochi_sell_value(mochi_type: int) -> int:
	var recipe: Dictionary = GameData.get_recipe(mochi_type)
	if recipe.is_empty():
		return 0
	var base_value: int = recipe["value"]
	var value_level: int = PlayerData.get_upgrade_level("mochi_value")
	var value_mult: float = 1.0 + value_level * GameData.get_upgrade("mochi_value").get("effect_per_level", 0.0)
	return int(base_value * value_mult)
