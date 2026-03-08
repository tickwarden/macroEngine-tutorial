# ═══════════════════════════════════════════════════════════════
# Event Handler: Welcome (Hoş Geldin Mesajı)
# ═══════════════════════════════════════════════════════════════
# Bu fonksiyon "on_join" event'i tetiklendiğinde çalışır
# ═══════════════════════════════════════════════════════════════

# Hoş geldin mesajı
tellraw @a [{"text":"    ","color":"dark_gray"},{"text":"[Handler 1] ","color":"aqua"},{"text":"Hoş geldiniz!","color":"green"}]

# ───────────────────────────────────────────────────────────────
# EVENT CONTEXT KULLANIMI (İLERİ SEVİYE)
# ───────────────────────────────────────────────────────────────
# Event tetiklenirken "context" verisi geçilebilir
# Örnek: Katılan oyuncunun ismi
#
# Context okuma:
# data get storage macro:engine event_context.player
# data get storage macro:engine event_context.reason
#
# GERÇEK KULLANIM:
# tellraw @a [{"text":"Hoş geldin, "},{"storage":"macro:engine","nbt":"event_context.player"}]
