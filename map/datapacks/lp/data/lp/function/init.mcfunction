scoreboard objectives add lp.temp dummy
scoreboard objectives add lp.player_status dummy
scoreboard objectives add lp.statistics dummy
scoreboard objectives add lp.game dummy
scoreboard objectives add lp.display dummy
scoreboard objectives add lp.kill playerKillCount

scoreboard players set 1200 lp.temp 1200
scoreboard players set 20 lp.temp 20
scoreboard players set 60 lp.temp 60
scoreboard players set 5 lp.temp 5

bossbar add lp:prepare {"text":"准备进度","color":"dark_green","bold":true}
bossbar set lp:prepare color green
bossbar add lp:init {"text":"初始化中…","color":"aqua","bold":true}
bossbar set lp:init color blue

team add lp.red {"text":"红队","color":"dark_red"}
team modify lp.red color red
team modify lp.red prefix [{"text":"幸柱 ","color":"gold"},{"text":"| ","color":"dark_gray"},{"text":" 红队 ","color":"dark_red"},{"text":"| ","color":"dark_gray"}]
team add lp.yellow {"text":"黄队","color":"gold"}
team modify lp.yellow color yellow
team modify lp.yellow prefix [{"text":"幸柱 ","color":"gold"},{"text":"| ","color":"dark_gray"},{"text":" 黄队 ","color":"gold"},{"text":"| ","color":"dark_gray"}]
team add lp.green {"text":"绿队","color":"dark_green"}
team modify lp.green color green
team modify lp.green prefix [{"text":"幸柱 ","color":"gold"},{"text":"| ","color":"dark_gray"},{"text":" 绿队 ","color":"dark_green"},{"text":"| ","color":"dark_gray"}]
team add lp.blue {"text":"蓝队","color":"dark_blue"}
team modify lp.blue color blue
team modify lp.blue prefix [{"text":"幸柱 ","color":"gold"},{"text":"| ","color":"dark_gray"},{"text":" 蓝 ","color":"dark_blue"},{"text":"| ","color":"dark_gray"}]
team add lp.none {"text":"无队伍","color":"dark_gray"}
team modify lp.none color gray
team modify lp.none prefix [{"text":"幸柱 ","color":"gold"},{"text":"| ","color":"dark_gray"},{"text":" 无 ","color":"dark_gray"},{"text":"| ","color":"dark_gray"}]
team modify lp.red friendlyFire false
team modify lp.yellow friendlyFire false
team modify lp.green friendlyFire false
team modify lp.blue friendlyFire false
team modify lp.none friendlyFire true

execute in minecraft:overworld run kill @e[type=minecraft:interaction,tag=lp.lobby]
execute in minecraft:overworld run kill @e[type=minecraft:mannequin,x=-466,y=116,z=11,dx=0,dy=0,dz=0]
execute in minecraft:overworld run summon minecraft:mannequin -466.0 116 11 {CustomName:"返回大厅",CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,hide_description:1b,profile:{id:[I;635875154,1520327815,-1707235644,-482284453],properties:[{name:"textures",value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzhjOTRhZDFiYmIxYzYxZTEwOTI5ZjhhODZlYTc2ZGI1NTRlYWNiMjg1NjJmM2RkOGVmMjI2OWVhZTZlYjVlOSJ9fX0="}]},hidden_layers:["cape"],immovable:1b}
execute in minecraft:overworld run summon minecraft:interaction -466.0 116 11 {width:0.61,height:1.81,response:true,Tags:["lp.lobby"]}

# 建造速度
scoreboard players set blocks_per_tick lp.temp 10000

# 场地清理每 tick 处理的节点数
scoreboard players set nodes_per_tick lp.temp 16

# 场地清理的额外边距
scoreboard players set clr_margin lp.temp 10

execute in lp:game run forceload add 0 0 0 0