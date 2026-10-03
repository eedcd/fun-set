playsound minecraft:entity.experience_orb.pickup ui @s ~ ~ ~ 1 1 1
attribute @s minecraft:movement_speed base reset
attribute @s minecraft:jump_strength base reset
attribute @s minecraft:safe_fall_distance base reset
attribute @s minecraft:attack_damage base set 0
effect clear @s

execute if entity @s[team=!main.spectator] run team join lp.none @s

execute if score status lp.game matches 1..3 run title @s title {"text":"游戏已在进行中","color":"red","bold":true}
execute if score status lp.game matches 1..3 run title @s subtitle {"text":"请等待结束","color":"gray"}
execute if score status lp.game matches 1..3 in lp:game run tp @s 0.5 90 0.5
execute if score status lp.game matches 1..3 run gamemode spectator @s

execute unless score status lp.game matches 1..3 in minecraft:overworld run tp @s -467 116 1 -90 0
execute unless score status lp.game matches 1..3 in lp:game run spawnpoint @s 0 100 0
execute unless score status lp.game matches 1..3 run gamemode adventure @s
