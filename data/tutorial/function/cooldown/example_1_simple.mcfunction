# ═══════════════════════════════════════════════════════════════
# Örnek 1: Basit Cooldown
# ═══════════════════════════════════════════════════════════════
# SENARYO: Oyuncu bir düğmeye basıyor, 5 saniye beklemeli
# ═══════════════════════════════════════════════════════════════

# ───────────────────────────────────────────────────────────────
# ADIM 1: Cooldown kontrolü
# ───────────────────────────────────────────────────────────────
# macro:input storage'a gerekli verileri yazıyoruz:
# - player: Hangi oyuncu? (isim veya UUID)
# - key: Cooldown'un unique ID'si

data modify storage macro:input player set value "TestPlayer"
data modify storage macro:input key set value "button_press"

# Cooldown kontrol fonksiyonunu çağır
function macro:cooldown/check with storage macro:input {}

# ───────────────────────────────────────────────────────────────
# ADIM 2: Sonucu kontrol et
# ───────────────────────────────────────────────────────────────
# macro:output.result değeri:
# - 1b = Cooldown dolmuş, kullanılabilir
# - 0b = Cooldown aktif, henüz hazır değil

execute if data storage macro:output {result:1b} run function tutorial:cooldown/example_1_success
execute if data storage macro:output {result:0b} run function tutorial:cooldown/example_1_busy

# ───────────────────────────────────────────────────────────────
# ÖZET
# ───────────────────────────────────────────────────────────────
# 1. Input hazırla (player, key)
# 2. macro:cooldown/check çağır
# 3. Output kontrol et (result:1b veya 0b)
# 4. Başarı/Meşgul fonksiyonlarını çalıştır
