execute unless score arrow_n lp.temp matches 1.. run return 0

execute store result score r lp.temp run random value 0..1000000
scoreboard players operation r lp.temp *= mapsz lp.temp
execute store result storage lp:temp r double 0.000001 run scoreboard players get r lp.temp
execute store result storage lp:temp r2 int 1 run random value -180..180

$execute positioned 0 150 0 rotated $(r2) 0 run summon minecraft:arrow ^ ^ ^$(r) {pickup:0b,Motion:[0.0,-0.6,0.0]}
scoreboard players remove arrow_n lp.temp 1
function lp:game/ongoing/event/arrow_spawn with storage lp:temp
