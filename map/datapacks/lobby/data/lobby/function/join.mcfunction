clear @s

team join lobby

title @s actionbar ""
title @s title ""
title @s subtitle ""

execute in minecraft:overworld run tp @s -3 106 0 -90 0

gamemode adventure @s

effect clear @s
effect give @s minecraft:instant_health infinite 254 true
effect give @s minecraft:saturation infinite 255 true
effect give @s minecraft:resistance infinite 255 true
effect give @s minecraft:night_vision infinite 255 true

attribute @s minecraft:safe_fall_distance base set 2147483647
attribute @s minecraft:movement_speed base set 0.3
attribute @s minecraft:attack_damage base set 0
# attribute @s minecraft:jump_strength base set 0.9
attribute @s minecraft:jump_strength base reset