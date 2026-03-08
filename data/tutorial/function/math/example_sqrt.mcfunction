# ═══════════════════════════════════════════════════════════════
# Örnek: Karekök (sqrt)
# ═══════════════════════════════════════════════════════════════

tellraw @a [{"text":"  ","color":"dark_gray"},{"text":"═══ Karekök Hesaplama ═══","color":"aqua","bold":true}]

# √144 = 12
data modify storage macro:input value set value 144
function macro:math/sqrt with storage macro:input {}
tellraw @a [{"text":"  ","color":"dark_gray"},{"text":"√144 = ","color":"gray"},{"storage":"macro:output","nbt":"result","color":"aqua"}]

# √100 = 10
data modify storage macro:input value set value 100
function macro:math/sqrt with storage macro:input {}
tellraw @a [{"text":"  ","color":"dark_gray"},{"text":"√100 = ","color":"gray"},{"storage":"macro:output","nbt":"result","color":"aqua"}]

# √2500 = 50
data modify storage macro:input value set value 2500
function macro:math/sqrt with storage macro:input {}
tellraw @a [{"text":"  ","color":"dark_gray"},{"text":"√2500 = ","color":"gray"},{"storage":"macro:output","nbt":"result","color":"aqua"}]
