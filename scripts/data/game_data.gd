extends Node

## Static game data: mochi recipes, upgrade definitions, and milestone requirements.
## All balancing numbers live here so they're easy to tune.

# -- Mochi Recipes --
# Each recipe: { value, production_time, unlock_milestone }

var recipes: Dictionary = {
	Globals.MochiType.PLAIN_WHITE: {
		"name": "Plain White",
		"value": 1,
		"production_time": 3.0,
		"unlock_milestone": -1,  # Available from start
	},
	Globals.MochiType.STRAWBERRY: {
		"name": "Strawberry",
		"value": 3,
		"production_time": 5.0,
		"unlock_milestone": 3,  # Word of Mouth
	},
	Globals.MochiType.GREEN_TEA: {
		"name": "Green Tea",
		"value": 8,
		"production_time": 6.0,
		"unlock_milestone": 4,  # Market Booth
	},
	Globals.MochiType.RED_BEAN: {
		"name": "Red Bean",
		"value": 12,
		"production_time": 8.0,
		"unlock_milestone": 5,  # Bamboo Steamer
	},
	Globals.MochiType.SAKURA: {
		"name": "Sakura",
		"value": 20,
		"production_time": 10.0,
		"unlock_milestone": 6,  # Customer Favorites
	},
}

# -- Milestones --
# Each milestone: { name, cost, era, unlocks }

var milestones: Dictionary = {
	1: {
		"name": "Rickety Cart",
		"cost": 0,
		"era": Globals.Era.SIDEWALK_STAND,
		"description": "1 rabbit, 1 station, manual production & selling",
	},
	2: {
		"name": "A Proper Sign",
		"cost": 50,
		"era": Globals.Era.SIDEWALK_STAND,
		"description": "+1 rabbit slot, 10% faster sales",
	},
	3: {
		"name": "Word of Mouth",
		"cost": 500,
		"era": Globals.Era.SIDEWALK_STAND,
		"description": "Auto-sell unlocked, Strawberry mochi recipe",
	},
	4: {
		"name": "Market Booth",
		"cost": 2000,
		"era": Globals.Era.MARKET_STALL,
		"description": "New environment, +2 rabbit slots, 2nd station slot",
	},
	5: {
		"name": "Bamboo Steamer",
		"cost": 8000,
		"era": Globals.Era.MARKET_STALL,
		"description": "Steamer station, warm mochi types",
	},
	6: {
		"name": "Customer Favorites",
		"cost": 25000,
		"era": Globals.Era.MARKET_STALL,
		"description": "Customer preference system, tip mechanic",
	},
}

# -- Upgrades --
# Each upgrade: { name, base_cost, cost_multiplier, max_level, effect_per_level }

var upgrades: Dictionary = {
	"production_speed": {
		"name": "Faster Pounding",
		"base_cost": 25,
		"cost_multiplier": 1.5,
		"max_level": 10,
		"effect_per_level": 0.1,  # +10% speed per level
	},
	"mochi_value": {
		"name": "Quality Ingredients",
		"base_cost": 50,
		"cost_multiplier": 1.8,
		"max_level": 10,
		"effect_per_level": 0.15,  # +15% value per level
	},
}

# -- Rabbit Hiring Costs --

var rabbit_hire_costs: Array = [25, 75, 200]  # Era 1 scaling costs


func get_recipe(mochi_type: int) -> Dictionary:
	return recipes.get(mochi_type, {})


func get_milestone(milestone_id: int) -> Dictionary:
	return milestones.get(milestone_id, {})


func get_upgrade(upgrade_id: String) -> Dictionary:
	return upgrades.get(upgrade_id, {})


func get_upgrade_cost(upgrade_id: String, current_level: int) -> int:
	var upgrade: Dictionary = get_upgrade(upgrade_id)
	if upgrade.is_empty():
		return -1
	return int(upgrade["base_cost"] * pow(upgrade["cost_multiplier"], current_level))


func get_rabbit_hire_cost(owned_count: int) -> int:
	if owned_count < rabbit_hire_costs.size():
		return rabbit_hire_costs[owned_count]
	# Scale beyond the defined array
	return int(rabbit_hire_costs[-1] * pow(2.0, owned_count - rabbit_hire_costs.size() + 1))
