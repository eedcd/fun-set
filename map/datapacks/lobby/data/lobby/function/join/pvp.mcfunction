playsound minecraft:entity.experience_orb.pickup ui @s ~ ~ ~ 1 1 1
execute in pvp:game run tp @s 0 1 2
execute in pvp:game run spawnpoint @s 0 1 2 180 0
attribute @s minecraft:movement_speed base reset
attribute @s minecraft:jump_strength base reset
attribute @s minecraft:safe_fall_distance base reset
attribute @s minecraft:attack_damage base set 0
effect clear @s