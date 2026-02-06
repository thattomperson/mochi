extends Node2D

## Rabbit worker behavior. Sits at a station and bounces while producing.

@export var rabbit_index: int = 0

var _bounce_time: float = 0.0
var _is_working: bool = false
var _base_y: float = 0.0


func _ready() -> void:
	_base_y = position.y
	Events.mochi_produced.connect(_on_mochi_produced)


func _process(delta: float) -> void:
	if not _is_working:
		return
	_bounce_time += delta * 8.0
	position.y = _base_y + sin(_bounce_time) * 4.0


func get_rabbit_data() -> Dictionary:
	if rabbit_index < PlayerData.rabbits.size():
		return PlayerData.rabbits[rabbit_index]
	return {}


func is_assigned() -> bool:
	var data: Dictionary = get_rabbit_data()
	return not data.is_empty() and data["station_id"] >= 0


func _on_mochi_produced(_mochi_type: int, _amount: int) -> void:
	if is_assigned():
		_is_working = true
