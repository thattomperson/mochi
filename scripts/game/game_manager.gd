extends Node

## Central game state and tick logic.
## Manages the idle production loop and offline progress calculation.

var tick_timer: Timer


func _ready() -> void:
	tick_timer = Timer.new()
	tick_timer.wait_time = Globals.TICK_INTERVAL
	tick_timer.autostart = true
	tick_timer.timeout.connect(_on_tick)
	add_child(tick_timer)


func _on_tick() -> void:
	# Phase 1 will add production calculations here.
	# For each station: calculate mochi output based on assigned rabbits and upgrades.
	pass
