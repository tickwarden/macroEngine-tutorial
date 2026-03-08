# ═══════════════════════════════════════════════════════════════
# Test Özeti
# ═══════════════════════════════════════════════════════════════

tellraw @a [{"text":"\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"gold"}]
tellraw @a [{"text":"✓ TESTLER TAMAMLANDI","color":"green","bold":true}]
tellraw @a [{"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n","color":"gold"}]

tellraw @a [{"text":"Tamamlanan modüller:","color":"gray"}]
tellraw @a [{"text":"  ✓ ","color":"green"},{"text":"Cooldown Sistemi","color":"yellow"}]
tellraw @a [{"text":"  ✓ ","color":"green"},{"text":"Event Sistemi","color":"yellow"}]
tellraw @a [{"text":"  ✓ ","color":"green"},{"text":"Matematik Modülü","color":"yellow"}]

tellraw @a [{"text":"\nDiğer modüller:","color":"gray"}]
tellraw @a [{"text":"  • ","color":"dark_gray"},{"text":"Team: ","color":"yellow"},{"text":"/function tutorial:team/test","color":"aqua","click_event":{"action":"suggest_command","command":"/function tutorial:team/test"}}]
tellraw @a [{"text":"  • ","color":"dark_gray"},{"text":"Config: ","color":"yellow"},{"text":"/function tutorial:config/test","color":"aqua","click_event":{"action":"suggest_command","command":"/function tutorial:config/test"}}]
tellraw @a [{"text":"  • ","color":"dark_gray"},{"text":"Player: ","color":"yellow"},{"text":"/function tutorial:player/test","color":"aqua","click_event":{"action":"suggest_command","command":"/function tutorial:player/test"}}]

tellraw @a [{"text":"\n📚 Daha fazla bilgi: ","color":"gray"},{"text":"GitHub README","color":"aqua","underlined":true,"click_event":{"action":"open_url","url":"https://github.com/tickwarden/macroEngine-tutorial"}}]
tellraw @a [{"text":"","color":"white"}]
