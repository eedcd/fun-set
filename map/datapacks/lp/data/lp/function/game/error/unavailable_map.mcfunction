execute in minecraft:overworld run title @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38] title {"text":"开始游戏时发生错误!","color":"dark_red","bold":true}
execute in minecraft:overworld run title @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38] subtitle {"text":"地图均不可用","color":"red","underlined":true}
execute in minecraft:overworld as @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38] at @s run playsound block.note_block.pling ui @s ~ ~ ~ 1 0.1
scoreboard players set init lp.temp 0
scoreboard players set building lp.temp 0
scoreboard players set status lp.game 0
execute in minecraft:overworld run scoreboard players set @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38] lp.player_status 0
bossbar set lp:init players
