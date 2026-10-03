# 扫描物品与地图
bossbar set lp:init value 1
bossbar set lp:init name ["",{"text":"初始化 ","color":"aqua","bold":true},{"text":"| ","color":"dark_gray"},{"text":"扫描资源 ","color":"white"},{"text":"(1/4)","color":"gray"}]

function lp:game/prepare/scan_items

data modify storage lp:presummon_dict maps set value []
data modify storage lp:presummon_dict map_blocks set value []
scoreboard players set map_count lp.temp -1
data modify storage lp:temp mapx set value -462
function lp:game/prepare/scan_maps with storage lp:temp
data remove storage lp:presummon_dict map_blocks
execute store result storage lp:presummon_dict map_count int 1 run scoreboard players get map_count lp.temp

scoreboard players add init lp.temp 1
