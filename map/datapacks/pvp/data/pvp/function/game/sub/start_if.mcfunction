scoreboard players set count_temp1 pvp.status 0
execute as @a[x=0] run scoreboard players add count_temp1 pvp.status 1

scoreboard players set count_temp2 pvp.status 0
execute as @a[x=0] at @s if block ~ ~-1 ~ minecraft:lime_terracotta run scoreboard players add count_temp2 pvp.status 1

execute unless score count_temp1 pvp.status matches 0..1 if score count_temp1 pvp.status = count_temp2 pvp.status run function pvp:game/sub/sub/start