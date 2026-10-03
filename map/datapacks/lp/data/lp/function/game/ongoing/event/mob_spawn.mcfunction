execute unless score wave_n lp.temp matches 1.. run return 0

execute store result score r lp.temp run random value 0..1000000
scoreboard players operation r lp.temp *= mapsz lp.temp
execute store result storage lp:temp r double 0.000001 run scoreboard players get r lp.temp
execute store result storage lp:temp r2 int 1 run random value -180..180

execute store result score mt lp.temp run random value 0..2
summon minecraft:armor_stand 0 110 0 {Tags:["lp.mob_marker"],NoGravity:1b,Silent:1b,Marker:1b}
execute as @e[x=0,type=minecraft:armor_stand,tag=lp.mob_marker,limit=1] at @s run function lp:game/ongoing/event/mob_place with storage lp:temp
scoreboard players remove wave_n lp.temp 1
function lp:game/ongoing/event/mob_spawn
