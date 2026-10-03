# 剑雨持续
scoreboard players remove arrow_timer lp.game 1
scoreboard players set arrow_n lp.temp 3
function lp:game/ongoing/event/arrow_spawn with storage lp:temp
