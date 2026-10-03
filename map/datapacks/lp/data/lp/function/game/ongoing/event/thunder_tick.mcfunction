# 天打雷劈持续
scoreboard players remove thunder_tick lp.game 1
execute if score thunder_tick lp.game matches 1.. run return 0

scoreboard players set thunder_tick lp.game 10
scoreboard players remove thunder_n lp.game 1
function lp:game/ongoing/event/thunder_strike with storage lp:temp
