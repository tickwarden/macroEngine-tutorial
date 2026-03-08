# ═══════════════════════════════════════════════════════════════
# macroEngine Tutorial Pack - Load
# ═══════════════════════════════════════════════════════════════
# Bu fonksiyon sunucu her yüklendiğinde/reload'da çalışır
# ═══════════════════════════════════════════════════════════════

# Karşılama mesajı
tellraw @a [{"text":"[Tutorial] ","color":"gold","bold":true},{"text":"macroEngine Tutorial Pack yüklendi!","color":"green"}]
tellraw @a [{"text":"[Tutorial] ","color":"gold"},{"text":"Testleri çalıştır: ","color":"gray"},{"text":"/function tutorial:test_all","color":"aqua","click_event":{"action":"suggest_command","command":"/function tutorial:test_all"}}]

# macroEngine-dp kontrolü
execute unless score $epoch macro.time matches -2147483648.. run tellraw @a [{"text":"[Tutorial] ","color":"gold"},{"text":"⚠ UYARI: macroEngine-dp bulunamadı!","color":"red","bold":true}]
execute unless score $epoch macro.time matches -2147483648.. run tellraw @a [{"text":"[Tutorial] ","color":"gold"},{"text":"Önce macroEngine-dp'yi kurun: ","color":"yellow"},{"text":"https://github.com/tickwarden/macroEngine-dp","color":"aqua","underlined":true,"click_event":{"action":"open_url","url":"https://github.com/tickwarden/macroEngine-dp"}}]

# Tutorial storage'ı hazırla (test sonuçları için)
data modify storage tutorial:data test_results set value []
data modify storage tutorial:data version set value "1.0"

# Debug modu varsayılan olarak kapalı
scoreboard objectives add tutorial.debug dummy
scoreboard players set $enabled tutorial.debug 0

# Başarı mesajı
execute if score $epoch macro.time matches -2147483648.. run tellraw @a [{"text":"[Tutorial] ","color":"gold"},{"text":"✓ macroEngine-dp algılandı","color":"green"}]
execute if score $epoch macro.time matches -2147483648.. run tellraw @a [{"text":"[Tutorial] ","color":"gold"},{"text":"Hazır! Tutorial'ları dene:","color":"gray"}]
execute if score $epoch macro.time matches -2147483648.. run tellraw @a [{"text":"  • ","color":"dark_gray"},{"text":"Cooldown: ","color":"yellow"},{"text":"/function tutorial:cooldown/test","color":"aqua","click_event":{"action":"suggest_command","command":"/function tutorial:cooldown/test"}}]
execute if score $epoch macro.time matches -2147483648.. run tellraw @a [{"text":"  • ","color":"dark_gray"},{"text":"Event: ","color":"yellow"},{"text":"/function tutorial:event/test","color":"aqua","click_event":{"action":"suggest_command","command":"/function tutorial:event/test"}}]
execute if score $epoch macro.time matches -2147483648.. run tellraw @a [{"text":"  • ","color":"dark_gray"},{"text":"Math: ","color":"yellow"},{"text":"/function tutorial:math/test","color":"aqua","click_event":{"action":"suggest_command","command":"/function tutorial:math/test"}}]
