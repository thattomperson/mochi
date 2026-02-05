# Rabbit Mochi — Game Progression Design

## Overview

The game progresses through **7 Eras**, each representing a major expansion of the player's mochi business. The journey goes from a single rabbit with a sidewalk cart to a galactic mochi empire selling to aliens on a space station.

Each era introduces new mechanics, mochi types, rabbit roles, and visual environments. The pacing follows idle-game conventions: early eras move quickly to hook the player, mid-game introduces depth through prestige and specialization, and the endgame offers infinite scaling with cosmic themes.

---

## Currency System

| Currency | Earned From | Used For | Persists Through Prestige? |
|----------|-------------|----------|---------------------------|
| **Coins** | Selling mochi | Rabbits, stations, upgrades, era unlocks | No |
| **Star Points** | Prestige resets (Era 5+) | Permanent multipliers, permanent unlocks | Yes |
| **Stardust** | Space-era production (Era 6+) | Space upgrades, cosmic recipes, alien trades | Yes |

**Coins** inflate naturally across eras — from single digits in Era 1 to scientific notation in Era 7. This is the core resource the player watches grow.

**Star Points** are the prestige currency. They provide permanent bonuses that make subsequent runs faster. First available at Era 5.

**Stardust** is the endgame currency that unlocks the final tiers of content. It cannot be earned before reaching space.

---

## Era 1: Sidewalk Stand

*A single rabbit with a rickety wooden cart on a quiet street corner. Hand-pounded mochi sold to passersby.*

### Milestones

| # | Name | Unlock Cost | What It Unlocks |
|---|------|-------------|-----------------|
| 1 | **Rickety Cart** | — (start) | 1 rabbit, 1 station, manual production & selling |
| 2 | **A Proper Sign** | 50 coins | +1 rabbit slot, 10% faster sales from visibility |
| 3 | **Word of Mouth** | 500 coins | Auto-sell unlocked, Strawberry mochi recipe |

### Mochi Types

| Mochi | Base Value | Production Time | Unlock |
|-------|-----------|-----------------|--------|
| Plain White | 1 coin | 3s | Start |
| Strawberry | 3 coins | 5s | Milestone 3 |

### Stations

| Station | Effect | Cost |
|---------|--------|------|
| Wooden Mortar & Pestle | Base production station. 1 rabbit slot. | Start |
| Upgraded Mortar | +50% speed | 200 coins |

### Rabbits

- **Max rabbits**: 3
- **Roles**: Worker (only role available)
- **Hiring cost**: 25 → 75 → 200 coins (scaling)

### Mechanics Introduced

- **Manual production**: Tap/click the station to produce mochi
- **Manual selling**: Tap the stand to sell accumulated mochi
- **Basic upgrades**: Speed and quality improvements for stations
- **Auto-sell**: First automation unlock (Milestone 3)

### Visual Environment

Quiet sidewalk, small wooden cart, single tree in background. Passersby walk by occasionally. When mochi sells, a small coin animation floats up.

---

## Era 2: Market Stall

*A colorful stall at a bustling marketplace. A banner reads "Rabbit Mochi!" Customers line up.*

### Unlock Requirement

2,000 coins + Milestone 3 complete

### Milestones

| # | Name | Unlock Cost | What It Unlocks |
|---|------|-------------|-----------------|
| 4 | **Market Booth** | 2,000 coins | New environment, +2 rabbit slots, 2nd station slot |
| 5 | **Bamboo Steamer** | 8,000 coins | Steamer station, warm mochi types |
| 6 | **Customer Favorites** | 25,000 coins | Customer preference system, tip mechanic |

### Mochi Types

| Mochi | Base Value | Production Time | Unlock |
|-------|-----------|-----------------|--------|
| Green Tea | 8 coins | 6s | Milestone 4 |
| Red Bean | 12 coins | 8s | Milestone 5 |
| Sakura | 20 coins | 10s | Milestone 6 |

### Stations

| Station | Effect | Cost |
|---------|--------|------|
| Stone Mortar | Better base station. 2 rabbit slots. | 3,000 coins |
| Bamboo Steamer | Produces warm mochi variants. 1 rabbit slot. | 8,000 coins |

### Rabbits

- **Max rabbits**: 8
- **Roles**: Worker, Seller (new — auto-sells faster with bonus)
- **Hiring cost**: 500 → 5,000 coins (scaling)

### Mechanics Introduced

- **Multiple stations**: Player manages more than one production point
- **Seller rabbits**: Dedicated role that improves sell speed and earns tips
- **Customer preferences**: Some customers prefer certain mochi, tipping extra for favorites
- **Tip mechanic**: Bonus coins from matching customer preferences

### Visual Environment

Busy outdoor market with colorful stalls, lanterns, foot traffic. The player's stall is prominent with a cloth banner. Customers visibly queue.

---

## Era 3: Mochi Shop

*Your very own storefront! A cozy shop with indoor seating, a display case, and a kitchen in back.*

### Unlock Requirement

100,000 coins + Milestone 6 complete

### Milestones

| # | Name | Unlock Cost | What It Unlocks |
|---|------|-------------|-----------------|
| 7 | **Grand Opening** | 100,000 coins | Shop environment, display case, 3rd station slot |
| 8 | **Kitchen Upgrade** | 400,000 coins | Professional kitchen station, packaging |
| 9 | **Local Fame** | 1,500,000 coins | Newspaper review event, tourist customers, special orders |

### Mochi Types

| Mochi | Base Value | Production Time | Unlock |
|-------|-----------|-----------------|--------|
| Mango | 50 coins | 8s | Milestone 7 |
| Black Sesame | 75 coins | 10s | Milestone 7 |
| Chestnut | 120 coins | 12s | Milestone 8 |
| Seasonal Special | 200 coins | 15s | Milestone 9 (rotates weekly) |

### Stations

| Station | Effect | Cost |
|---------|--------|------|
| Professional Kitchen | High-output station. 3 rabbit slots. | 250,000 coins |
| Display Case | Passive sell speed bonus for all mochi. | 150,000 coins |
| Packaging Station | Enables boxed sets (sell mochi in bundles for more). | 500,000 coins |

### Rabbits

- **Max rabbits**: 20
- **New role**: Decorator (increases mochi value by adding presentation bonuses)
- **Hiring cost**: 10,000 → 200,000 coins (scaling)

### Mechanics Introduced

- **Shop decorations**: Purchasable decor items that grant passive bonuses (e.g., lucky cat statue = +5% coins)
- **Special orders**: Timed challenge — "Produce 50 Chestnut mochi in 2 minutes" for big coin rewards
- **Boxed sets**: Bundle multiple mochi types together for multiplied value
- **Offline earnings**: First introduced here — earn coins while away (calculated on return)

### Visual Environment

Interior shop with warm lighting, wooden counter, glass display case, small tables for customers. Kitchen visible through a window in the back. A small "OPEN" sign on the door flips when the shop is running.

---

## Era 4: Mochi Restaurant

*An upscale dining experience. Multi-course mochi tasting menus. A celebrity chef rabbit leads the kitchen.*

### Unlock Requirement

10,000,000 coins + Milestone 9 complete

### Milestones

| # | Name | Unlock Cost | What It Unlocks |
|---|------|-------------|-----------------|
| 10 | **Restaurant Opens** | 10M coins | Restaurant environment, menu system, dining room |
| 11 | **Five-Star Review** | 50M coins | VIP customers, gourmet recipes |
| 12 | **Catering Empire** | 250M coins | Catering van, event catering, franchise teaser |

### Mochi Types

| Mochi | Base Value | Production Time | Unlock |
|-------|-----------|-----------------|--------|
| Truffle Mochi | 500 coins | 12s | Milestone 10 |
| Matcha Royale | 800 coins | 14s | Milestone 10 |
| Gold Leaf Mochi | 2,000 coins | 18s | Milestone 11 |
| Chef's Special | 5,000 coins | 25s | Milestone 11 (unique daily recipe) |
| Catering Platter | 15,000 coins | 30s | Milestone 12 (bulk item) |

### Stations

| Station | Effect | Cost |
|---------|--------|------|
| Industrial Kitchen | 4 rabbit slots, highest speed. | 15M coins |
| Dessert Bar | Produces premium mochi, 2 rabbit slots. | 30M coins |
| Catering Van | Auto-fulfills catering orders for passive income. | 250M coins |

### Rabbits

- **Max rabbits**: 50
- **New roles**: Chef (boosts production quality = higher value), Manager (automates an entire station hands-free)
- **Hiring cost**: 500K → 50M coins (scaling)
- **Rabbit training**: Rabbits now gain XP and level up, improving their role bonuses

### Mechanics Introduced

- **Menu system**: Combine mochi into multi-course menus for multiplied value
- **VIP customers**: Rare high-value customers who pay 10x but demand specific menus
- **Catering events**: Passive idle events — accept catering contracts for guaranteed income over time
- **Rabbit leveling**: Rabbits gain XP from working. Higher levels = better multipliers
- **Manager role**: A single manager rabbit fully automates one station

### Visual Environment

Elegant restaurant interior with tablecloths, candles, a visible open kitchen. Rabbits in chef hats and aprons. VIP customers arrive in fancy outfits. A catering van is parked outside.

---

## Era 5: Mochi Corporation

*Factory floor, corporate HQ, and worldwide distribution. You're no longer a shop — you're an empire.*

### Unlock Requirement

5,000,000,000 (5B) coins + Milestone 12 complete

### Milestones

| # | Name | Unlock Cost | What It Unlocks |
|---|------|-------------|-----------------|
| 13 | **Factory Floor** | 5B coins | Factory environment, conveyor belts, mass production |
| 14 | **Global Brand** | 50B coins | Export routes, worldwide flavors |
| 15 | **R&D Division** | 500B coins | Research lab, prestige system, space program teaser |

### Mochi Types

| Mochi | Base Value | Production Time | Unlock |
|-------|-----------|-----------------|--------|
| Factory Standard | 10,000 coins | 5s | Milestone 13 (high volume, low margin) |
| Fusion Mochi (various) | 25,000 coins | 10s | Milestone 14 (regional flavors: Thai, Mexican, French, etc.) |
| Experimental Mochi | 100,000 coins | 20s | Milestone 15 (R&D output, random bonuses) |

### Stations

| Station | Effect | Cost |
|---------|--------|------|
| Assembly Line | 6 rabbit slots, auto-produces at high speed. | 8B coins |
| Packaging Plant | Auto-boxes output, multiplies sell value. | 20B coins |
| Shipping Dock | Enables export routes for passive global income. | 100B coins |
| Research Lab | Produces experimental mochi, unlocks tech tree. | 500B coins |

### Rabbits

- **Max rabbits**: 200
- **New roles**: Scientist (works in R&D lab), Executive (global production multiplier)
- **Hiring cost**: 100M → 100B coins (scaling)

### Mechanics Introduced

- **Conveyor belt production**: Visual of mochi flowing through automated stations
- **Export routes**: Set up trade routes to regions — passive income streams that improve over time
- **Franchise system**: Open satellite locations that generate passive coins (simplified management)
- **Research tree**: Spend coins + time to unlock permanent production boosts, new recipes, and space tech
- **PRESTIGE: "Franchise Buyout"**: Sell everything and restart. Earn **Star Points** based on total lifetime coins earned. Star Points buy permanent upgrades from a separate skill tree.

### Prestige Details

| Star Points Earned | Permanent Bonus Available |
|-------------------|--------------------------|
| 1+ | +10% base production speed |
| 5+ | +25% coin multiplier |
| 10+ | Start with auto-sell unlocked |
| 25+ | Start at Era 2 |
| 50+ | +50% rabbit XP gain |
| 100+ | Start at Era 3, unlock Stardust conversion |
| 250+ | Double offline earnings |
| 500+ | Start at Era 4 |

Star Points earned per prestige scale with how far the player progressed:
- Era 5 reset: 1-5 SP
- Era 6 reset: 10-50 SP
- Era 7 reset: 100-500 SP

### Visual Environment

Industrial factory with conveyor belts, crates, a world map showing export routes. Corporate office area with executive rabbits in suits. A small locked door labeled "R&D" glows mysteriously.

---

## Era 6: Space Program

*The R&D lab has made a breakthrough. Mochi... in space. Train astronaut rabbits, build a rocket, and launch to the moon.*

### Unlock Requirement

10,000,000,000,000 (10T) coins + Milestone 15 complete + Research Lab fully upgraded

### Milestones

| # | Name | Unlock Cost | What It Unlocks |
|---|------|-------------|-----------------|
| 16 | **Mochi Labs** | 10T coins | Space R&D environment, zero-G experiments |
| 17 | **Astronaut Training** | 100T coins | Astronaut rabbit role, training facility |
| 18 | **Launch Day** | 1Q coins | Rocket launch event, travel to the moon |

### Mochi Types

| Mochi | Base Value | Production Time | Unlock |
|-------|-----------|-----------------|--------|
| Freeze-Dried Mochi | 500K coins | 10s | Milestone 16 |
| Zero-G Mochi | 2M coins | 15s | Milestone 16 (floats in the display!) |
| Rocket Fuel Mochi | 10M coins | 20s | Milestone 17 (energy-themed, glowing) |
| Moonstone Mochi | 50M coins | 25s | Milestone 18 (first Stardust recipe) |

### Stations

| Station | Effect | Cost |
|---------|--------|------|
| Zero-G Chamber | Produces space mochi. 4 rabbit slots. Anti-gravity visuals. | 25T coins |
| Training Facility | Converts worker rabbits into Astronaut rabbits over time. | 50T coins |
| Launch Pad | Produces Stardust passively once rocket is built. | 500T coins |
| Rocket (buildable) | Multi-stage construction project. Completion triggers Era 7. | 1Q coins total (built in parts) |

### Rabbits

- **Max rabbits**: 500
- **New role**: Astronaut (required for moon operations, trained from existing rabbits)
- **Hiring cost**: 1B → 1T coins (scaling)

### Mechanics Introduced

- **Stardust generation**: Launch Pad generates Stardust passively. Stardust persists through prestige.
- **Rocket construction**: Long-term buildable project with 5 stages, each costing increasing coins. Visual rocket assembles piece by piece.
- **Astronaut training**: Send rabbits to the Training Facility to become Astronauts (required for Era 7)
- **Zero-G production**: Special visual flair — mochi floats around the station

### Rocket Construction Stages

| Stage | Cost | Visual |
|-------|------|--------|
| Engine | 50T coins | Rocket base appears on launch pad |
| Fuel Tank | 100T coins | Middle section added |
| Cabin | 200T coins | Crew module appears, rabbits peek out windows |
| Navigation | 300T coins | Dish and controls added |
| Final Assembly | 350T coins | Rocket complete, countdown begins |

### Visual Environment

High-tech lab with floating mochi experiments, screens showing space data, rabbits in lab coats. Outside: a launch pad with the rocket under construction. Stars visible in the sky. When the rocket launches, it's a full-screen celebratory event.

---

## Era 7: Moon Base & Alien Market

*The final frontier. A lunar mochi colony, first contact with aliens, and an intergalactic space station marketplace. This is the endgame.*

### Unlock Requirement

Rocket complete + 10 Astronaut rabbits + Launch event

### Phase 1: Moon Colony

#### Milestones

| # | Name | Unlock Cost | What It Unlocks |
|---|------|-------------|-----------------|
| 19 | **Lunar Landing** | Rocket launch | Moon environment, lunar production |
| 20 | **Moon Rice Fields** | 100 Stardust | Lunar ingredient farming, cosmic mochi |
| 21 | **Colony Established** | 500 Stardust | Full moon base, high-capacity production |

#### Mochi Types

| Mochi | Base Value | Production Time | Unlock |
|-------|-----------|-----------------|--------|
| Lunar Mochi | 500M coins | 10s | Milestone 19 |
| Crater Crunch | 2B coins | 15s | Milestone 20 |
| Moon Rice Daifuku | 10B coins | 20s | Milestone 20 |
| Gravity Well Mochi | 50B coins | 25s | Milestone 21 (bends light visually) |

#### Stations

| Station | Effect | Cost |
|---------|--------|------|
| Lunar Kitchen | Space-grade production. 6 rabbit slots. | 50 Stardust |
| Moon Rice Paddy | Generates premium ingredients, boosting all moon mochi value. | 100 Stardust |
| Lunar Warehouse | Increases max mochi storage. Enables bulk alien trades. | 200 Stardust |

### Phase 2: First Contact

#### Milestones

| # | Name | Unlock Cost | What It Unlocks |
|---|------|-------------|-----------------|
| 22 | **Strange Signal** | 1,000 Stardust | Alien radar event, first alien customer |
| 23 | **Trade Agreement** | 5,000 Stardust | Alien marketplace access, alien preferences |
| 24 | **Space Station Docking** | 25,000 Stardust | Space station environment, full alien market |

#### Alien Customer Types

| Alien Species | Preferred Flavor | Tip Bonus | Rarity |
|--------------|-----------------|-----------|--------|
| Blobbians | Sweet / Fruity | +50% coins | Common |
| Crystalites | Mineral / Earthy | +100% coins, pays in Stardust | Uncommon |
| Nebulites | Spicy / Energy | +200% coins | Rare |
| Void Dwellers | Exotic / Dark matter | +500% coins, pays in Stardust | Legendary |

### Phase 3: Galactic Mochi Empire (Endgame)

#### Milestones

| # | Name | Unlock Cost | What It Unlocks |
|---|------|-------------|-----------------|
| 25 | **Galactic Menu** | 100,000 Stardust | Cosmic recipes, all alien species visit |
| 26 | **Mochi Singularity** | 1,000,000 Stardust | Infinite scaling, final prestige tier |

#### Cosmic Mochi Types

| Mochi | Base Value | Production Time | Unlock |
|-------|-----------|-----------------|--------|
| Stardust Mochi | 1T coins | 10s | Milestone 24 |
| Nebula Swirl | 10T coins | 15s | Milestone 25 |
| Dark Matter Mochi | 100T coins | 20s | Milestone 25 |
| Supernova Mochi | 1Q coins | 30s | Milestone 26 |
| The Eternal Mochi | ∞ scaling | 60s | Milestone 26 (value scales with total Stardust) |

#### Endgame Stations

| Station | Effect | Cost |
|---------|--------|------|
| Anti-Gravity Pounder | Fastest production. 8 rabbit slots. | 10,000 Stardust |
| Teleport Delivery | Instant sell to any customer, anywhere. | 50,000 Stardust |
| Cosmic Bakery | Produces all mochi types simultaneously. | 500,000 Stardust |
| Mochi Singularity Engine | Infinite scaling machine. Value grows over real time. | 1,000,000 Stardust |

#### Endgame Mechanics

- **Infinite scaling**: The Singularity Engine produces mochi whose value grows logarithmically with total playtime
- **Alien trade routes**: Set up permanent routes to alien homeworlds for massive passive Stardust income
- **Cosmic prestige ("Big Bang")**: Reset everything (including Stardust) for **Cosmic Shards** — the ultimate permanent bonus currency. Each shard grants +10% to ALL production forever.

### Visual Environment

**Moon**: Grey lunar surface, Earth visible in the sky, dome habitat with lights, moon rice paddies under glass. Rabbits in space suits bounce in low gravity.

**Space Station**: Massive ring station orbiting the moon. Colorful alien species browse mochi displays. Neon signs in alien script. The player's shop is the most popular stall on the station. Stars and galaxies visible through panoramic windows.

---

## Rabbit Roles Summary

| Role | Unlocked | Effect |
|------|----------|--------|
| **Worker** | Era 1 | Base production at stations |
| **Seller** | Era 2 | Faster auto-sell, earns tips |
| **Decorator** | Era 3 | Increases mochi sale value through presentation |
| **Chef** | Era 4 | Boosts production quality = higher base value |
| **Manager** | Era 4 | Fully automates one station |
| **Scientist** | Era 5 | Works in R&D, unlocks research faster |
| **Executive** | Era 5 | Global production multiplier |
| **Astronaut** | Era 6 | Required for space operations, works on moon/station |

---

## Prestige System Summary

### Prestige 1: Franchise Buyout (Era 5+)

- **Trigger**: Manual reset from the Corporation era or later
- **Cost**: All coins, rabbits, stations, era progress
- **Reward**: Star Points (based on lifetime earnings)
- **Star Points buy**: Permanent speed boosts, starting era skips, multipliers
- **Purpose**: Makes each subsequent run faster, eventually trivializing early eras

### Prestige 2: Big Bang (Era 7 endgame)

- **Trigger**: Manual reset after reaching Mochi Singularity
- **Cost**: Everything including Stardust
- **Reward**: Cosmic Shards
- **Cosmic Shards buy**: +10% ALL production per shard (multiplicative, uncapped)
- **Purpose**: Infinite endgame scaling for dedicated players

---

## Upgrade Categories

Each era has upgrades in these categories:

| Category | Example Upgrades |
|----------|-----------------|
| **Production Speed** | Faster pounding, better equipment, automation tiers |
| **Mochi Value** | Quality ingredients, presentation, branding |
| **Rabbit Efficiency** | Training speed, XP gain, role effectiveness |
| **Capacity** | More rabbit slots, more stations, higher storage |
| **Automation** | Auto-sell improvements, manager effectiveness, offline rate |
| **Special** | Era-specific (decorations, exports, research, space tech) |

---

## Progression Pacing Targets

These are rough targets for how session time maps to eras for an **active player** on their first run (no prestige bonuses):

| Era | First-Run Target | With Prestige |
|-----|-------------------|---------------|
| Era 1: Sidewalk Stand | First 15 minutes | Skippable |
| Era 2: Market Stall | 1-2 hours | Minutes |
| Era 3: Mochi Shop | 1-2 days | Hours |
| Era 4: Restaurant | 3-5 days | 1 day |
| Era 5: Corporation | 1-2 weeks | 2-3 days |
| Era 6: Space Program | 2-4 weeks | 1 week |
| Era 7: Moon & Beyond | 1-2 months | 2 weeks |

The prestige loop is designed so that 2-3 prestiges make the space eras comfortably reachable.

---

## Key Design Principles

1. **Always something to do**: Even when idle production is running, there should be an active task available (special orders, optimizing station assignments, building the rocket)
2. **Visual reward**: Every era dramatically changes the environment. The player should *feel* the progression.
3. **No hard walls**: Players should never feel stuck. If progress slows, there's always a smaller upgrade to buy or a prestige to consider.
4. **Cute over complex**: Mechanics should be simple to understand. The joy comes from watching rabbits bounce around making mochi, not from spreadsheet optimization.
5. **Prestige feels good**: Resetting should feel like a strategic choice that opens new possibilities, not a punishment.
