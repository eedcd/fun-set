# 为单个玩家随机角度与半径，再交给宏函数传送
execute store result score r lp.temp run random value 0..1000000
scoreboard players operation r lp.temp *= mapsz lp.temp
execute store result storage lp:temp r double 0.000001 run scoreboard players get r lp.temp
execute store result storage lp:temp r2 int 1 run random value -180..180

effect give @s minecraft:levitation 5 1 true
function lp:game/ongoing/event/shuffle_apply with storage lp:temp
