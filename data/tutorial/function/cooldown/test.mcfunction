# ═══════════════════════════════════════════════════════════════
# Tutorial: Cooldown Sistemi - Ana Test
# ═══════════════════════════════════════════════════════════════
# Bu fonksiyon tüm cooldown örneklerini sırayla test eder
# ═══════════════════════════════════════════════════════════════

tellraw @a [{"text":"\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"gold"}]
tellraw @a [{"text":"🕐 COOLDOWN SİSTEMİ - TEST BAŞLADI","color":"gold","bold":true}]
tellraw @a [{"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n","color":"gold"}]

# Test 1: Basit Cooldown
tellraw @a [{"text":"[1/4] ","color":"gray"},{"text":"Basit Cooldown Örneği","color":"yellow"}]
function tutorial:cooldown/example_1_simple

# Bekle (1 saniye)
schedule function tutorial:cooldown/test_step_2 1s

# Not: Diğer adımlar schedule ile zaman aralıklı çalışacak
