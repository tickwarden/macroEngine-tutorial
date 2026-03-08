# ═══════════════════════════════════════════════════════════════
# Örnek 1: Success Handler
# ═══════════════════════════════════════════════════════════════
# Bu fonksiyon cooldown HAZIR olduğunda çalışır
# ═══════════════════════════════════════════════════════════════

# Kullanıcıya mesaj göster
tellraw @a [{"text":"  ✓ ","color":"green","bold":true},{"text":"Cooldown hazır! Düğme kullanıldı.","color":"green"}]

# ───────────────────────────────────────────────────────────────
# ADIM 3: Cooldown başlat
# ───────────────────────────────────────────────────────────────
# Düğmeyi kullandık, şimdi cooldown başlatıyoruz
# duration: Cooldown süresi (tick cinsinden)
# 20 tick = 1 saniye
# 100 tick = 5 saniye

data modify storage macro:input player set value "TestPlayer"
data modify storage macro:input key set value "button_press"
data modify storage macro:input duration set value 100

# Cooldown'u başlat
function macro:cooldown/set with storage macro:input {}

# Debug mesajı
tellraw @a [{"text":"  ","color":"dark_gray"},{"text":"→ Cooldown başladı: 100 tick (5 saniye)","color":"gray"}]

# ───────────────────────────────────────────────────────────────
# GERÇEK KULLANIM ÖRNEĞİ
# ───────────────────────────────────────────────────────────────
# Oyuncuya efekt ver, ses çal, particle göster vb.
# Örnek:
# execute as @a[name=TestPlayer] run effect give @s speed 5 1
# execute as @a[name=TestPlayer] at @s run playsound minecraft:block.note_block.pling player @s
