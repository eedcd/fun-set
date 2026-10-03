place template pvp:venue 100 0 100
effect clear @a[x=0]
effect give @a[x=0] minecraft:saturation 1 255
effect give @a[x=0] minecraft:instant_health 1 100 false

# 进入
tp @a[x=0,team=a] 102 1 112.0
tp @a[x=0,team=b] 135 1 112.0
execute as @a[x=0,team=] run function pvp:game/sub/sub/sub/rtp

execute as @a[x=0] at @s run playsound minecraft:entity.experience_orb.pickup ui @a[x=0] ~ ~ ~

scoreboard players set game pvp.timer 0
scoreboard players set is_start pvp.status 1
scoreboard players reset * pvp.kills

scoreboard objectives setdisplay sidebar pvp.disbd

gamerule pvp true