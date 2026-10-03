# 计算地图大小并清理场地
bossbar set lp:init value 3
bossbar set lp:init name ["",{"text":"初始化 ","color":"aqua","bold":true},{"text":"| ","color":"dark_gray"},{"text":"清理场地 ","color":"white"},{"text":"(3/4)","color":"gray"}]

# 获取地图大小
scoreboard players operation mapsz lp.temp = require_preapre lp.statistics
scoreboard players set b lp.temp 2
scoreboard players operation mapsz lp.temp *= b lp.temp
scoreboard players set b lp.temp 4
scoreboard players operation mapsz lp.temp += b lp.temp
execute store result storage lp:temp mapsz int 1 run scoreboard players get mapsz lp.temp

# 地图数据读取完毕玩家传送
execute in minecraft:overworld as @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38] run gamemode spectator @s
execute in minecraft:overworld as @a[x=-485,y=98,z=-18,dx=37,dy=37,dz=38] in lp:game run tp @s 0 65 0

# 启动场地清理
function lp:game/prepare/cleanup_begin
