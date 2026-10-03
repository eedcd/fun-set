execute unless score building lp.temp matches 1 run return 0
execute as @e[x=0,type=minecraft:armor_stand,tag=lp.builder] at @s run function lp:game/prepare/build_tick_body