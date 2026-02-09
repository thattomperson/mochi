extends CanvasLayer

## Heads-up display showing coins, mochi count, and production info.
## Also contains the sell button and upgrade/hire panels.

@onready var coins_label: Label = $TopBar/CoinsLabel
@onready var mochi_label: Label = $TopBar/MochiLabel
@onready var sell_button: Button = $BottomBar/SellButton
@onready var upgrade_panel: VBoxContainer = $SidePanel/UpgradePanel
@onready var hire_button: Button = $SidePanel/HireButton


func _ready() -> void:
	Events.coins_changed.connect(_on_coins_changed)
	Events.mochi_produced.connect(_on_mochi_produced)
	Events.mochi_sold.connect(_on_mochi_sold)
	Events.upgrade_purchased.connect(_on_upgrade_purchased)
	Events.rabbit_hired.connect(_on_rabbit_hired)
	sell_button.pressed.connect(_on_sell_pressed)
	hire_button.pressed.connect(_on_hire_pressed)
	_setup_upgrade_buttons()
	_update_all()


func _on_coins_changed(_new_total: float) -> void:
	_update_all()


func _on_mochi_produced(_type: int, _amount: int) -> void:
	_update_mochi_display()
	_update_sell_button()


func _on_mochi_sold(_type: int, _amount: int, _coins: float) -> void:
	_update_all()


func _on_upgrade_purchased(_id: String, _level: int) -> void:
	_update_all()


func _on_rabbit_hired(_id: int) -> void:
	_update_all()


func _on_sell_pressed() -> void:
	GameManager.sell_all_mochi()


func _on_hire_pressed() -> void:
	var cost: float = float(GameData.get_rabbit_hire_cost(PlayerData.rabbits.size()))
	if PlayerData.spend_coins(cost):
		var rabbit_id: int = PlayerData.add_rabbit(Globals.RabbitRole.WORKER)
		# Assign to first station by default
		if not PlayerData.stations.is_empty():
			for rabbit in PlayerData.rabbits:
				if rabbit["id"] == rabbit_id:
					rabbit["station_id"] = PlayerData.stations[0]["id"]
					break


func _setup_upgrade_buttons() -> void:
	for upgrade_id in GameData.upgrades.keys():
		var btn := Button.new()
		btn.name = "Upgrade_" + upgrade_id
		btn.pressed.connect(_on_upgrade_pressed.bind(upgrade_id))
		upgrade_panel.add_child(btn)
	_update_upgrade_buttons()


func _on_upgrade_pressed(upgrade_id: String) -> void:
	var current_level: int = PlayerData.get_upgrade_level(upgrade_id)
	var upgrade: Dictionary = GameData.get_upgrade(upgrade_id)
	if upgrade.is_empty():
		return
	if current_level >= upgrade["max_level"]:
		return
	var cost: float = float(GameData.get_upgrade_cost(upgrade_id, current_level))
	if PlayerData.spend_coins(cost):
		PlayerData.set_upgrade_level(upgrade_id, current_level + 1)


func _update_all() -> void:
	_update_coins_display()
	_update_mochi_display()
	_update_sell_button()
	_update_upgrade_buttons()
	_update_hire_button()


func _update_coins_display() -> void:
	coins_label.text = "Coins: %.2f" % PlayerData.coins


func _update_mochi_display() -> void:
	var total: int = PlayerData.get_total_mochi()
	if total > 0:
		var parts: Array = []
		for mochi_type in PlayerData.mochi_inventory.keys():
			var recipe: Dictionary = GameData.get_recipe(mochi_type)
			var mochi_name: String = recipe.get("name", "???")
			var sell_value: float = GameManager.get_mochi_sell_value(mochi_type)
			parts.append("%s: %d (%.2f ea)" % [mochi_name, PlayerData.mochi_inventory[mochi_type], sell_value])
		mochi_label.text = "Mochi: " + ", ".join(parts)
	else:
		mochi_label.text = "Mochi: 0"


func _update_sell_button() -> void:
	var total: int = PlayerData.get_total_mochi()
	var has_auto_sell: bool = 3 in PlayerData.milestones_reached
	sell_button.visible = not has_auto_sell
	if total > 0:
		var total_value: float = 0.0
		for mochi_type in PlayerData.mochi_inventory.keys():
			var count: int = PlayerData.mochi_inventory[mochi_type]
			total_value += count * GameManager.get_mochi_sell_value(mochi_type)
		sell_button.text = "Sell All (%d - %.2f coins)" % [total, total_value]
		sell_button.disabled = false
	else:
		sell_button.text = "Sell (nothing)"
		sell_button.disabled = true


func _update_upgrade_buttons() -> void:
	for upgrade_id in GameData.upgrades.keys():
		var btn_name: String = "Upgrade_" + upgrade_id
		if not upgrade_panel.has_node(btn_name):
			continue
		var btn: Button = upgrade_panel.get_node(btn_name)
		var upgrade: Dictionary = GameData.get_upgrade(upgrade_id)
		var current_level: int = PlayerData.get_upgrade_level(upgrade_id)
		if current_level >= upgrade["max_level"]:
			btn.text = "%s (MAX)" % upgrade["name"]
			btn.disabled = true
		else:
			var cost: int = GameData.get_upgrade_cost(upgrade_id, current_level)
			btn.text = "%s Lv%d (%.0f coins)" % [upgrade["name"], current_level + 1, float(cost)]
			btn.disabled = PlayerData.coins < cost


func _update_hire_button() -> void:
	var cost: float = float(GameData.get_rabbit_hire_cost(PlayerData.rabbits.size()))
	hire_button.text = "Hire Rabbit (%.0f coins)" % cost
	hire_button.disabled = PlayerData.coins < cost
