# Rabbit Mochi — Development Roadmap

Phased development plan. Each milestone is scoped to be completable in a single Claude Code session. Milestones within a phase should be done in order. Phases build on each other.

---

## Phase 0: Project Skeleton

Get the Godot project runnable with the foundational architecture in place. No gameplay yet — just the bones.

### 0.1 — Godot project setup
Create `project.godot`, directory structure, and a minimal `main.tscn` that shows a "Hello Mochi" label. Confirm the project runs with `godot --path .`

### 0.2 — Autoloads and signal bus
Create `Globals`, `Events`, and `GameManager` autoloads. Register them in `project.godot`. Events should define the core signals (`mochi_produced`, `mochi_sold`, `coins_changed`, `upgrade_purchased`). GameManager should have an empty tick timer.

### 0.3 — Player data and game data
Create `player_data.gd` (runtime state: coins, mochi inventory, owned rabbits, owned stations, unlocked recipes) and `game_data.gd` (static data loader for recipes and upgrades). Use simple dictionaries/resources for now — no save/load yet.

---

## Phase 1: Core Idle Loop (MVP)

The minimum viable idle game. One rabbit, one station, mochi goes up, coins go up, buy an upgrade, numbers go faster. Placeholder art is fine — colored rectangles and labels.

### 1.1 — Shop floor and mochi station
Create `shop_floor.tscn` as the main game scene. Add a single `mochi_station.tscn` — a clickable area that produces mochi on a timer. Wire it to GameManager's tick. Display mochi count on screen with a temporary label.

### 1.2 — Rabbit worker
Create `rabbit.tscn` — a simple sprite/placeholder that sits at a station and animates (bounces) while producing. Assign the rabbit to the station. Production only happens when a rabbit is assigned.

### 1.3 — Selling and coins
Implement the sell mechanic. Mochi can be sold (auto-sell on a timer or manual tap). Coins accumulate. Show coin count in a basic HUD. Fire `Events.mochi_sold` and `Events.coins_changed` signals.

### 1.4 — Upgrade system foundation
Build a simple upgrade panel. Spend coins to: (a) speed up production, (b) increase mochi value. Store upgrade levels in player data. Apply multipliers in GameManager's tick calculation.

### 1.5 — Buy a second rabbit
Add a "Hire Rabbit" button. Spend coins to add a rabbit to the station (or a second station). More rabbits = faster production. Scaling hire cost.

**Milestone check**: At this point you should have a playable idle loop — produce, sell, earn, upgrade, hire.

---

## Phase 2: Era 1 Complete (Sidewalk Stand)

Flesh out the starting era with proper UI, all Era 1 content, and visual polish.

### 2.1 — HUD and coin popups
Build `hud.tscn` with coin counter, mochi counter, and production rate display. Add `coin_popup.tscn` — floating "+X coins" text that rises and fades when mochi is sold.

### 2.2 — Era 1 mochi recipes
Add Plain White and Strawberry mochi as distinct types with different values and production times. Show them in the HUD and station. Player unlocks Strawberry at Milestone 3 (Word of Mouth).

### 2.3 — Milestone system
Build a milestone tracker. Define Era 1's three milestones (Rickety Cart, A Proper Sign, Word of Mouth) with unlock conditions (coin thresholds). Show progress in UI. Trigger unlocks (auto-sell, new recipe, rabbit slots) when milestones are reached.

### 2.4 — Station upgrades
Implement the Upgraded Mortar station upgrade. Show a station upgrade button when affordable. Visually change the station appearance (swap placeholder sprite/color). Apply the speed bonus.

### 2.5 — Sidewalk Stand environment art
Replace all placeholders with actual pixel art or flat graphics for the sidewalk scene: wooden cart, street background, rabbit sprite with idle/pounding animations, mochi items. This is the first "real-looking" scene.

---

## Phase 3: Save System & Offline Progress

Persistence layer so the game survives between sessions.

### 3.1 — Save and load
Implement `save_manager.gd`. Save player data to `user://save_data.json`. Auto-save every 30 seconds and on quit. Load on startup. Cover: coins, mochi inventory, owned rabbits, upgrade levels, current era/milestone.

### 3.2 — Offline progress
On load, calculate elapsed time since last save. Award offline earnings based on `elapsed_seconds * production_per_second`. Show a "Welcome back!" popup with earnings summary.

---

## Phase 4: Era 2 (Market Stall)

New environment, new mechanics, more depth.

### 4.1 — Era transition system
Build the system for switching between eras. When Era 2 unlock conditions are met (2000 coins + Milestone 3), show an "Expand!" button. Transition to the market stall environment. Preserve player data across the transition.

### 4.2 — Multiple stations
Allow the shop floor to hold multiple stations. Add a second station slot in Era 2. Player can buy and place a Bamboo Steamer. Each station operates independently with its own rabbit assignments.

### 4.3 — Seller rabbit role
Introduce the Seller role. When hiring, let the player choose Worker or Seller. Sellers speed up auto-sell and generate tips (bonus coins). Show role icons on rabbit sprites.

### 4.4 — Customer preferences and tips
Add a customer system — visual customers approach the stall. Each has a preferred mochi type. Matching preference = tip bonus. Display customer wants with a thought bubble.

### 4.5 — Era 2 recipes, milestones, and art
Add Green Tea, Red Bean, Sakura mochi types. Define Era 2 milestones (Market Booth, Bamboo Steamer, Customer Favorites). Create market stall environment art.

---

## Phase 5: Era 3 (Mochi Shop)

Storefront with interior, new mechanics layer.

### 5.1 — Shop interior environment
New scene: indoor shop with counter, display case, kitchen window. Transition from market stall when Era 3 unlocks.

### 5.2 — Shop decorations
Purchasable decoration items (lucky cat, flower vase, etc.) that grant passive bonuses. Simple grid or placement system. Bonuses shown in tooltips.

### 5.3 — Special orders
Timed challenge system: "Produce X of Y mochi in Z minutes." Random generation from available recipes. Bonus coin reward on completion. Failure has no penalty.

### 5.4 — Boxed sets and packaging
Packaging station produces bundled mochi sets worth more than individual items. New UI for selecting which mochi go into a box.

### 5.5 — Decorator role and Era 3 content
Decorator rabbit role (presentation bonus to mochi value). Add Era 3 recipes (Mango, Black Sesame, Chestnut, Seasonal Special). Define milestones. Create shop interior art.

---

## Phase 6: Era 4 (Restaurant)

Upscale dining, gourmet content, deeper rabbit management.

### 6.1 — Restaurant environment and menu system
New restaurant scene. Implement the menu system — combine mochi into multi-course menus for multiplied value. Menu builder UI.

### 6.2 — VIP customers and catering
VIP customers who pay 10x for specific menus. Catering contracts — accept a job, it completes passively over time for guaranteed income.

### 6.3 — Rabbit leveling and training
Rabbits gain XP from working. Level-up improves their role bonuses. Show XP bar and level on rabbit info panel. Add Chef and Manager roles.

### 6.4 — Era 4 recipes, milestones, and art
Truffle, Matcha Royale, Gold Leaf, Chef's Special, Catering Platter mochi types. Restaurant milestones. Environment art.

---

## Phase 7: Era 5 (Corporation) & Prestige

Factory scale and the first prestige loop.

### 7.1 — Factory environment and conveyor visuals
Factory scene with conveyor belts. Assembly line station that auto-produces at high speed. Visual mochi flowing on belts.

### 7.2 — Export routes and franchises
World map UI. Set up export routes to regions for passive income. Franchise system: open simplified satellite locations.

### 7.3 — Research tree
Tech tree UI. Spend coins + time to unlock permanent boosts. Research feeds into space era prerequisites.

### 7.4 — Prestige: Franchise Buyout
Implement the prestige reset. Calculate Star Points from lifetime earnings. Star Points skill tree with permanent bonuses. Reset flow: confirmation, animation, restart with bonuses applied.

### 7.5 — Era 5 content and balance pass
Scientist and Executive roles. Era 5 recipes and milestones. Factory art. Balance the economy across Eras 1-5 so prestige feels rewarding. Tune costs, production rates, and Star Point yields.

---

## Phase 8: Era 6 (Space Program)

R&D, rockets, and the journey to the moon.

### 8.1 — Space lab environment and Stardust
New lab scene. Introduce Stardust currency and its earn/spend loops. Zero-G chamber station with floating mochi visuals.

### 8.2 — Astronaut training and rocket construction
Training facility that converts workers into astronauts over time. Rocket building: 5-stage construction project with visual progress on the launch pad.

### 8.3 — Launch event
Scripted launch sequence when the rocket is complete. Cinematic-lite animation: countdown, launch, rabbits cheering, travel to the moon.

### 8.4 — Era 6 recipes, milestones, and art
Freeze-Dried, Zero-G, Rocket Fuel, Moonstone mochi. Space program milestones. Lab and launch pad art.

---

## Phase 9: Era 7 (Moon Base & Alien Market)

The endgame. Lunar colony, aliens, cosmic mochi, infinite scaling.

### 9.1 — Moon colony environment
Lunar surface scene with dome habitat. Moon-specific stations (Lunar Kitchen, Moon Rice Paddy). Low-gravity rabbit movement.

### 9.2 — Alien customers and trade
Alien species with unique preferences and visual designs. Space station marketplace scene. Alien trade routes for passive Stardust.

### 9.3 — Cosmic mochi and endgame scaling
Cosmic recipe tier. The Mochi Singularity Engine with value that scales over real time. Infinite progression system.

### 9.4 — Big Bang prestige
Second prestige tier. Reset everything (including Stardust) for Cosmic Shards. Multiplicative permanent bonus. This is the final loop.

### 9.5 — Era 7 art and endgame polish
Moon, space station, and alien art. Endgame UI polish. Achievement/collection screen showing all mochi ever made.

---

## Phase 10: Polish & Ship

### 10.1 — Audio
Background music per era (7 tracks). SFX for: mochi pounding, selling, coin pickup, upgrade purchase, milestone unlock, prestige, rocket launch.

### 10.2 — Settings menu
Volume controls, notification preferences, manual save button, reset game button with confirmation.

### 10.3 — Onboarding and tutorials
First-time player tutorial: guided first mochi production, first sale, first upgrade. Non-intrusive — highlight UI elements with arrows, dismiss on tap.

### 10.4 — Balance and playtesting
Full playthrough from Era 1 to Era 7. Tune all costs, production rates, prestige yields. Ensure no dead spots where progress stalls. Verify offline earnings feel fair.

### 10.5 — Export and distribution
Configure export presets for target platforms. Build release binaries. Test on target devices.

---

## Summary

| Phase | Focus | Milestones |
|-------|-------|------------|
| 0 | Project skeleton | 3 |
| 1 | Core idle loop (MVP) | 5 |
| 2 | Era 1 complete | 5 |
| 3 | Save system | 2 |
| 4 | Era 2 | 5 |
| 5 | Era 3 | 5 |
| 6 | Era 4 | 4 |
| 7 | Era 5 + Prestige | 5 |
| 8 | Era 6 (Space) | 4 |
| 9 | Era 7 (Moon/Aliens) | 5 |
| 10 | Polish & Ship | 5 |
| **Total** | | **48 milestones** |
