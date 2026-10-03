# 召唤闪电
execute store result score r lp.temp run random value 0..1000000
scoreboard players operation r lp.temp *= mapsz lp.temp
execute store result storage lp:temp r double 0.000001 run scoreboard players get r lp.temp
execute store result storage lp:temp r2 int 1 run random value -180..180
$execute positioned 0 64 0 rotated $(r2) 0 run summon minecraft:lightning_bolt ^ ^ ^$(r)
