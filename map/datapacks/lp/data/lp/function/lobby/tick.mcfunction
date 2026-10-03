execute as @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38] unless score @s lp.player_status matches -2147483648..2147483647 run scoreboard players set @s lp.player_status 0

# 清掉落物
kill @e[type=minecraft:item,x=-485,y=98,z=-18,dx=37,dy=37,dz=38]

# 准备物品替换
execute as @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38,team=!main.spectator] if score @s lp.player_status matches 0 run item replace entity @s container.0 with minecraft:emerald[item_name="准备",food={nutrition:0,saturation:0,can_always_eat:true},consumable={consume_seconds:1000000000}] 1
execute as @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38] if score @s lp.player_status matches 1 run item replace entity @s container.0 with minecraft:redstone[item_name="取消准备",custom_data={lp_ready:false},food={nutrition:0,saturation:0,can_always_eat:true},consumable={consume_seconds:1000000000}] 1

# NPC
execute as @e[type=minecraft:mannequin,x=-485,y=98,z=-18,dx=37,dy=37,dz=38] at @s anchored eyes run rotate @s facing entity @p eyes
execute as @e[type=minecraft:interaction,tag=lp.lobby,x=-485,y=98,z=-18,dx=37,dy=37,dz=38,limit=1] at @s on target run function lobby:join
execute as @e[type=minecraft:interaction,tag=lp.lobby,x=-485,y=98,z=-18,dx=37,dy=37,dz=38,limit=1] run data remove entity @s interaction

# 大厅效果
effect give @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38] minecraft:instant_health infinite 254 true
effect give @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38] minecraft:speed infinite 1 true
effect give @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38] minecraft:resistance infinite 255 true
effect give @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38] minecraft:night_vision infinite 255 true
effect give @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38] minecraft:saturation infinite 255 true

# 关 PVP
execute as @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38] run attribute @s minecraft:attack_damage base set 0

# 统计
scoreboard players set require_preapre lp.statistics 0
execute as @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38,team=lp.red] run scoreboard players add require_preapre lp.statistics 1
execute as @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38,team=lp.blue] run scoreboard players add require_preapre lp.statistics 1
execute as @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38,team=lp.green] run scoreboard players add require_preapre lp.statistics 1
execute as @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38,team=lp.yellow] run scoreboard players add require_preapre lp.statistics 1
execute as @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38,team=lp.none] run scoreboard players add require_preapre lp.statistics 1
scoreboard players set preapre lp.statistics 0
execute as @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38,team=lp.red,scores={lp.player_status=1}] run scoreboard players add preapre lp.statistics 1
execute as @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38,team=lp.blue,scores={lp.player_status=1}] run scoreboard players add preapre lp.statistics 1
execute as @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38,team=lp.green,scores={lp.player_status=1}] run scoreboard players add preapre lp.statistics 1
execute as @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38,team=lp.yellow,scores={lp.player_status=1}] run scoreboard players add preapre lp.statistics 1
execute as @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38,team=lp.none,scores={lp.player_status=1}] run scoreboard players add preapre lp.statistics 1

execute store result storage lp:bsb_temp max int 1 run scoreboard players get require_preapre lp.statistics
execute store result storage lp:bsb_temp ok int 1 run scoreboard players get preapre lp.statistics

function lp:lobby/macro/set_bossbar with storage lp:bsb_temp

# 队伍
item replace entity @a[team=lp.red,x=-485,y=98,z=-18,dx=37,dy=37,dz=38] container.8 with minecraft:red_dye[item_name={text:"你在",color:"yellow",extra:[{text:"红队",color:"red",bold:true},{text:",",color:"gray"},{text:"右键",color:"aqua"},{text:"退出",color:"red"}]},food={nutrition:0,saturation:0,can_always_eat:true},consumable={consume_seconds:100000000}]
item replace entity @a[team=lp.blue,x=-485,y=98,z=-18,dx=37,dy=37,dz=38] container.8 with minecraft:blue_dye[item_name={text:"你在",color:"yellow",extra:[{text:"蓝队",color:"blue",bold:true},{text:",",color:"gray"},{text:"右键",color:"aqua"},{text:"退出",color:"red"}]},food={nutrition:0,saturation:0,can_always_eat:true},consumable={consume_seconds:100000000}]
item replace entity @a[team=lp.green,x=-485,y=98,z=-18,dx=37,dy=37,dz=38] container.8 with minecraft:green_dye[item_name={text:"你在",color:"yellow",extra:[{text:"绿队",color:"green",bold:true},{text:",",color:"gray"},{text:"右键",color:"aqua"},{text:"退出",color:"red"}]},food={nutrition:0,saturation:0,can_always_eat:true},consumable={consume_seconds:100000000}]
item replace entity @a[team=lp.yellow,x=-485,y=98,z=-18,dx=37,dy=37,dz=38] container.8 with minecraft:yellow_dye[item_name={text:"你在",color:"yellow",extra:[{text:"黄队",color:"yellow",bold:true},{text:",",color:"gray"},{text:"右键",color:"aqua"},{text:"退出",color:"red"}]},food={nutrition:0,saturation:0,can_always_eat:true},consumable={consume_seconds:1000000000}]
item replace entity @a[team=main.spectator,x=-485,y=98,z=-18,dx=37,dy=37,dz=38] container.0 with minecraft:structure_void[item_name="你是全局旁观者，无需准备"]
item replace entity @a[team=lp.none,x=-485,y=98,z=-18,dx=37,dy=37,dz=38] container.8 with minecraft:barrier[item_name="你没加入队伍"]
item replace entity @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38] weapon.offhand with minecraft:air
item replace entity @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38] player.cursor with minecraft:air
execute as @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38,team=!main.spectator] at @s run function lp:lobby/team/check

# 开始游戏
execute if score status lp.game matches 0 unless score init lp.temp matches 1.. run execute unless score require_preapre lp.statistics matches 0..1 run execute if score require_preapre lp.statistics = preapre lp.statistics run function lp:game/start

execute if score require_preapre lp.statistics matches 0..1 run title @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38] actionbar {"text":"人数不足，需2≥","color":"dark_red"}
execute unless score require_preapre lp.statistics matches 0..1 run title @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38] actionbar {"text":"等待准备中...","color":"aqua"}

bossbar set lp:prepare players @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38,scores={lp.player_status=0..1}]

# 初始化进度条
execute if score init lp.temp matches 1..2 run bossbar set lp:init players @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38]

# 大厅内玩家掉出边界时回弹
execute as @a[x=-485,y=101,z=-18,dx=37,dy=13,dz=38,scores={lp.player_status=0..1},gamemode=adventure] at @s rotated 0 0 run function motion:apply_arguments {x:0,y:1000,z:0}
