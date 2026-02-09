extends Node

## Global constants and enums used across the game.

# -- Enums --

enum MochiType {
	PLAIN_WHITE,
	STRAWBERRY,
	GREEN_TEA,
	RED_BEAN,
	SAKURA,
}

enum RabbitRole {
	WORKER,
	SELLER,
}

enum Era {
	SIDEWALK_STAND,
	MARKET_STALL,
	MOCHI_SHOP,
	RESTAURANT,
	CORPORATION,
	SPACE_PROGRAM,
	MOON_BASE,
}

# -- Constants --

const TICK_INTERVAL: float = 1.0  # Seconds between production ticks
const SAVE_INTERVAL: float = 30.0  # Seconds between auto-saves
const STARTING_COINS: float = 0.0  # Used as Big.new(0)
const STARTING_ERA: int = Era.SIDEWALK_STAND
