# 在场地随机位置掉落一份随机物品
execute unless score supply_n lp.temp matches 1.. run return 0

execute store result score r lp.temp run random value 0..1000000
scoreboard players operation r lp.temp *= mapsz lp.temp
execute store result storage lp:temp r double 0.000001 run scoreboard players get r lp.temp
execute store result storage lp:temp r2 int 1 run random value -180..180

summon minecraft:armor_stand 0 110 0 {Tags:["lp.supply_marker"],NoGravity:1b,Silent:1b,Marker:1b}
function lp:game/ongoing/event/supply_place with storage lp:temp
execute as @e[x=0,type=minecraft:armor_stand,tag=lp.supply_marker,limit=1] run function lp:game/ongoing/macro/give_random_item with storage lp:game
kill @e[x=0,type=minecraft:armor_stand,tag=lp.supply_marker]

scoreboard players remove supply_n lp.temp 1
function lp:game/ongoing/event/supply_spawn
