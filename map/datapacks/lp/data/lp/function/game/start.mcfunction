clear @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38]
effect clear @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38]
execute as @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38] run function dr:enable

execute as @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38] at @s run playsound minecraft:entity.player.levelup ui @s ~ ~ ~ 1 1.2
title @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38] title ""
title @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38] subtitle ""

execute in lp:game run kill @e[x=0,type=!minecraft:text_display,type=!minecraft:item_display,type=!minecraft:interaction,type=!minecraft:player,type=!minecraft:armor_stand,type=!minecraft:mannequin]
scoreboard players set status lp.game 1
scoreboard players set @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38] lp.player_status 2
team join lp.none @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38,team=!main.spectator]
scoreboard players operation players lp.temp = require_preapre lp.statistics
scoreboard players set time lp.game 0
scoreboard players set drop_timer lp.game 0

# 启动初始化流程
scoreboard players set init lp.temp 1
scoreboard players set building lp.temp 0
scoreboard players set rows_done lp.temp 0
bossbar set lp:init players @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38]
bossbar set lp:init color blue
bossbar set lp:init max 4
bossbar set lp:init value 0
bossbar set lp:init name {"text":"初始化中…","color":"aqua","bold":true}
