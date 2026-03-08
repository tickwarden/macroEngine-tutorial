# ═══════════════════════════════════════════════════════════════
# Örnek: Mesafe Hesaplama (distance2d)
# ═══════════════════════════════════════════════════════════════
# SENARYO: İki nokta arasındaki XZ düzleminde mesafeyi hesapla
# ═══════════════════════════════════════════════════════════════

tellraw @a [{"text":"  ","color":"dark_gray"},{"text":"═══ Mesafe Hesaplama ═══","color":"aqua","bold":true}]

# ───────────────────────────────────────────────────────────────
# ÖRNEK: Spawn (0,0) ile (30,40) arası mesafe
# ───────────────────────────────────────────────────────────────
# Pitagor teoremi: √(30² + 40²) = √(900 + 1600) = √2500 = 50

data modify storage macro:input x1 set value 0
data modify storage macro:input z1 set value 0
data modify storage macro:input x2 set value 30
data modify storage macro:input z2 set value 40

function macro:math/distance2d with storage macro:input {}

tellraw @a [{"text":"  ","color":"dark_gray"},{"text":"Nokta 1: ","color":"gray"},{"text":"(0, 0)","color":"yellow"}]
tellraw @a [{"text":"  ","color":"dark_gray"},{"text":"Nokta 2: ","color":"gray"},{"text":"(30, 40)","color":"yellow"}]
tellraw @a [{"text":"  ✓ ","color":"green"},{"text":"Mesafe: ","color":"gray"},{"storage":"macro:output","nbt":"result","color":"aqua"},{"text":" blok","color":"gray"}]

# ───────────────────────────────────────────────────────────────
# GERÇEK KULLANIM ÖRNEKLERİ
# ───────────────────────────────────────────────────────────────
# 1. Spawn'dan uzaklık kontrolü:
#    execute as @s store result storage macro:input x1 int 1 run data get entity @s Pos[0]
#    execute as @s store result storage macro:input z1 int 1 run data get entity @s Pos[2]
#    data modify storage macro:input x2 set value 0
#    data modify storage macro:input z2 set value 0
#    function macro:math/distance2d with storage macro:input {}
#    execute if data storage macro:output {result:100..} run say Spawn'dan çok uzaksın!
#
# 2. İki oyuncu arası mesafe:
#    execute as @a[tag=player1] store result storage macro:input x1 ...
#    execute as @a[tag=player2] store result storage macro:input x2 ...
#
# 3. Arena sınırı kontrolü:
#    Belirli bir noktadan (arena merkezi) uzaklık > 50 ise oyuncuyu geri tp et
