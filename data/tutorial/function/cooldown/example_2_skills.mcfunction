# ═══════════════════════════════════════════════════════════════
# Örnek 2: Skill Cooldown (Yetenek Sistemi)
# ═══════════════════════════════════════════════════════════════
# SENARYO: Oyuncunun 3 farklı skill'i var, her birinin ayrı cooldown'u
# ═══════════════════════════════════════════════════════════════

tellraw @a [{"text":"\n  ","color":"dark_gray"},{"text":"═══ Skill Sistemi ═══","color":"aqua","bold":true}]

# ───────────────────────────────────────────────────────────────
# SKILL 1: FIREBALL (8 saniye cooldown)
# ───────────────────────────────────────────────────────────────

tellraw @a [{"text":"  ","color":"dark_gray"},{"text":"Skill 1: ","color":"gray"},{"text":"Fireball","color":"yellow"}]

data modify storage macro:input player set value "TestPlayer"
data modify storage macro:input key set value "skill_fireball"
function macro:cooldown/check with storage macro:input {}

execute if data storage macro:output {result:1b} run tellraw @a [{"text":"    ✓ ","color":"green"},{"text":"Fireball kullanılabilir","color":"green"}]
execute if data storage macro:output {result:1b} run data modify storage macro:input duration set value 160
execute if data storage macro:output {result:1b} run function macro:cooldown/set with storage macro:input {}
execute if data storage macro:output {result:1b} run tellraw @a [{"text":"    ","color":"dark_gray"},{"text":"→ Fireball atıldı! Cooldown: 160 tick (8sn)","color":"gray"}]

execute if data storage macro:output {result:0b} run function macro:cooldown/remaining with storage macro:input {}
execute if data storage macro:output {result:0b} run tellraw @a [{"text":"    ✗ ","color":"red"},{"text":"Cooldown: ","color":"red"},{"storage":"macro:output","nbt":"result","color":"yellow"},{"text":" tick","color":"gray"}]

# ───────────────────────────────────────────────────────────────
# SKILL 2: DASH (3 saniye cooldown)
# ───────────────────────────────────────────────────────────────

tellraw @a [{"text":"  ","color":"dark_gray"},{"text":"Skill 2: ","color":"gray"},{"text":"Dash","color":"yellow"}]

data modify storage macro:input player set value "TestPlayer"
data modify storage macro:input key set value "skill_dash"
function macro:cooldown/check with storage macro:input {}

execute if data storage macro:output {result:1b} run tellraw @a [{"text":"    ✓ ","color":"green"},{"text":"Dash kullanılabilir","color":"green"}]
execute if data storage macro:output {result:1b} run data modify storage macro:input duration set value 60
execute if data storage macro:output {result:1b} run function macro:cooldown/set with storage macro:input {}
execute if data storage macro:output {result:1b} run tellraw @a [{"text":"    ","color":"dark_gray"},{"text":"→ Dash yapıldı! Cooldown: 60 tick (3sn)","color":"gray"}]

execute if data storage macro:output {result:0b} run function macro:cooldown/remaining with storage macro:input {}
execute if data storage macro:output {result:0b} run tellraw @a [{"text":"    ✗ ","color":"red"},{"text":"Cooldown: ","color":"red"},{"storage":"macro:output","nbt":"result","color":"yellow"},{"text":" tick","color":"gray"}]

# ───────────────────────────────────────────────────────────────
# SKILL 3: HEAL (15 saniye cooldown)
# ───────────────────────────────────────────────────────────────

tellraw @a [{"text":"  ","color":"dark_gray"},{"text":"Skill 3: ","color":"gray"},{"text":"Heal","color":"yellow"}]

data modify storage macro:input player set value "TestPlayer"
data modify storage macro:input key set value "skill_heal"
function macro:cooldown/check with storage macro:input {}

execute if data storage macro:output {result:1b} run tellraw @a [{"text":"    ✓ ","color":"green"},{"text":"Heal kullanılabilir","color":"green"}]
execute if data storage macro:output {result:1b} run data modify storage macro:input duration set value 300
execute if data storage macro:output {result:1b} run function macro:cooldown/set with storage macro:input {}
execute if data storage macro:output {result:1b} run tellraw @a [{"text":"    ","color":"dark_gray"},{"text":"→ Heal kullanıldı! Cooldown: 300 tick (15sn)","color":"gray"}]

execute if data storage macro:output {result:0b} run function macro:cooldown/remaining with storage macro:input {}
execute if data storage macro:output {result:0b} run tellraw @a [{"text":"    ✗ ","color":"red"},{"text":"Cooldown: ","color":"red"},{"storage":"macro:output","nbt":"result","color":"yellow"},{"text":" tick","color":"gray"}]

# ───────────────────────────────────────────────────────────────
# ÖNEMLİ NOTLAR
# ───────────────────────────────────────────────────────────────
# 1. Her skill'in FARKLI bir "key" değeri var
# 2. Aynı oyuncu için birden fazla cooldown paralel çalışabilir
# 3. Her skill'in farklı duration değeri olabilir
#
# GERÇEK KULLANIM:
# - Oyuncu carrot_on_a_stick ile right click yapar
# - Advancement/trigger ile skill fonksiyonu çalışır
# - Bu örnek gibi cooldown kontrol edilir
# - Skill efekti uygulanır (particle, effect, summon vb.)
