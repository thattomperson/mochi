# Rabbit Mochi — Game Progression Design

## Overview

The game progresses through **6 eras**, each representing a major upgrade in
location, scale, and ambition. The player starts with a single rabbit at a
sidewalk stand and ends running an interstellar mochi empire on a space station.

Each era introduces new **recipes**, **rabbit types**, **equipment**, and
**mechanics**. Advancing to the next era requires reaching a coin milestone and
purchasing the era unlock.

---

## Currency & Scaling

| Era | Coin Range | Era Unlock Cost |
|-----|-----------|----------------|
| 1 — Sidewalk Stand | 1 – 1,000 | — (starting era) |
| 2 — Mochi Shop | 1K – 100K | 1,000 |
| 3 — Restaurant | 100K – 10M | 100,000 |
| 4 — Factory | 10M – 10B | 10,000,000 |
| 5 — Moon Base | 10B – 10T | 10,000,000,000 |
| 6 — Space Station | 10T+ | 10,000,000,000,000 |

Numbers use standard idle-game exponential scaling. Display switches to
abbreviated notation (1.5K, 3.2M, etc.) once values exceed 1,000.

---

## Era 1 — The Sidewalk Stand

**Setting**: A folding table with a hand-painted sign on a quiet street corner.

**Theme**: Humble beginnings. Everything is manual, small, and charming.

### Starting State
- 1 rabbit worker
- 1 wooden mallet
- 1 pounding station (tree stump)
- Recipe: Plain Mochi

### Recipes

| Recipe | Unlock Cost | Sell Price | Production Time |
|--------|------------|-----------|----------------|
| Plain Mochi | — (starter) | 1 | 3s |
| Kinako Mochi | 15 | 3 | 4s |
| Anko Mochi (red bean) | 50 | 6 | 5s |
| Yomogi Mochi (mugwort) | 150 | 10 | 6s |

### Upgrades

| Upgrade | Cost | Effect |
|---------|------|--------|
| Sturdy Mallet | 10 | +25% production speed |
| Bigger Table | 30 | +1 station slot |
| Hand-Painted Banner | 60 | +25% sell price |
| Extra Rice Bags | 100 | +25% production speed |
| Tip Jar | 200 | +10% passive coin bonus |

### Rabbits
- **Max rabbits**: 3
- **Hire cost**: 20 → 50 → 120
- Only **Worker Rabbits** available (basic producers)

### Mechanics Introduced
- Core production loop (assign rabbit → produce → sell)
- Manual sell tap for small bonus (2x price for that batch)
- Basic auto-sell (mochi sells automatically after a short delay)

### Era Milestone
- **Cost**: 1,000 coins
- **Unlock**: Sign a lease for a small shop

---

## Era 2 — The Mochi Shop

**Setting**: A small storefront with a counter, display case, and kitchen in back.

**Theme**: The business gets real. Foot traffic, presentation, and variety matter.

### New Recipes

| Recipe | Unlock Cost | Sell Price | Production Time |
|--------|------------|-----------|----------------|
| Daifuku | 1,500 | 20 | 5s |
| Sakura Mochi | 4,000 | 45 | 6s |
| Ichigo Daifuku (strawberry) | 10,000 | 80 | 7s |
| Green Tea Mochi | 25,000 | 120 | 8s |

(All Era 1 recipes remain available and carry over.)

### Upgrades

| Upgrade | Cost | Effect |
|---------|------|--------|
| Glass Display Case | 1,200 | +25% sell price (presentation matters) |
| Kitchen Oven | 3,000 | Unlocks heated recipes |
| Neon Open Sign | 6,000 | +50% customer rate |
| Cash Register | 12,000 | Auto-sell speed doubled |
| Refrigerator | 30,000 | Mochi doesn't expire (removes spoilage) |
| Shop Decor (3 tiers) | 5K / 15K / 40K | +10% / +20% / +30% all revenue |

### Rabbits
- **Max rabbits**: 8
- **Hire cost**: scales 200 → 50,000
- New type unlocked: **Sales Rabbit** — works the counter, increases auto-sell speed by 50% per Sales Rabbit

### Mechanics Introduced
- **Customers**: NPCs walk into the shop and buy. Higher foot traffic = faster passive sales.
- **Spoilage** (optional pressure): Unsold mochi loses value over time. Fridge upgrade removes this.
- **Recipe mastery**: Producing 100 of a recipe grants a permanent +10% speed for that recipe.

### Era Milestone
- **Cost**: 100,000 coins
- **Unlock**: Obtain a restaurant license

---

## Era 3 — The Mochi Restaurant

**Setting**: A full sit-down restaurant with a kitchen, dining room, and takeout window.

**Theme**: Quality and reputation. Premium products, VIP customers, and specialization.

### New Recipes

| Recipe | Unlock Cost | Sell Price | Production Time |
|--------|------------|-----------|----------------|
| Mochi Ice Cream | 120,000 | 200 | 6s |
| Warabi Mochi | 300,000 | 450 | 7s |
| Hanabira Mochi | 700,000 | 900 | 8s |
| Mochi Parfait | 1,500,000 | 1,800 | 10s |
| Golden Mochi (premium) | 5,000,000 | 5,000 | 12s |

### Upgrades

| Upgrade | Cost | Effect |
|---------|------|--------|
| Professional Kitchen | 150,000 | +50% production speed, all recipes |
| Dining Room (3 tiers) | 200K / 600K / 2M | +1 / +2 / +3 max customer seats |
| Takeout Window | 400,000 | Separate auto-sell channel (sells in parallel) |
| Menu Board | 250,000 | +25% sell price for all recipes |
| VIP Room | 1,500,000 | Unlocks VIP customers (3x payout) |
| Catering Van | 4,000,000 | Unlocks catering orders |

### Rabbits
- **Max rabbits**: 20
- **Hire cost**: scales 100K → 5M
- New types:
  - **Chef Rabbit** — +100% quality multiplier on recipes at their station
  - **Manager Rabbit** — Boosts all rabbits in the same room by +25% speed (doesn't produce directly)

### Mechanics Introduced
- **Catering orders**: Large batch orders that appear periodically. Completing them gives a big coin payout + bonus.
- **VIP customers**: Rare customers who pay 3x but demand specific premium recipes.
- **Reputation meter**: Fills from sales and catering. Higher reputation = more customers and better order frequency.
- **Multiple rooms**: Kitchen, dining room, takeout — rabbits can be assigned to different areas.

### Era Milestone
- **Cost**: 10,000,000 coins
- **Unlock**: Break ground on the mochi factory

---

## Era 4 — The Mochi Factory

**Setting**: A large industrial facility with assembly lines, packaging, and a loading dock.

**Theme**: Scale and automation. You're no longer artisanal — you're an empire.

### New Recipes

| Recipe | Unlock Cost | Sell Price | Production Time |
|--------|------------|-----------|----------------|
| Fusion Mochi (chocolate) | 12,000,000 | 8,000 | 5s |
| Taro Mochi | 30,000,000 | 18,000 | 6s |
| Mango Mochi | 80,000,000 | 40,000 | 7s |
| Black Sesame Mochi | 200,000,000 | 90,000 | 8s |
| Rainbow Mochi (limited) | 500,000,000 | 200,000 | 10s |
| Diamond Mochi (luxury) | 2,000,000,000 | 800,000 | 12s |

### Upgrades

| Upgrade | Cost | Effect |
|---------|------|--------|
| Assembly Line (3 tiers) | 15M / 100M / 1B | +50% / +100% / +200% production speed |
| Packaging Machine | 25,000,000 | Auto-box mochi, +25% sell price |
| Delivery Fleet (3 tiers) | 50M / 500M / 5B | Unlocks regional / national / global distribution |
| Quality Control Lab | 200,000,000 | -50% spoilage, +25% recipe mastery rate |
| Cold Storage Warehouse | 1,000,000,000 | 10x mochi storage capacity |
| R&D Department | 3,000,000,000 | -25% recipe unlock costs for all future recipes |

### Rabbits
- **Max rabbits**: 50
- **Hire cost**: scales 10M → 5B
- New types:
  - **Engineer Rabbit** — Maintains machines, +50% to station efficiency when assigned
  - **Logistics Rabbit** — Boosts delivery speed and distribution income by +30%

### Mechanics Introduced
- **Automation**: Stations can be set to auto-produce without a rabbit assigned (at 50% efficiency). Assigning a rabbit brings it to 100%+.
- **Distribution**: Sell mochi to different regions for varying prices. Unlock regions via delivery fleet upgrades.
- **Bulk contracts**: Like catering but larger — fill orders of 1,000+ mochi for corporate clients.
- **Research**: Spend coins in R&D to reduce future costs and unlock secret recipes.

### Era Milestone
- **Cost**: 10,000,000,000 coins (10B)
- **Unlock**: A mysterious signal from the moon... the legendary Moon Rabbit calls you home.

---

## Era 5 — The Moon Base

**Setting**: A lunar facility built into a crater, with domes, moon-dust quarries, and Earth visible in the sky.

**Theme**: The legend comes full circle. The mythical Moon Rabbit was pounding mochi
all along — and now your rabbits join them. Cosmic ingredients, lunar gravity, and
alien visitors.

### New Recipes

| Recipe | Unlock Cost | Sell Price | Production Time |
|--------|------------|-----------|----------------|
| Lunar Mochi | 12,000,000,000 | 1,500,000 | 5s |
| Stardust Mochi | 40,000,000,000 | 4,000,000 | 6s |
| Crater Cream Mochi | 120,000,000,000 | 10,000,000 | 7s |
| Zero-G Mochi | 400,000,000,000 | 25,000,000 | 8s |
| Eclipse Mochi | 1,500,000,000,000 | 80,000,000 | 10s |

### Upgrades

| Upgrade | Cost | Effect |
|---------|------|--------|
| Lunar Quarry | 15B | Gather moon-dust ingredient (needed for lunar recipes) |
| Gravity Modulator (3 tiers) | 30B / 300B / 3T | Mochi stretches better in low-G: +50% / +100% / +200% quality |
| Dome Expansion (3 tiers) | 50B / 500B / 5T | +10 / +20 / +30 station slots |
| Earth Export Shuttle | 200B | Sell lunar mochi on Earth at 2x price |
| Alien Comm Array | 1T | Attracts alien visitors who buy at premium prices |
| Cosmic Ingredient Refinery | 4T | Unlocks cosmic ingredients for Era 6 recipes |

### Rabbits
- **Max rabbits**: 100
- **Hire cost**: scales 10B → 5T
- New types:
  - **Astro Rabbit** — Can operate in lunar environment at full efficiency (other types work at 75% on the moon)
  - **Legendary Moon Rabbit** — Unique hire (only 1). +100% production to entire moon base. Unlocked through a special quest chain.

### Mechanics Introduced
- **Lunar environment**: Non-Astro rabbits work at 75% efficiency on the moon until acclimatized (timer-based).
- **Moon-dust harvesting**: New ingredient source. Quarry produces moon-dust passively; used in all lunar recipes.
- **Alien visitors**: Random alien NPCs visit the moon base and pay 5x for specific mochi. Precursor to Era 6.
- **Earth export**: Shuttle sends mochi back to Earth for extra revenue stream (passive income from your factory too).
- **Quest chain**: Series of objectives to recruit the Legendary Moon Rabbit.

### Era Milestone
- **Cost**: 10,000,000,000,000 coins (10T)
- **Unlock**: The aliens invite you to set up shop on their space station.

---

## Era 6 — The Space Station Emporium

**Setting**: A bustling galactic trade hub. Aliens of all species pass through.
Your mochi shop is the station's premier dining destination.

**Theme**: Endgame. Exotic alien ingredients, strange new customers, and
prestige-level scaling. This is the final era with effectively infinite
progression.

### New Recipes

| Recipe | Unlock Cost | Sell Price | Production Time |
|--------|------------|-----------|----------------|
| Nebula Mochi | 15T | 150,000,000 | 5s |
| Plasma Mochi | 50T | 400,000,000 | 6s |
| Dark Matter Mochi | 200T | 1,200,000,000 | 7s |
| Quantum Mochi | 800T | 4,000,000,000 | 8s |
| Singularity Mochi | 5,000T | 15,000,000,000 | 10s |
| Big Bang Mochi (final) | 50,000T | 100,000,000,000 | 15s |

### Upgrades

| Upgrade | Cost | Effect |
|---------|------|--------|
| Station Storefront | 12T | Base setup for space station sales |
| Alien Ingredient Market | 40T | Access to alien ingredients |
| Warp Kneader | 150T | +200% production speed |
| Dimensional Pantry | 500T | Infinite mochi storage |
| Galactic Ad Campaign | 2,000T | +300% customer rate |
| Singularity Oven | 10,000T | Required for final recipe tier |
| Cosmic Franchise (repeatable) | 50,000T+ (doubles each time) | +100% all income per purchase |

### Rabbits
- **Max rabbits**: Uncapped (endgame scaling)
- **Hire cost**: scales 10T+, exponential
- New types:
  - **Cosmic Rabbit** — +200% production, can work any station at full efficiency
  - **Alien Apprentice** — Non-rabbit worker. Different alien species give different bonuses (random on hire)

### Mechanics Introduced
- **Alien customers**: Multiple species with preferences. Matching mochi to species grants bonus coins.
  - *Zelphi* — Prefer cold mochi (ice cream variants). +50% payout.
  - *Grolk* — Prefer dense mochi (daifuku types). +50% payout.
  - *Lumini* — Prefer glowing mochi (cosmic recipes). +50% payout.
- **Galactic reputation**: Cross-species reputation unlocks better contracts and rarer visitors.
- **Cosmic Franchise**: Repeatable endgame purchase. Each one doubles in cost but gives +100% income. This is the infinite scaling mechanic.
- **Prestige** (optional): "Big Bang Reset" — reset all progress, but start with a permanent multiplier based on total coins earned. Each prestige makes the next run faster.

---

## Rabbit Types — Summary

| Rabbit | Era | Role | Effect |
|--------|-----|------|--------|
| Worker Rabbit | 1 | Production | Produces mochi at base rate |
| Sales Rabbit | 2 | Selling | +50% auto-sell speed |
| Chef Rabbit | 3 | Quality | +100% sell price at their station |
| Manager Rabbit | 3 | Support | +25% speed to all rabbits in same room |
| Engineer Rabbit | 4 | Maintenance | +50% station efficiency |
| Logistics Rabbit | 4 | Distribution | +30% delivery/distribution income |
| Astro Rabbit | 5 | Specialist | Full efficiency in space environments |
| Moon Rabbit (Legendary) | 5 | Unique | +100% to entire moon base (only 1) |
| Cosmic Rabbit | 6 | Elite | +200% production, universal compatibility |
| Alien Apprentice | 6 | Wildcard | Random species bonus on hire |

---

## Cross-Era Systems

### Recipe Mastery
- Producing a recipe repeatedly fills a mastery bar.
- At 100% mastery: permanent +10% speed and +10% sell price for that recipe.
- Mastery carries across eras (incentivizes not abandoning old recipes entirely).

### Offline Progress
- On return, the game calculates earnings based on `elapsed_time * production_per_second`.
- Capped at 8 hours of offline earnings by default.
- Upgradeable: "Night Shift" upgrade in each era extends offline cap by +4 hours.

### Achievements
Each era has a set of achievements that grant small permanent bonuses:
- "First Mochi" — Produce your first mochi (+5% speed permanently)
- "Recipe Collector" — Unlock all recipes in an era (+10% sell price)
- "Full House" — Hire max rabbits in an era (+10% production)
- "Speed Demon" — Reach X mochi/second milestone (+15% speed)
- Era-specific achievements (e.g., "Lunar Legend" — Complete Moon Rabbit quest chain)

### Prestige — Big Bang Reset (Endgame)
- Available after reaching Era 6 and producing a Big Bang Mochi.
- Resets all progress (coins, upgrades, recipes, eras).
- Grants **Cosmic Essence** based on total lifetime earnings.
- Cosmic Essence provides a permanent multiplier to all production and sales.
- Each prestige makes the journey faster, encouraging multiple runs.
- Prestige unlocks cosmetic upgrades (golden mallets, sparkle effects, alternate rabbit skins).

---

## Progression Pacing Targets

These are rough targets for how the game should feel (actual balancing
will require playtesting and iteration):

| Milestone | Target Playtime |
|-----------|----------------|
| Unlock Era 2 | 15–20 minutes |
| Unlock Era 3 | 1–2 hours |
| Unlock Era 4 | 4–8 hours |
| Unlock Era 5 | 1–2 days |
| Unlock Era 6 | 3–5 days |
| First Big Bang Mochi | 1–2 weeks |
| First Prestige | 1–2 weeks |

These assume active play mixed with offline progress. The game should
feel rewarding whether played actively or checked a few times per day.
