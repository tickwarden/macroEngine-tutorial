# ═══════════════════════════════════════════════════════════════
# TÜMÜNÜ TEST ET
# ═══════════════════════════════════════════════════════════════
# Bu fonksiyon tüm tutorial modüllerini test eder
# ═══════════════════════════════════════════════════════════════

tellraw @a [{"text":"\n\n","color":"white"}]
tellraw @a [{"text":"╔════════════════════════════════════════════╗","color":"gold","bold":true}]
tellraw @a [{"text":"║  ","color":"gold","bold":true},{"text":"macroEngine Tutorial - Tüm Testler","color":"yellow","bold":true},{"text":"  ║","color":"gold","bold":true}]
tellraw @a [{"text":"╚════════════════════════════════════════════╝","color":"gold","bold":true}]
tellraw @a [{"text":"","color":"white"}]

# macroEngine-dp kontrolü
execute unless score $epoch macro.time matches -2147483648.. run tellraw @a [{"text":"⚠ HATA: macroEngine-dp bulunamadı!","color":"red","bold":true}]
execute unless score $epoch macro.time matches -2147483648.. run tellraw @a [{"text":"Önce macroEngine-dp'yi kurun.","color":"yellow"}]
execute unless score $epoch macro.time matches -2147483648.. run return 0

# Testleri sırayla çalıştır
tellraw @a [{"text":"Testler başlıyor...","color":"gray"}]
tellraw @a [{"text":"","color":"white"}]

# 1. Cooldown
function tutorial:cooldown/test

# 2. Event (4 saniye sonra)
schedule function tutorial:event/test 4s

# 3. Math (8 saniye sonra)
schedule function tutorial:math/test 8s

# Özet (12 saniye sonra)
schedule function tutorial:test_summary 12s

tellraw @a [{"text":"","color":"white"}]
tellraw @a [{"text":"⏱ Testler ~12 saniye sürecek","color":"gray","italic":true}]
tellraw @a [{"text":"","color":"white"}]
