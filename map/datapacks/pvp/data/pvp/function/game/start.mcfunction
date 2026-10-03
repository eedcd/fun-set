place template pvp:venue 100 0 100
effect clear @a[x=0]
effect give @a[x=0] minecraft:saturation 1 255
effect give @a[x=0] minecraft:instant_health 1 100 false

# 进入
tp @a[x=0,team=a] 102 1 112.0
tp @a[x=0,team=b] 135 1 112.0
execute as @a[x=0,team=] run function pvp:game/rtp

execute as @a[x=0] run attribute @s minecraft:attack_damage base set 1

execute as @a[x=0] at @s run playsound minecraft:entity.experience_orb.pickup ui @a[x=0] ~ ~ ~

scoreboard players set time pvp.game 0
scoreboard players set status pvp.game 1
scoreboard players reset * pvp.kill

scoreboard objectives setdisplay sidebar pvp.display

gamerule pvp true