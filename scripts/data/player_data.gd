extends Node

## Runtime player state. Tracks everything the player owns and has earned.
## Not persisted yet — save/load comes in Phase 3.
##
## Coins are stored as fixed-point ints: 100 units = 1 displayed coin.
## Use Globals.COIN_SCALE for conversions.

var coins: int = Globals.STARTING_COINS
var current_era: int = Globals.STARTING_ERA

# Mochi inventory: MochiType -> count
var mochi_inventory: Dictionary = {}

# Owned rabbits: Array of { id, role, station_id }
var rabbits: Array = []

# Owned stations: Array of { id, type, upgrade_level }
var stations: Array = []

# Unlocked recipes: Array of MochiType values
var unlocked_recipes: Array = [Globals.MochiType.PLAIN_WHITE]

# Upgrade levels: upgrade_id -> level
var upgrades: Dictionary = {}

# Reached milestones: Array of milestone IDs
var milestones_reached: Array = []

var _next_rabbit_id: int = 0
var _next_station_id: int = 0


func add_coins(amount: int) -> void:
	coins += amount
	Events.coins_changed.emit(coins)


func spend_coins(amount: int) -> bool:
	if coins < amount:
		return false
	coins -= amount
	Events.coins_changed.emit(coins)
	return true


func add_mochi(mochi_type: int, amount: int = 1) -> void:
	if mochi_inventory.has(mochi_type):
		mochi_inventory[mochi_type] += amount
	else:
		mochi_inventory[mochi_type] = amount


func remove_mochi(mochi_type: int, amount: int = 1) -> bool:
	if not mochi_inventory.has(mochi_type) or mochi_inventory[mochi_type] < amount:
		return false
	mochi_inventory[mochi_type] -= amount
	if mochi_inventory[mochi_type] <= 0:
		mochi_inventory.erase(mochi_type)
	return true


func get_mochi_count(mochi_type: int) -> int:
	return mochi_inventory.get(mochi_type, 0)


func get_total_mochi() -> int:
	var total: int = 0
	for count in mochi_inventory.values():
		total += count
	return total


func add_rabbit(role: int = Globals.RabbitRole.WORKER) -> int:
	var id: int = _next_rabbit_id
	_next_rabbit_id += 1
	rabbits.append({"id": id, "role": role, "station_id": -1})
	Events.rabbit_hired.emit(id)
	return id


func add_station(station_type: String) -> int:
	var id: int = _next_station_id
	_next_station_id += 1
	stations.append({"id": id, "type": station_type, "upgrade_level": 0})
	return id


func get_upgrade_level(upgrade_id: String) -> int:
	return upgrades.get(upgrade_id, 0)


func set_upgrade_level(upgrade_id: String, level: int) -> void:
	upgrades[upgrade_id] = level
	Events.upgrade_purchased.emit(upgrade_id, level)


func reset() -> void:
	coins = Globals.STARTING_COINS
	current_era = Globals.STARTING_ERA
	mochi_inventory.clear()
	rabbits.clear()
	stations.clear()
	unlocked_recipes = [Globals.MochiType.PLAIN_WHITE]
	upgrades.clear()
	milestones_reached.clear()
	_next_rabbit_id = 0
	_next_station_id = 0
