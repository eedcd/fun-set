# 天降补给：场地内随机位置掉落大量物品，并让全员浮空
effect give @a[x=0,gamemode=survival] minecraft:levitation 5 1 true
scoreboard players set supply_n lp.temp 15
function lp:game/ongoing/event/supply_spawn
