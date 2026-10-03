# 图腾
clear @s minecraft:totem_of_undying 1
tp @s 0 90 0
execute at @s run particle minecraft:totem_of_undying ~ ~ ~ 1 0.1 1 1 50
execute at @s run playsound minecraft:item.totem.use player @s ~ ~ ~ 1 1
effect clear @s
effect give @s minecraft:fire_resistance 40 0 true
effect give @s minecraft:regeneration 45 1 true
effect give @s minecraft:absorption 5 1 true
effect give @s minecraft:slow_falling 30 0 true
