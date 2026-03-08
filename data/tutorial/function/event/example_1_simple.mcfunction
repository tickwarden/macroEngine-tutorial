# ═══════════════════════════════════════════════════════════════
# Örnek 1: Basit Event Kaydı ve Tetikleme
# ═══════════════════════════════════════════════════════════════
# SENARYO: Oyuncu sunucuya katıldığında hoş geldin mesajı göster
# ═══════════════════════════════════════════════════════════════

tellraw @a [{"text":"  ","color":"dark_gray"},{"text":"═══ Event Kaydı ═══","color":"aqua","bold":true}]

# ───────────────────────────────────────────────────────────────
# ADIM 1: Event Handler Kaydet
# ───────────────────────────────────────────────────────────────
# Event sisteminde 2 şey gerekli:
# - event: Event'in ismi (örn: "on_join", "on_kill", "arena_start")
# - func: Çalıştırılacak fonksiyon (namespace:path/to/function)

data modify storage macro:input event set value "on_join"
data modify storage macro:input func set value "tutorial:event/handlers/welcome"

function macro:event/register with storage macro:input {}

tellraw @a [{"text":"  ✓ ","color":"green"},{"text":"Handler kaydedildi: ","color":"gray"},{"text":"tutorial:event/handlers/welcome","color":"aqua"}]
tellraw @a [{"text":"    ","color":"dark_gray"},{"text":"Event: ","color":"gray"},{"text":"on_join","color":"yellow"}]

# ───────────────────────────────────────────────────────────────
# ADIM 2: İkinci Handler Ekle (Aynı Event'e)
# ───────────────────────────────────────────────────────────────
# Bir event'e birden fazla handler ekleyebilirsiniz

data modify storage macro:input event set value "on_join"
data modify storage macro:input func set value "tutorial:event/handlers/daily_bonus"

function macro:event/register with storage macro:input {}

tellraw @a [{"text":"  ✓ ","color":"green"},{"text":"İkinci handler kaydedildi: ","color":"gray"},{"text":"tutorial:event/handlers/daily_bonus","color":"aqua"}]

# ───────────────────────────────────────────────────────────────
# ADIM 3: Event'i Tetikle
# ───────────────────────────────────────────────────────────────
# Event'i tetiklediğinizde tüm kayıtlı handler'lar sırayla çalışır

tellraw @a [{"text":"\n  ","color":"dark_gray"},{"text":"═══ Event Tetikleme ═══","color":"aqua","bold":true}]

data modify storage macro:input event set value "on_join"
function macro:event/fire with storage macro:input {}

tellraw @a [{"text":"  ↑ ","color":"yellow"},{"text":"Event tetiklendi: ","color":"gray"},{"text":"on_join","color":"yellow"}]
tellraw @a [{"text":"    ","color":"dark_gray"},{"text":"Tüm handler'lar çalıştı","color":"gray"}]

# ───────────────────────────────────────────────────────────────
# ÖZET
# ───────────────────────────────────────────────────────────────
# 1. Event handler'ı kaydet (register)
# 2. İstediğiniz kadar handler ekleyebilirsiniz
# 3. Event'i tetikle (fire)
# 4. Tüm handler'lar sırayla çalışır
#
# GERÇEK KULLANIM:
# - Oyuncu katılma trigger'ı ile on_join event'i tetiklenir
# - PvP kill advancement'ı ile on_kill event'i tetiklenir
# - Arena başlangıcı ile arena_start event'i tetiklenir
