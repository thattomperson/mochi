# Rabbit Mochi - Idle Game

## Project Overview

Rabbit Mochi is a 2D idle game built with Godot 4 and GDScript. Players manage a mochi shop run by rabbits. Rabbits produce mochi, which is sold for coins. Coins are reinvested to hire more rabbits, unlock new mochi recipes, and upgrade production — creating a satisfying idle loop.

## Core Gameplay Loop

1. **Produce** — Rabbits pound rice into mochi on a timer
2. **Sell** — Finished mochi is sold automatically (or manually for bonuses)
3. **Earn** — Coins accumulate from sales
4. **Upgrade** — Spend coins on faster rabbits, new recipes, better equipment
5. **Expand** — Unlock new shop areas, rabbit types, and premium mochi varieties

## Tech Stack

- **Engine**: Godot 4.x
- **Language**: GDScript
- **Rendering**: 2D
- **Art style**: Simple pixel art / cute flat graphics

## Project Structure

```
mochi/
├── project.godot              # Godot project file
├── CLAUDE.md                  # This file
├── export_presets.cfg         # Export configuration (generated)
│
├── scenes/                    # All .tscn scene files
│   ├── main.tscn              # Root scene / entry point
│   ├── ui/                    # UI scenes
│   │   ├── hud.tscn           # Heads-up display (coins, mochi count)
│   │   ├── shop_menu.tscn     # Upgrade/purchase menu
│   │   └── settings_menu.tscn
│   ├── game/                  # Gameplay scenes
│   │   ├── shop_floor.tscn    # Main game area where rabbits work
│   │   ├── rabbit.tscn        # Individual rabbit worker
│   │   └── mochi_station.tscn # Production station
│   └── effects/               # Visual effects
│       └── coin_popup.tscn    # Floating "+10 coins" text
│
├── scripts/                   # All .gd script files
│   ├── main.gd                # Main scene controller
│   ├── game/
│   │   ├── game_manager.gd    # Central game state and tick logic
│   │   ├── rabbit.gd          # Rabbit behavior and animation
│   │   ├── mochi_station.gd   # Mochi production logic
│   │   └── shop_floor.gd      # Shop floor management
│   ├── ui/
│   │   ├── hud.gd             # HUD updates (coins, mochi display)
│   │   ├── shop_menu.gd       # Purchase/upgrade handling
│   │   └── settings_menu.gd
│   ├── data/
│   │   ├── save_manager.gd    # Save/load game state to disk
│   │   ├── game_data.gd       # Static data: recipes, upgrades, costs
│   │   └── player_data.gd     # Runtime player state (coins, inventory)
│   └── autoload/
│       ├── globals.gd         # Global constants and enums
│       └── events.gd          # Signal bus for decoupled communication
│
├── assets/                    # All non-code resources
│   ├── sprites/               # 2D art
│   │   ├── rabbits/           # Rabbit spritesheets and animations
│   │   ├── mochi/             # Mochi item sprites
│   │   ├── stations/          # Equipment / workstation art
│   │   └── ui/                # UI icons, buttons, frames
│   ├── audio/
│   │   ├── sfx/               # Sound effects
│   │   └── music/             # Background music
│   └── fonts/                 # Custom fonts
│
└── resources/                 # Godot .tres / .res resource files
    ├── themes/                # UI themes
    │   └── default_theme.tres
    └── data/                  # Data resources (recipes, upgrade tables)
        ├── recipes.tres
        └── upgrades.tres
```

## Architecture Notes

### Autoloads (Singletons)

Registered in `project.godot` under `[autoload]`:

- **Globals** (`autoload/globals.gd`) — Constants, enums, config values
- **Events** (`autoload/events.gd`) — Signal bus pattern. Scenes emit and connect to signals here to stay decoupled
- **GameManager** (`game/game_manager.gd`) — Manages the idle tick loop, production calculations, and offline progress

### Signal Bus Pattern

Use `Events` autoload for cross-system communication instead of direct node references:

```gdscript
# Emitting
Events.mochi_produced.emit(mochi_type, amount)

# Listening
Events.mochi_produced.connect(_on_mochi_produced)
```

### Save System

- Save to `user://save_data.json`
- Save triggers: on purchase, periodically (every 30s), and on quit
- Offline progress calculated on load by comparing timestamps

### Idle Mechanics

- Production runs on a tick timer (e.g. every 1 second)
- Each tick: for each station, calculate mochi output based on assigned rabbits and upgrades
- Offline earnings computed as `elapsed_seconds * production_per_second` on game load

## Development Conventions

- One script per scene node where behavior is needed
- Use `@export` vars for tunable values (speeds, costs, multipliers)
- Use typed variables and return types: `var speed: float = 1.0`
- Prefer signals over direct method calls between systems
- Scene tree structure should mirror the logical hierarchy
- Resource files (`.tres`) for static data tables (recipes, upgrade costs)
- Keep `_process()` and `_physics_process()` lightweight; use timers for periodic work

## Build & Run

```bash
# Open project in Godot 4 editor
godot --editor --path .

# Run the game from CLI
godot --path .

# Export (after configuring export presets)
godot --headless --export-release "Linux/X11" build/mochi.x86_64
```
