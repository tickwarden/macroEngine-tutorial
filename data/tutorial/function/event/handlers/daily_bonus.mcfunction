# ═══════════════════════════════════════════════════════════════
# Event Handler: Daily Bonus
# ═══════════════════════════════════════════════════════════════
# Bu fonksiyon "on_join" event'i tetiklendiğinde çalışır
# ═══════════════════════════════════════════════════════════════

# Günlük bonus mesajı
tellraw @a [{"text":"    ","color":"dark_gray"},{"text":"[Handler 2] ","color":"aqua"},{"text":"Günlük bonus aldınız: 100 coin!","color":"gold"}]

# ───────────────────────────────────────────────────────────────
# GERÇEK KULLANIM
# ───────────────────────────────────────────────────────────────
# Oyuncuya coin ver:
# data modify storage macro:input player set from storage macro:engine event_context.player
# data modify storage macro:input key set value "coins"
# function macro:player/increment with storage macro:input {}
#
# Veya:
# execute as @a if ... run scoreboard players add @s coins 100
