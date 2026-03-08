# Event test adım 2
tellraw @a [{"text":"[2/3] ","color":"gray"},{"text":"Context Kullanımı","color":"yellow"}]

# Context ayarla
data modify storage macro:engine event_context.player set value "Steve"
data modify storage macro:engine event_context.reason set value "tutorial_test"

# Event tetikle
data modify storage macro:input event set value "on_join"
function macro:event/fire with storage macro:input {}

tellraw @a [{"text":"  ✓ ","color":"green"},{"text":"Context ile event tetiklendi","color":"green"}]

schedule function tutorial:event/test_step_3 1s
