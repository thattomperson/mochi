extends Node

## Signal bus for decoupled cross-system communication.
## Scenes emit and connect to signals here instead of using direct node references.

# -- Production --
signal mochi_produced(mochi_type: int, amount: int)

# -- Sales --
signal mochi_sold(mochi_type: int, amount: int, coins_earned: Big)

# -- Economy --
signal coins_changed(new_total: Big)

# -- Upgrades --
signal upgrade_purchased(upgrade_id: String, new_level: int)

# -- Milestones --
signal milestone_reached(milestone_id: int)

# -- Rabbits --
signal rabbit_hired(rabbit_id: int)
