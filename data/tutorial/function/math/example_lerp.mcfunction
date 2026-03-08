# ═══════════════════════════════════════════════════════════════
# Örnek: Lerp (Linear Interpolation)
# ═══════════════════════════════════════════════════════════════
# Lerp: İki değer arasında doğrusal geçiş
# Formula: a + (b-a) * t/100
# t = 0   → a değeri
# t = 50  → orta nokta
# t = 100 → b değeri
# ═══════════════════════════════════════════════════════════════

tellraw @a [{"text":"  ","color":"dark_gray"},{"text":"═══ Lerp (İnterpolasyon) ═══","color":"aqua","bold":true}]

# 0 ile 100 arasında %25 (= 25)
data modify storage macro:input a set value 0
data modify storage macro:input b set value 100
data modify storage macro:input t set value 25
function macro:math/lerp with storage macro:input {}
tellraw @a [{"text":"  ","color":"dark_gray"},{"text":"0→100 @ 25% = ","color":"gray"},{"storage":"macro:output","nbt":"result","color":"aqua"}]

# 0 ile 100 arasında %50 (= 50)
data modify storage macro:input t set value 50
function macro:math/lerp with storage macro:input {}
tellraw @a [{"text":"  ","color":"dark_gray"},{"text":"0→100 @ 50% = ","color":"gray"},{"storage":"macro:output","nbt":"result","color":"aqua"}]

# 0 ile 100 arasında %75 (= 75)
data modify storage macro:input t set value 75
function macro:math/lerp with storage macro:input {}
tellraw @a [{"text":"  ","color":"dark_gray"},{"text":"0→100 @ 75% = ","color":"gray"},{"storage":"macro:output","nbt":"result","color":"aqua"}]

tellraw @a [{"text":"  ","color":"dark_gray"},{"text":"Kullanım: Sağlık barı, animasyon, renk geçişi","color":"gray","italic":true}]
