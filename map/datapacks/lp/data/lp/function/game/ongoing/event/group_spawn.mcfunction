# 通用：在场地随机位置召唤 group_n 只 group_mob
execute unless score group_n lp.temp matches 1.. run return 0

execute store result score r lp.temp run random value 0..1000000
scoreboard players operation r lp.temp *= mapsz lp.temp
execute store result storage lp:temp r double 0.000001 run scoreboard players get r lp.temp
execute store result storage lp:temp r2 int 1 run random value -180..180

summon minecraft:armor_stand 0 110 0 {Tags:["lp.event_marker"],NoGravity:1b,Silent:1b,Marker:1b}
function lp:game/ongoing/event/group_place with storage lp:temp

scoreboard players remove group_n lp.temp 1
function lp:game/ongoing/event/group_spawn
