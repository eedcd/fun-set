# 分散完成
execute as @a[x=0] run rotate @s facing entity @e[type=minecraft:armor_stand,tag=lp.spreader,limit=1]
kill @e[type=minecraft:armor_stand,tag=lp.spreader,limit=1]

# 填充柱子
execute as @a[x=0,team=!main.spectator] at @s run function lp:game/prepare/set_start_blocks

# 世界边界，中心 0 0
# worldborder 要的是直径，mapsz 是半径，取 2*mapsz 再加余量
scoreboard players operation b lp.temp = mapsz lp.temp
scoreboard players set c lp.temp 2
scoreboard players operation b lp.temp *= c lp.temp
scoreboard players set c lp.temp 20
scoreboard players operation b lp.temp += c lp.temp
execute store result storage lp:temp bdsz int 1 run scoreboard players get b lp.temp
function lp:game/prepare/macro/set_border with storage lp:temp

# 倒计时
scoreboard players set status lp.game 2
scoreboard players set cd lp.temp 60
title @a[x=0] title {"text":"3","color":"yellow","bold":true}
execute as @a[x=0] at @s run playsound minecraft:entity.experience_orb.pickup ui @s ~ ~ ~ 1 1 1
effect give @a[x=0] minecraft:resistance 4 255 true

scoreboard objectives remove lp.display
scoreboard objectives add lp.display dummy
scoreboard objectives setdisplay sidebar lp.display
scoreboard players display name 1 lp.display [{"text":"准备... ","color":"blue","bold":true}]
scoreboard objectives modify lp.display numberformat blank
scoreboard objectives modify lp.display displayname [{"text":"幸","color":"red"},{"text":"运","color":"green"},{"text":"之","color":"yellow"},{"text":"柱","color":"blue"}]
