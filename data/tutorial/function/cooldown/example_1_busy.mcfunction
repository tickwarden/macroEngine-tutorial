# ═══════════════════════════════════════════════════════════════
# Örnek 1: Busy Handler
# ═══════════════════════════════════════════════════════════════
# Bu fonksiyon cooldown MEŞGUL olduğunda çalışır
# ═══════════════════════════════════════════════════════════════

# ───────────────────────────────────────────────────────────────
# KALAN SÜREYİ HESAPLA
# ───────────────────────────────────────────────────────────────
# macro:cooldown/remaining fonksiyonu kalan tick'i verir

data modify storage macro:input player set value "TestPlayer"
data modify storage macro:input key set value "button_press"

function macro:cooldown/remaining with storage macro:input {}

# output.result → kalan tick sayısı (örn: 73)

# ───────────────────────────────────────────────────────────────
# KULLANICIYA MESAJ GÖSTER
# ───────────────────────────────────────────────────────────────

tellraw @a [{"text":"  ✗ ","color":"red","bold":true},{"text":"Cooldown aktif! ","color":"red"},{"text":"Kalan: ","color":"gray"},{"storage":"macro:output","nbt":"result","color":"yellow"},{"text":" tick","color":"gray"}]

# ───────────────────────────────────────────────────────────────
# PROGRESS BAR İLE GÖSTER (İLERİ SEVİYE)
# ───────────────────────────────────────────────────────────────
# Kalan süreyi görsel bir çubuk ile action bar'da göster

# Kalan tick'i current olarak ayarla
execute store result storage macro:input current int 1 run data get storage macro:output result

# Maksimum değer (toplam cooldown süresi)
data modify storage macro:input max set value 100

# Oyuncu ve label
data modify storage macro:input player set value "@a"
data modify storage macro:input label set value "Button Cooldown"

# Progress bar göster
function macro:string/progress_bar with storage macro:input {}

# ───────────────────────────────────────────────────────────────
# GERÇEK KULLANIM ÖRNEĞİ
# ───────────────────────────────────────────────────────────────
# Oyuncuya ses çal (cooldown aktif uyarısı)
# execute as @a[name=TestPlayer] at @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5
