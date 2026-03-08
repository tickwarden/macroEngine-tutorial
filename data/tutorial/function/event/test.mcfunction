# ═══════════════════════════════════════════════════════════════
# Tutorial: Event Sistemi - Ana Test
# ═══════════════════════════════════════════════════════════════
# Event sistemi ile dinamik hook/callback sistemi oluşturabilirsiniz
# ═══════════════════════════════════════════════════════════════

tellraw @a [{"text":"\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"gold"}]
tellraw @a [{"text":"📡 EVENT SİSTEMİ - TEST BAŞLADI","color":"gold","bold":true}]
tellraw @a [{"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n","color":"gold"}]

# Örnek 1: Basit event kaydı ve tetikleme
tellraw @a [{"text":"[1/3] ","color":"gray"},{"text":"Basit Event Örneği","color":"yellow"}]
function tutorial:event/example_1_simple

# Bekle
schedule function tutorial:event/test_step_2 2s
