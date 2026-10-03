execute at @s run tp @s ~ ~ ~ ~5 ~
$execute at @s run fill ^ ^ ^ ^ ^ ^$(mapsz) minecraft:barrier
scoreboard players add ga lp.temp 5
execute unless score ga lp.temp matches 365 run execute at @s run function lp:game/prepare/build_circle with storage lp:temp
