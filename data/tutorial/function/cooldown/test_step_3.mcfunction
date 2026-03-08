# Cooldown test adım 3
tellraw @a [{"text":"[3/4] ","color":"gray"},{"text":"Cooldown tekrar kontrol (meşgul olmalı)","color":"yellow"}]
function tutorial:cooldown/example_1_simple

schedule function tutorial:cooldown/test_step_4 1s
